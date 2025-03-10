/*-
 * See the file LICENSE for redistribution information.
 *
 * Copyright (c) 1997, 2011 Oracle and/or its affiliates.  All rights reserved.
 *
 * $Id$
 */

#ifndef _DB_CXX_H_
#define	_DB_CXX_H_
//
// C++ assumptions:
//
// To ensure portability to many platforms, both new and old, we make
// few assumptions about the C++ compiler and library.  For example,
// we do not expect STL, templates or namespaces to be available.  The
// "newest" C++ feature used is exceptions, which are used liberally
// to transmit error information.  Even the use of exceptions can be
// disabled at runtime, to do so, use the DB_CXX_NO_EXCEPTIONS flags
// with the DbEnv or Db constructor.
//
// C++ naming conventions:
//
//  - All top level class names start with Db.
//  - All class members start with lower case letter.
//  - All private data members are suffixed with underscore.
//  - Use underscores to divide names into multiple words.
//  - Simple data accessors are named with get_ or set_ prefix.
//  - All method names are taken from names of functions in the C
//    layer of db (usually by dropping a prefix like "db_").
//    These methods have the same argument types and order,
//    other than dropping the explicit arg that acts as "this".
//
// As a rule, each DbFoo object has exactly one underlying DB_FOO struct
// (defined in db.h) associated with it.  In some cases, we inherit directly
// from the DB_FOO structure to make this relationship explicit.  Often,
// the underlying C layer allocates and deallocates these structures, so
// there is no easy way to add any data to the DbFoo class.  When you see
// a comment about whether data is permitted to be added, this is what
// is going on.  Of course, if we need to add data to such C++ classes
// in the future, we will arrange to have an indirect pointer to the
// DB_FOO struct (as some of the classes already have).
//

////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
//
// Forward declarations
//

#include <stdarg.h>

#define	HAVE_CXX_STDHEADERS 1
#ifdef HAVE_CXX_STDHEADERS
#include <iostream>
#include <exception>
#define	__DB_STD(x)	std::x
#else
#include <iostream.h>
#include <exception.h>
#define	__DB_STD(x)	x
#endif

#include "db.h"

class Db;                                        // forward
class Dbc;                                       // forward
class DbChannel;                                 // forward
class DbEnv;                                     // forward
class DbHeapRecordId;                            // forward
class DbInfo;                                    // forward
class DbLock;                                    // forward
class DbLogc;                                    // forward
class DbLsn;                                     // forward
class DbMpoolFile;                               // forward
class DbPreplist;                                // forward
class DbSequence;                                // forward
class DbSite;                                    // forward
class Dbt;                                       // forward
class DbTxn;                                     // forward

class DbMultipleIterator;                        // forward
class DbMultipleKeyDataIterator;                 // forward
class DbMultipleRecnoDataIterator;               // forward
class DbMultipleDataIterator;                    // forward

class DbException;                               // forward
class DbDeadlockException;                       // forward
class DbLockNotGrantedException;                 // forward
class DbMemoryException;                         // forward
class DbRepHandleDeadException;                  // forward
class DbRunRecoveryException;                    // forward

////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
//
// Turn off inappropriate compiler warnings
//

#ifdef _MSC_VER

// These are level 4 warnings that are explicitly disabled.
// With Visual C++, by default you do not see above level 3 unless
// you use /W4.  But we like to compile with the highest level
// warnings to catch other errors.
//
// 4201: nameless struct/union
//       triggered by standard include file <winnt.h>
//
// 4514: unreferenced inline function has been removed
//       certain include files in MSVC define methods that are not called
//
#pragma warning(push)
#pragma warning(disable: 4201 4514)

#endif

////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
//
// Mechanisms for declaring classes
//

//
// Every class defined in this file has an _exported next to the class name.
// This is needed for WinTel machines so that the class methods can
// be exported or imported in a DLL as appropriate.  Users of the DLL
// use the define DB_USE_DLL.  When the DLL is built, DB_CREATE_DLL
// must be defined.
//
#if defined(_MSC_VER)

#  if defined(DB_CREATE_DLL)
#    define _exported __declspec(dllexport)      // creator of dll
#  elif defined(DB_USE_DLL)
#    define _exported __declspec(dllimport)      // user of dll
#  else
#    define _exported                            // static lib creator or user
#  endif

#else /* _MSC_VER */

#  define _exported

#endif /* _MSC_VER */

// Some interfaces can be customized by allowing users to define
// callback functions.  For performance and logistical reasons, some
// callback functions must be declared in extern "C" blocks.  For others,
// we allow you to declare the callbacks in C++ or C (or an extern "C"
// block) as you wish.  See the set methods for the callbacks for
// the choices.
//
extern "C" {
	typedef void * (*db_malloc_fcn_type)
		(size_t);
	typedef void * (*db_realloc_fcn_type)
		(void *, size_t);
	typedef void (*db_free_fcn_type)
		(void *);
	typedef int (*bt_compare_fcn_type)          /*C++ version available*/
		(DB *, const DBT *, const DBT *);
	typedef size_t (*bt_prefix_fcn_type)        /*C++ version available*/
		(DB *, const DBT *, const DBT *);
	typedef int (*dup_compare_fcn_type)         /*C++ version available*/
		(DB *, const DBT *, const DBT *);
	typedef int (*h_compare_fcn_type)          /*C++ version available*/
		(DB *, const DBT *, const DBT *);
	typedef u_int32_t (*h_hash_fcn_type)        /*C++ version available*/
		(DB *, const void *, u_int32_t);
	typedef int (*pgin_fcn_type)
		(DB_ENV *dbenv, db_pgno_t pgno, void *pgaddr, DBT *pgcookie);
	typedef int (*pgout_fcn_type)
		(DB_ENV *dbenv, db_pgno_t pgno, void *pgaddr, DBT *pgcookie);
}

//
// Represents a database table = a set of keys with associated values.
//
class _exported Db
{
	friend class DbEnv;

public:
	Db(DbEnv*, u_int32_t);      // Create a Db object.
	virtual ~Db();              // Calls close() if the user hasn't.

	// These methods exactly match those in the C interface.
	//
	virtual int associate(DbTxn *txn, Db *secondary, int (*callback)
	    (Db *, const Dbt *, const Dbt *, Dbt *), u_int32_t flags);
	virtual int associate_foreign(Db *foreign, int (*callback)
	    (Db *, const Dbt *, Dbt *, const Dbt *, int *), u_int32_t flags);
	virtual int close(u_int32_t flags);
	virtual int compact(DbTxn *txnid, Dbt *start,
	    Dbt *stop, DB_COMPACT *c_data, u_int32_t flags, Dbt *end);
	virtual int cursor(DbTxn *txnid, Dbc **cursorp, u_int32_t flags);
	virtual int del(DbTxn *txnid, Dbt *key, u_int32_t flags);
	virtual void err(int, const char *, ...);
	virtual void errx(const char *, ...);
	virtual int exists(DbTxn *txnid, Dbt *key, u_int32_t flags);
	virtual int fd(int *fdp);
	virtual int get(DbTxn *txnid, Dbt *key, Dbt *data, u_int32_t flags);
	virtual int get_alloc(
	    db_malloc_fcn_type *, db_realloc_fcn_type *, db_free_fcn_type *);
	virtual int get_append_recno(int (**)(Db *, Dbt *, db_recno_t));
	virtual int get_bt_compare(int (**)(Db *, const Dbt *, const Dbt *));
	virtual int get_bt_compress(
	    int (**)(
	    Db *, const Dbt *, const Dbt *, const Dbt *, const Dbt *, Dbt *),
	    int (**)(Db *, const Dbt *, const Dbt *, Dbt *, Dbt *, Dbt *));
	virtual int get_bt_minkey(u_int32_t *);
	virtual int get_bt_prefix(size_t (**)(Db *, const Dbt *, const Dbt *));
	virtual int get_byteswapped(int *);
	virtual int get_cachesize(u_int32_t *, u_int32_t *, int *);
	virtual int get_create_dir(const char **);
	virtual int get_dbname(const char **, const char **);
	virtual int get_dup_compare(int (**)(Db *, const Dbt *, const Dbt *));
	virtual int get_encrypt_flags(u_int32_t *);
	virtual void get_errcall(
	    void (**)(const DbEnv *, const char *, const char *));
	virtual void get_errfile(FILE **);
	virtual void get_errpfx(const char **);
	virtual int get_feedback(void (**)(Db *, int, int));
	virtual int get_flags(u_int32_t *);
	virtual int get_heapsize(u_int32_t *, u_int32_t *);
	virtual int get_h_compare(int (**)(Db *, const Dbt *, const Dbt *));
	virtual int get_h_ffactor(u_int32_t *);
	virtual int get_h_hash(u_int32_t (**)(Db *, const void *, u_int32_t));
	virtual int get_h_nelem(u_int32_t *);
	virtual int get_lorder(int *);
	virtual void get_msgcall(void (**)(const DbEnv *, const char *));
	virtual void get_msgfile(FILE **);
	virtual int get_multiple();
	virtual int get_open_flags(u_int32_t *);
	virtual int get_pagesize(u_int32_t *);
	virtual int get_partition_callback(
	    u_int32_t *, u_int32_t (**)(Db *, Dbt *key));
	virtual int get_partition_dirs(const char ***);
	virtual int get_partition_keys(u_int32_t *, Dbt **);
	virtual int get_priority(DB_CACHE_PRIORITY *);
	virtual int get_q_extentsize(u_int32_t *);
	virtual int get_re_delim(int *);
	virtual int get_re_len(u_int32_t *);
	virtual int get_re_pad(int *);
	virtual int get_re_source(const char **);
	virtual int get_transactional();
	virtual int get_type(DBTYPE *);
	virtual int join(Dbc **curslist, Dbc **dbcp, u_int32_t flags);
	virtual int key_range(DbTxn *, Dbt *, DB_KEY_RANGE *, u_int32_t);
	virtual int open(DbTxn *txnid,
	    const char *, const char *subname, DBTYPE, u_int32_t, int);
	virtual int pget(DbTxn *txnid,
	    Dbt *key, Dbt *pkey, Dbt *data, u_int32_t flags);
	virtual int put(DbTxn *, Dbt *, Dbt *, u_int32_t);
	virtual int remove(const char *, const char *, u_int32_t);
	virtual int rename(const char *, const char *, const char *, u_int32_t);
	virtual int set_alloc(
	    db_malloc_fcn_type, db_realloc_fcn_type, db_free_fcn_type);
	virtual void set_app_private(void *);
	virtual int set_append_recno(int (*)(Db *, Dbt *, db_recno_t));
	virtual int set_bt_compare(bt_compare_fcn_type); /*deprecated*/
	virtual int set_bt_compare(int (*)(Db *, const Dbt *, const Dbt *));
	virtual int set_bt_compress(
	    int (*)
	    (Db *, const Dbt *, const Dbt *, const Dbt *, const Dbt *, Dbt *),
	    int (*)(Db *, const Dbt *, const Dbt *, Dbt *, Dbt *, Dbt *));
	virtual int set_bt_minkey(u_int32_t);
	virtual int set_bt_prefix(bt_prefix_fcn_type); /*deprecated*/
	virtual int set_bt_prefix(size_t (*)(Db *, const Dbt *, const Dbt *));
	virtual int set_cachesize(u_int32_t, u_int32_t, int);
	virtual int set_create_dir(const char *);
	virtual int set_dup_compare(dup_compare_fcn_type); /*deprecated*/
	virtual int set_dup_compare(int (*)(Db *, const Dbt *, const Dbt *));
	virtual int set_encrypt(const char *, u_int32_t);
	virtual void set_errcall(
	    void (*)(const DbEnv *, const char *, const char *));
	virtual void set_errfile(FILE *);
	virtual void set_errpfx(const char *);
	virtual int set_feedback(void (*)(Db *, int, int));
	virtual int set_flags(u_int32_t);
	virtual int set_heapsize(u_int32_t, u_int32_t);
	virtual int set_h_compare(h_compare_fcn_type); /*deprecated*/
	virtual int set_h_compare(int (*)(Db *, const Dbt *, const Dbt *));
	virtual int set_h_ffactor(u_int32_t);
	virtual int set_h_hash(h_hash_fcn_type); /*deprecated*/
	virtual int set_h_hash(u_int32_t (*)(Db *, const void *, u_int32_t));
	virtual int set_h_nelem(u_int32_t);
	virtual int set_lorder(int);
	virtual void set_msgcall(void (*)(const DbEnv *, const char *));
	virtual void set_msgfile(FILE *);
	virtual int set_pagesize(u_int32_t);
	virtual int set_paniccall(void (*)(DbEnv *, int));
	virtual int set_partition(
	    u_int32_t, Dbt *, u_int32_t (*)(Db *, Dbt *));
	virtual int set_partition_dirs(const char **);
	virtual int set_priority(DB_CACHE_PRIORITY);
	virtual int set_q_extentsize(u_int32_t);
	virtual int set_re_delim(int);
	virtual int set_re_len(u_int32_t);
	virtual int set_re_pad(int);
	virtual int set_re_source(const char *);
	virtual int sort_multiple(Dbt *, Dbt *, u_int32_t);
	virtual int stat(DbTxn *, void *sp, u_int32_t flags);
	virtual int stat_print(u_int32_t flags);
	virtual int sync(u_int32_t flags);
	virtual int truncate(DbTxn *, u_int32_t *, u_int32_t);
	virtual int upgrade(const char *name, u_int32_t flags);
	virtual int verify(
	    const char *, const char *, __DB_STD(ostream) *, u_int32_t);

	// These additional methods are not in the C interface, and
	// are only available for C++.
	//
	virtual void *get_app_private() const;
	virtual __DB_STD(ostream) *get_error_stream();
	virtual void set_error_stream(__DB_STD(ostream) *);
	virtual __DB_STD(ostream) *get_message_stream();
	virtual void set_message_stream(__DB_STD(ostream) *);

	virtual DbEnv *get_env();
	virtual DbMpoolFile *get_mpf();

	virtual ENV *get_ENV()
	{
		return imp_->env;
	}

	virtual DB *get_DB()
	{
		return imp_;
	}

	virtual const DB *get_const_DB() const
	{
		return imp_;
	}

	static Db* get_Db(DB *db)
	{
		return (Db *)db->api_internal;
	}

	static const Db* get_const_Db(const DB *db)
	{
		return (const Db *)db->api_internal;
	}
	
	u_int32_t get_create_flags() const
	{
		return construct_flags_;
	}

private:
	// no copying
	Db(const Db &);
	Db &operator = (const Db &);

	void cleanup();
	int initialize();
	int error_policy();

	// instance data
	DB *imp_;
	DbEnv *dbenv_;
	DbMpoolFile *mpf_;
	int construct_error_;
	u_int32_t flags_;
	u_int32_t construct_flags_;

	static int alt_close(DB *, u_int32_t);

public:
	// These are public only because they need to be called
	// via C callback functions.  They should never be used by
	// external users of this class.
	//
	int (*append_recno_callback_)(Db *, Dbt *, db_recno_t);
	int (*associate_callback_)(Db *, const Dbt *, const Dbt *, Dbt *);
	int (*associate_foreign_callback_)
	    (Db *, const Dbt *, Dbt *, const Dbt *, int *);
	int (*bt_compare_callback_)(Db *, const Dbt *, const Dbt *);
	int (*bt_compress_callback_)(
	    Db *, const Dbt *, const Dbt *, const Dbt *, const Dbt *, Dbt *);
	int (*bt_decompress_callback_)(
	    Db *, const Dbt *, const Dbt *, Dbt *, Dbt *, Dbt *);
	size_t (*bt_prefix_callback_)(Db *, const Dbt *, const Dbt *);
	u_int32_t (*db_partition_callback_)(Db *, Dbt *);
	int (*dup_compare_callback_)(Db *, const Dbt *, const Dbt *);
	void (*feedback_callback_)(Db *, int, int);
	int (*h_compare_callback_)(Db *, const Dbt *, const Dbt *);
	u_int32_t (*h_hash_callback_)(Db *, const void *, u_int32_t);
};

//
// Cursor
//
class _exported Dbc : protected DBC
{
	friend class Db;

public:
	int close();
	int cmp(Dbc *other_csr, int *result, u_int32_t flags);
	int count(db_recno_t *countp, u_int32_t flags);
	int del(u_int32_t flags);
	int dup(Dbc** cursorp, u_int32_t flags);
	int get(Dbt* key, Dbt *data, u_int32_t flags);
	int get_priority(DB_CACHE_PRIORITY *priorityp);
	int pget(Dbt* key, Dbt* pkey, Dbt *data, u_int32_t flags);
	int put(Dbt* key, Dbt *data, u_int32_t flags);
	int set_priority(DB_CACHE_PRIORITY priority);

private:
	// No data is permitted in this class (see comment at top)

	// Note: use Db::cursor() to get pointers to a Dbc,
	// and call Dbc::close() rather than delete to release them.
	//
	Dbc();
	~Dbc();

	// no copying
	Dbc(const Dbc &);
	Dbc &operator = (const Dbc &);
};

//
// A channel in replication group
//
class _exported DbChannel
{
	friend class DbEnv;

public:
	int close();
	int send_msg(Dbt *msg, u_int32_t nmsg, u_int32_t flags);
	int send_request(Dbt *request, u_int32_t nrequest, Dbt *response,
	    db_timeout_t timeout, u_int32_t flags); 
	int set_timeout(db_timeout_t timeout);

	virtual DB_CHANNEL *get_DB_CHANNEL()
	{
		return imp_;
	}

	virtual const DB_CHANNEL *get_const_DB_CHANNEL() const
	{
		return imp_;
	}

private:
	DbChannel();
	virtual ~DbChannel();

	// no copying
	DbChannel(const DbChannel &);
	DbChannel &operator = (const DbChannel &);
	DB_CHANNEL *imp_;
	DbEnv *dbenv_;
};

//
// Berkeley DB environment class.  Provides functions for opening databases.
// User of this library can use this class as a starting point for
// developing a DB application - derive their application class from
// this one, add application control logic.
//
// Note that if you use the default constructor, you must explicitly
// call appinit() before any other db activity (e.g. opening files)
//
class _exported DbEnv
{
	friend class Db;
	friend class DbLock;
	friend class DbMpoolFile;

public:
	// After using this constructor, you can set any needed
	// parameters for the environment using the set_* methods.
	// Then call open() to finish initializing the environment
	// and attaching it to underlying files.
	//
	DbEnv(u_int32_t flags);

	virtual ~DbEnv();

	// These methods match those in the C interface.
	//
	virtual int add_data_dir(const char *);
	virtual int cdsgroup_begin(DbTxn **tid);
	virtual int close(u_int32_t);
	virtual int dbremove(DbTxn *txn, const char *name, const char *subdb,
	    u_int32_t flags);
	virtual int dbrename(DbTxn *txn, const char *name, const char *subdb,
	    const char *newname, u_int32_t flags);
	virtual void err(int, const char *, ...);
	virtual void errx(const char *, ...);
	virtual int failchk(u_int32_t);
	virtual int fileid_reset(const char *, u_int32_t);
	virtual int get_alloc(db_malloc_fcn_type *, db_realloc_fcn_type *,
	    db_free_fcn_type *);
	virtual void *get_app_private() const;
	virtual int get_home(const char **);
	virtual int get_open_flags(u_int32_t *);
	virtual int open(const char *, u_int32_t, int);
	virtual int remove(const char *, u_int32_t);
	virtual int stat_print(u_int32_t flags);

	virtual int set_alloc(db_malloc_fcn_type, db_realloc_fcn_type,
	    db_free_fcn_type);
	virtual void set_app_private(void *);
	virtual int get_cachesize(u_int32_t *, u_int32_t *, int *);
	virtual int set_cachesize(u_int32_t, u_int32_t, int);
	virtual int get_cache_max(u_int32_t *, u_int32_t *);
	virtual int set_cache_max(u_int32_t, u_int32_t);
	virtual int get_create_dir(const char **);
	virtual int set_create_dir(const char *);
	virtual int get_data_dirs(const char ***);
	virtual int set_data_dir(const char *);
	virtual int get_encrypt_flags(u_int32_t *);
	virtual int get_intermediate_dir_mode(const char **);
	virtual int set_intermediate_dir_mode(const char *);
	virtual int get_isalive(
	    int (**)(DbEnv *, pid_t, db_threadid_t, u_int32_t));
	virtual int set_isalive(
	    int (*)(DbEnv *, pid_t, db_threadid_t, u_int32_t));
	virtual int set_encrypt(const char *, u_int32_t);
	virtual void get_errcall(
	    void (**)(const DbEnv *, const char *, const char *));
	virtual void set_errcall(
	    void (*)(const DbEnv *, const char *, const char *));
	virtual void get_errfile(FILE **);
	virtual void set_errfile(FILE *);
	virtual void get_errpfx(const char **);
	virtual void set_errpfx(const char *);
	virtual int set_event_notify(void (*)(DbEnv *, u_int32_t, void *));
	virtual int get_flags(u_int32_t *);
	virtual int set_flags(u_int32_t, int);
	virtual bool is_bigendian();
	virtual int lsn_reset(const char *, u_int32_t);
	virtual int get_feedback(void (**)(DbEnv *, int, int));
	virtual int set_feedback(void (*)(DbEnv *, int, int));
	virtual int get_lg_bsize(u_int32_t *);
	virtual int set_lg_bsize(u_int32_t);
	virtual int get_lg_dir(const char **);
	virtual int set_lg_dir(const char *);
	virtual int get_lg_filemode(int *);
	virtual int set_lg_filemode(int);
	virtual int get_lg_max(u_int32_t *);
	virtual int set_lg_max(u_int32_t);
	virtual int get_lg_regionmax(u_int32_t *);
	virtual int set_lg_regionmax(u_int32_t);
	virtual int get_lk_conflicts(const u_int8_t **, int *);
	virtual int set_lk_conflicts(u_int8_t *, int);
	virtual int get_lk_detect(u_int32_t *);
	virtual int set_lk_detect(u_int32_t);
	virtual int get_lk_max_lockers(u_int32_t *);
	virtual int set_lk_max_lockers(u_int32_t);
	virtual int get_lk_max_locks(u_int32_t *);
	virtual int set_lk_max_locks(u_int32_t);
	virtual int get_lk_max_objects(u_int32_t *);
	virtual int set_lk_max_objects(u_int32_t);
	virtual int get_lk_partitions(u_int32_t *);
	virtual int set_lk_partitions(u_int32_t);
	virtual int get_lk_priority(u_int32_t, u_int32_t *);
	virtual int set_lk_priority(u_int32_t, u_int32_t);
	virtual int get_lk_tablesize(u_int32_t *);
	virtual int set_lk_tablesize(u_int32_t);
	virtual int get_memory_init(DB_MEM_CONFIG, u_int32_t *);
	virtual int set_memory_init(DB_MEM_CONFIG, u_int32_t);
	virtual int get_memory_max(u_int32_t *, u_int32_t *);
	virtual int set_memory_max(u_int32_t, u_int32_t);
	virtual int get_mp_mmapsize(size_t *);
	virtual int set_mp_mmapsize(size_t);
	virtual int get_mp_max_openfd(int *);
	virtual int set_mp_max_openfd(int);
	virtual int get_mp_max_write(int *, db_timeout_t *);
	virtual int set_mp_max_write(int, db_timeout_t);
	virtual int get_mp_pagesize(u_int32_t *);
	virtual int set_mp_pagesize(u_int32_t);
	virtual int get_mp_tablesize(u_int32_t *);
	virtual int set_mp_tablesize(u_int32_t);
	virtual void get_msgcall(void (**)(const DbEnv *, const char *));
	virtual void set_msgcall(void (*)(const DbEnv *, const char *));
	virtual void get_msgfile(FILE **);
	virtual void set_msgfile(FILE *);
	virtual int set_paniccall(void (*)(DbEnv *, int));
	virtual int get_shm_key(long *);
	virtual int set_shm_key(long);
	virtual int get_timeout(db_timeout_t *, u_int32_t);
	virtual int set_timeout(db_timeout_t, u_int32_t);
	virtual int get_tmp_dir(const char **);
	virtual int set_tmp_dir(const char *);
	virtual int get_tx_max(u_int32_t *);
	virtual int set_tx_max(u_int32_t);
	virtual int get_app_dispatch(
	    int (**)(DbEnv *, Dbt *, DbLsn *, db_recops));
	virtual int set_app_dispatch(int (*)(DbEnv *,
	    Dbt *, DbLsn *, db_recops));
	virtual int get_tx_timestamp(time_t *);
	virtual int set_tx_timestamp(time_t *);
	virtual int get_verbose(u_int32_t which, int *);
	virtual int set_verbose(u_int32_t which, int);

	// Version information.  Static methods, can be called at any time.
	//
	static char *version(int *major, int *minor, int *patch);
	static char *full_version(int *family, int *release,
	    int *major, int *minor, int *patch);

	// Convert DB errors to strings
	static char *strerror(int);

	// If an error is detected and the error call function
	// or stream is set, a message is dispatched or printed.
	// If a prefix is set, each message is prefixed.
	//
	// You can use set_errcall() or set_errfile() above to control
	// error functionality.  Alternatively, you can call
	// set_error_stream() to force all errors to a C++ stream.
	// It is unwise to mix these approaches.
	//
	virtual __DB_STD(ostream) *get_error_stream();
	virtual void set_error_stream(__DB_STD(ostream) *);
	virtual __DB_STD(ostream) *get_message_stream();
	virtual void set_message_stream(__DB_STD(ostream) *);

	// used internally
	static void runtime_error(DbEnv *dbenv, const char *caller, int err,
				  int error_policy);
	static void runtime_error_dbt(DbEnv *dbenv, const char *caller, Dbt *dbt,
				  int error_policy);
	static void runtime_error_lock_get(DbEnv *dbenv, const char *caller,
				  int err, db_lockop_t op, db_lockmode_t mode,
				  Dbt *obj, DbLock lock, int index,
				  int error_policy);

	// Lock functions
	//
	virtual int lock_detect(u_int32_t flags, u_int32_t atype, int *aborted);
	virtual int lock_get(u_int32_t locker, u_int32_t flags, Dbt *obj,
		     db_lockmode_t lock_mode, DbLock *lock);
	virtual int lock_id(u_int32_t *idp);
	virtual int lock_id_free(u_int32_t id);
	virtual int lock_put(DbLock *lock);
	virtual int lock_stat(DB_LOCK_STAT **statp, u_int32_t flags);
	virtual int lock_stat_print(u_int32_t flags);
	virtual int lock_vec(u_int32_t locker, u_int32_t flags,
		     DB_LOCKREQ list[], int nlist, DB_LOCKREQ **elistp);

	// Log functions
	//
	virtual int log_archive(char **list[], u_int32_t flags);
	static int log_compare(const DbLsn *lsn0, const DbLsn *lsn1);
	virtual int log_cursor(DbLogc **cursorp, u_int32_t flags);
	virtual int log_file(DbLsn *lsn, char *namep, size_t len);
	virtual int log_flush(const DbLsn *lsn);
	virtual int log_get_config(u_int32_t, int *);
	virtual int log_put(DbLsn *lsn, const Dbt *data, u_int32_t flags);
	virtual int log_printf(DbTxn *, const char *, ...);
	virtual int log_set_config(u_int32_t, int);
	virtual int log_stat(DB_LOG_STAT **spp, u_int32_t flags);
	virtual int log_stat_print(u_int32_t flags);
	virtual int log_verify(DB_LOG_VERIFY_CONFIG *);

	// Mpool functions
	//
	virtual int memp_fcreate(DbMpoolFile **dbmfp, u_int32_t flags);
	virtual int memp_register(int ftype,
			  pgin_fcn_type pgin_fcn,
			  pgout_fcn_type pgout_fcn);
	virtual int memp_stat(DB_MPOOL_STAT
		      **gsp, DB_MPOOL_FSTAT ***fsp, u_int32_t flags);
	virtual int memp_stat_print(u_int32_t flags);
	virtual int memp_sync(DbLsn *lsn);
	virtual int memp_trickle(int pct, int *nwrotep);

	// Mpool functions
	//
	virtual int mutex_alloc(u_int32_t, db_mutex_t *);
	virtual int mutex_free(db_mutex_t);
	virtual int mutex_get_align(u_int32_t *);
	virtual int mutex_get_increment(u_int32_t *);
	virtual int mutex_get_init(u_int32_t *);
	virtual int mutex_get_max(u_int32_t *);
	virtual int mutex_get_tas_spins(u_int32_t *);
	virtual int mutex_lock(db_mutex_t);
	virtual int mutex_set_align(u_int32_t);
	virtual int mutex_set_increment(u_int32_t);
	virtual int mutex_set_init(u_int32_t);
	virtual int mutex_set_max(u_int32_t);
	virtual int mutex_set_tas_spins(u_int32_t);
	virtual int mutex_stat(DB_MUTEX_STAT **, u_int32_t);
	virtual int mutex_stat_print(u_int32_t);
	virtual int mutex_unlock(db_mutex_t);

	// Transaction functions
	//
	virtual int txn_begin(DbTxn *pid, DbTxn **tid, u_int32_t flags);
	virtual int txn_checkpoint(u_int32_t kbyte, u_int32_t min,
			u_int32_t flags);
	virtual int txn_recover(DbPreplist *preplist, long count,
			long *retp, u_int32_t flags);
	virtual int txn_stat(DB_TXN_STAT **statp, u_int32_t flags);
	virtual int txn_stat_print(u_int32_t flags);

	// Replication functions
	//
	virtual int rep_elect(u_int32_t, u_int32_t, u_int32_t);
	virtual int rep_flush();
	virtual int rep_process_message(Dbt *, Dbt *, int, DbLsn *);
	virtual int rep_start(Dbt *, u_int32_t);
	virtual int rep_stat(DB_REP_STAT **statp, u_int32_t flags);
	virtual int rep_stat_print(u_int32_t flags);
	virtual int rep_get_clockskew(u_int32_t *, u_int32_t *);
	virtual int rep_set_clockskew(u_int32_t, u_int32_t);
	virtual int rep_get_limit(u_int32_t *, u_int32_t *);
	virtual int rep_set_limit(u_int32_t, u_int32_t);
	virtual int rep_set_transport(int, int (*)(DbEnv *,
	    const Dbt *, const Dbt *, const DbLsn *, int, u_int32_t));
	virtual int rep_set_request(u_int32_t, u_int32_t);
	virtual int rep_get_request(u_int32_t *, u_int32_t *);
	virtual int get_thread_count(u_int32_t *);
	virtual int set_thread_count(u_int32_t);
	virtual int get_thread_id_fn(
	    void (**)(DbEnv *, pid_t *, db_threadid_t *));
	virtual int set_thread_id(void (*)(DbEnv *, pid_t *, db_threadid_t *));
	virtual int get_thread_id_string_fn(
	    char *(**)(DbEnv *, pid_t, db_threadid_t, char *));
	virtual int set_thread_id_string(char *(*)(DbEnv *,
	    pid_t, db_threadid_t, char *));
	virtual int rep_set_config(u_int32_t, int);
	virtual int rep_get_config(u_int32_t, int *);
	virtual int rep_sync(u_int32_t flags);

	// Advanced replication functions
	//
	virtual int rep_get_nsites(u_int32_t *n);
	virtual int rep_set_nsites(u_int32_t n);
	virtual int rep_get_priority(u_int32_t *priorityp);
	virtual int rep_set_priority(u_int32_t priority);
	virtual int rep_get_timeout(int which, db_timeout_t *timeout);
	virtual int rep_set_timeout(int which, db_timeout_t timeout);
	virtual int repmgr_channel(int eid, DbChannel **channel,
	    u_int32_t flags);
	virtual int repmgr_get_ack_policy(int *policy);
	virtual int repmgr_set_ack_policy(int policy);
	virtual int repmgr_local_site(DbSite **site);
	virtual int repmgr_msg_dispatch(void (*) (DbEnv *,
	    DbChannel *, Dbt *, u_int32_t, u_int32_t), u_int32_t flags);
	virtual int repmgr_site(const char *host, u_int port, DbSite **site,
	    u_int32_t flags);
	virtual int repmgr_site_by_eid(int eid, DbSite **site);
	virtual int repmgr_site_list(u_int *countp, DB_REPMGR_SITE **listp);
	virtual int repmgr_start(int nthreads, u_int32_t flags);
	virtual int repmgr_stat(DB_REPMGR_STAT **statp, u_int32_t flags);
	virtual int repmgr_stat_print(u_int32_t flags);

	// Conversion functions
	//
	virtual ENV *get_ENV()
	{
		return imp_->env;
	}

	virtual DB_ENV *get_DB_ENV()
	{
		return imp_;
	}

	virtual const DB_ENV *get_const_DB_ENV() const
	{
		return imp_;
	}

	static DbEnv* get_DbEnv(DB_ENV *dbenv)
	{
		return dbenv ? (DbEnv *)dbenv->api1_internal : 0;
	}

	static const DbEnv* get_const_DbEnv(const DB_ENV *dbenv)
	{
		return dbenv ? (const DbEnv *)dbenv->api1_internal : 0;
	}

	u_int32_t get_create_flags() const
	{
		return construct_flags_;
	}

	// For internal use only.
	static DbEnv* wrap_DB_ENV(DB_ENV *dbenv);

	// These are public only because they need to be called
	// via C functions.  They should never be called by users
	// of this class.
	//
	static int _app_dispatch_intercept(DB_ENV *dbenv, DBT *dbt, DB_LSN *lsn,
				       db_recops op);
	static void _paniccall_intercept(DB_ENV *dbenv, int errval);
	static void _feedback_intercept(DB_ENV *dbenv, int opcode, int pct);
	static void  _event_func_intercept(DB_ENV *dbenv, u_int32_t, void *);
	static int _isalive_intercept(DB_ENV *dbenv, pid_t pid,
	    db_threadid_t thrid, u_int32_t flags);
	static int _rep_send_intercept(DB_ENV *dbenv, const DBT *cntrl,
	    const DBT *data, const DB_LSN *lsn, int id, u_int32_t flags);
	static void _stream_error_function(const DB_ENV *dbenv,
	    const char *prefix, const char *message);
	static void _stream_message_function(const DB_ENV *dbenv,
	    const char *message);
	static void _thread_id_intercept(DB_ENV *dbenv, pid_t *pidp,
	    db_threadid_t *thridp);
	static char *_thread_id_string_intercept(DB_ENV *dbenv, pid_t pid,
	    db_threadid_t thrid, char *buf);
	static void _message_dispatch_intercept(DB_ENV *dbenv,
	    DB_CHANNEL *dbchannel, DBT *request, u_int32_t nrequest,
	    u_int32_t cb_flags);

private:
	void cleanup();
	int initialize(DB_ENV *dbenv);
	int error_policy();

	// For internal use only.
	DbEnv(DB_ENV *, u_int32_t flags);

	// no copying
	DbEnv(const DbEnv &);
	void operator = (const DbEnv &);

	// instance data
	DB_ENV *imp_;
	int construct_error_;
	u_int32_t construct_flags_;
	__DB_STD(ostream) *error_stream_;
	__DB_STD(ostream) *message_stream_;

	int (*app_dispatch_callback_)(DbEnv *, Dbt *, DbLsn *, db_recops);
	int (*isalive_callback_)(DbEnv *, pid_t, db_threadid_t, u_int32_t);
	void (*error_callback_)(const DbEnv *, const char *, const char *);
	void (*feedback_callback_)(DbEnv *, int, int);
	void (*message_callback_)(const DbEnv *, const char *);
	void (*paniccall_callback_)(DbEnv *, int);
	void (*event_func_callback_)(DbEnv *, u_int32_t, void *);
	int (*rep_send_callback_)(DbEnv *, const Dbt *, const Dbt *,
	    const DbLsn *, int, u_int32_t);
	void (*thread_id_callback_)(DbEnv *, pid_t *, db_threadid_t *);
	char *(*thread_id_string_callback_)(DbEnv *, pid_t, db_threadid_t,
	    char *);
	void (*message_dispatch_callback_)(DbEnv *, DbChannel *, Dbt *,
	    u_int32_t, u_int32_t);
};

//
// Heap record id
//
class _exported DbHeapRecordId : private DB_HEAP_RID
{
public:
	db_pgno_t get_pgno() const		{ return pgno; }
	void set_pgno(db_pgno_t value)		{ pgno = value; }

	db_indx_t get_indx() const		{ return indx; }
	void set_indx(db_indx_t value)		{ indx = value; }

	DB_HEAP_RID *get_DB_HEAP_RID()		{ return (DB_HEAP_RID *)this; }
	const DB_HEAP_RID *get_const_DB_HEAP_RID() const 
					{ return (const DB_HEAP_RID *)this; }

	static DbHeapRecordId* get_DbHeapRecordId(DB_HEAP_RID *rid) 
					{ return (DbHeapRecordId *)rid; }
	static const DbHeapRecordId* get_const_DbHeapRecordId(DB_HEAP_RID *rid)
					{ return (const DbHeapRecordId *)rid; }

	DbHeapRecordId(db_pgno_t pgno, db_indx_t indx);
	DbHeapRecordId();
	~DbHeapRecordId();
	DbHeapRecordId(const DbHeapRecordId &);
	DbHeapRecordId &operator = (const DbHeapRecordId &);
};

//
// Lock
//
class _exported DbLock
{
	friend class DbEnv;

public:
	DbLock();
	DbLock(const DbLock &);
	DbLock &operator = (const DbLock &);

protected:
	// We can add data to this class if needed
	// since its contained class is not allocated by db.
	// (see comment at top)

	DbLock(DB_LOCK);
	DB_LOCK lock_;
};

//
// Log cursor
//
class _exported DbLogc : protected DB_LOGC
{
	friend class DbEnv;

public:
	int close(u_int32_t _flags);
	int get(DbLsn *lsn, Dbt *data, u_int32_t _flags);
	int version(u_int32_t *versionp, u_int32_t _flags);

private:
	// No data is permitted in this class (see comment at top)

	// Note: use Db::cursor() to get pointers to a Dbc,
	// and call Dbc::close() rather than delete to release them.
	//
	DbLogc();
	~DbLogc();

	// no copying
	DbLogc(const Dbc &);
	DbLogc &operator = (const Dbc &);
};

//
// Log sequence number
//
class _exported DbLsn : public DB_LSN
{
	friend class DbEnv;          // friendship needed to cast to base class
	friend class DbLogc;         // friendship needed to cast to base class
};

//
// Memory pool file
//
class _exported DbMpoolFile
{
	friend class DbEnv;
	friend class Db;

public:
	int close(u_int32_t flags);
	int get(db_pgno_t *pgnoaddr, DbTxn *txn, u_int32_t flags, void *pagep);
	int get_clear_len(u_int32_t *len);
	int get_fileid(u_int8_t *fileid);
	int get_flags(u_int32_t *flagsp);
	int get_ftype(int *ftype);
	int get_last_pgno(db_pgno_t *pgnop);
	int get_lsn_offset(int32_t *offsetp);
	int get_maxsize(u_int32_t *gbytes, u_int32_t *bytes);
	int get_pgcookie(DBT *dbt);
	int get_priority(DB_CACHE_PRIORITY *priorityp);
	int get_transactional(void);
	int open(const char *file, u_int32_t flags, int mode, size_t pagesize);
	int put(void *pgaddr, DB_CACHE_PRIORITY priority, u_int32_t flags);
	int set_clear_len(u_int32_t len);
	int set_fileid(u_int8_t *fileid);
	int set_flags(u_int32_t flags, int onoff);
	int set_ftype(int ftype);
	int set_lsn_offset(int32_t offset);
	int set_maxsize(u_int32_t gbytes, u_int32_t bytes);
	int set_pgcookie(DBT *dbt);
	int set_priority(DB_CACHE_PRIORITY priority);
	int sync();

	virtual DB_MPOOLFILE *get_DB_MPOOLFILE()
	{
		return imp_;
	}

	virtual const DB_MPOOLFILE *get_const_DB_MPOOLFILE() const
	{
		return imp_;
	}

private:
	DB_MPOOLFILE *imp_;

	// We can add data to this class if needed
	// since it is implemented via a pointer.
	// (see comment at top)

	// Note: use DbEnv::memp_fcreate() to get pointers to a DbMpoolFile,
	// and call DbMpoolFile::close() rather than delete to release them.
	//
	DbMpoolFile();

	// Shut g++ up.
protected:
	virtual ~DbMpoolFile();

private:
	// no copying
	DbMpoolFile(const DbMpoolFile &);
	void operator = (const DbMpoolFile &);
};

//
// This is filled in and returned by the DbEnv::txn_recover() method.
//
class _exported DbPreplist
{
public:
	DbTxn *txn;
	u_int8_t gid[DB_GID_SIZE];
};

//
// A sequence record in a database
//
class _exported DbSequence
{
public:
	DbSequence(Db *db, u_int32_t flags);
	virtual ~DbSequence();

	int open(DbTxn *txnid, Dbt *key, u_int32_t flags);
	int initial_value(db_seq_t value);
	int close(u_int32_t flags);
	int remove(DbTxn *txnid, u_int32_t flags);
	int stat(DB_SEQUENCE_STAT **sp, u_int32_t flags);
	int stat_print(u_int32_t flags);

	int get(DbTxn *txnid, int32_t delta, db_seq_t *retp, u_int32_t flags);
	int get_cachesize(int32_t *sizep);
	int set_cachesize(int32_t size);
	int get_flags(u_int32_t *flagsp);
	int set_flags(u_int32_t flags);
	int get_range(db_seq_t *minp, db_seq_t *maxp);
	int set_range(db_seq_t min, db_seq_t max);

	Db *get_db();
	Dbt *get_key();

	virtual DB_SEQUENCE *get_DB_SEQUENCE()
	{
		return imp_;
	}

	virtual const DB_SEQUENCE *get_const_DB_SEQUENCE() const
	{
		return imp_;
	}

	static DbSequence* get_DbSequence(DB_SEQUENCE *seq)
	{
		return (DbSequence *)seq->api_internal;
	}

	static const DbSequence* get_const_DbSequence(const DB_SEQUENCE *seq)
	{
		return (const DbSequence *)seq->api_internal;
	}

	// For internal use only.
	static DbSequence* wrap_DB_SEQUENCE(DB_SEQUENCE *seq);

private:
	DbSequence(DB_SEQUENCE *seq);
	// no copying
	DbSequence(const DbSequence &);
	DbSequence &operator = (const DbSequence &);

	DB_SEQUENCE *imp_;
	DBT key_;
};

//
// A site in replication group 
//
class _exported DbSite
{
	friend class DbEnv;

public:
	int close();
	int get_address(const char **hostp, u_int *port);
	int get_config(u_int32_t which, u_int32_t *value);
	int get_eid(int *eidp);
	int remove();
	int set_config(u_int32_t which, u_int32_t value);

	virtual DB_SITE *get_DB_SITE()
	{
		return imp_;
	}

	virtual const DB_SITE *get_const_DB_SITE() const
	{
		return imp_;
	}

private:
        DbSite();
        virtual ~DbSite();

	// no copying
	DbSite(const DbSite &);
	DbSite &operator = (const DbSite &);
	DB_SITE *imp_;
};

//
// Transaction
//
class _exported DbTxn
{
	friend class DbEnv;

public:
	int abort();
	int commit(u_int32_t flags);
	int discard(u_int32_t flags);
	u_int32_t id();
	int get_name(const char **namep);
	int get_priority(u_int32_t *priorityp);
	int prepare(u_int8_t *gid);
	int set_name(const char *name);
	int set_priority(u_int32_t priority);
	int set_timeout(db_timeout_t timeout, u_int32_t flags);

	virtual DB_TXN *get_DB_TXN()
	{
		return imp_;
	}

	virtual const DB_TXN *get_const_DB_TXN() const
	{
		return imp_;
	}

	static DbTxn* get_DbTxn(DB_TXN *txn)
	{
		return (DbTxn *)txn->api_internal;
	}

	static const DbTxn* get_const_DbTxn(const DB_TXN *txn)
	{
		return (const DbTxn *)txn->api_internal;
	}

	// For internal use only.
	static DbTxn* wrap_DB_TXN(DB_TXN *txn);
	void remove_child_txn(DbTxn *kid);
	void add_child_txn(DbTxn *kid);

	void set_parent(DbTxn *ptxn)
	{
		parent_txn_ = ptxn;
	}

private:
	DB_TXN *imp_;

	// We use a TAILQ to store this object's kids of DbTxn objects, and
	// each kid has a "parent_txn_" to point to this DbTxn object.
	//
	// If imp_ has a parent transaction which is not wrapped by DbTxn 
	// class, parent_txn_ will be NULL since we don't need to maintain 
	// this parent-kid relationship. This relationship only helps to 
	// delete unresolved kids when the parent is resolved.
	DbTxn *parent_txn_;

	// We can add data to this class if needed
	// since it is implemented via a pointer.
	// (see comment at top)

	// Note: use DbEnv::txn_begin() to get pointers to a DbTxn,
	// and call DbTxn::abort() or DbTxn::commit rather than
	// delete to release them.
	//
	DbTxn(DbTxn *ptxn);
	// For internal use only.
	DbTxn(DB_TXN *txn, DbTxn *ptxn);
	virtual ~DbTxn();

	// no copying
	DbTxn(const DbTxn &);
	void operator = (const DbTxn &);

	/*
	 * !!!
	 * Explicit representations of structures from queue.h.
	 * TAILQ_HEAD(__children, DbTxn) children;
	 */
	struct __children {
		DbTxn *tqh_first;
		DbTxn **tqh_last;
	} children;

	/*
	 * !!!
	 * Explicit representations of structures from queue.h.
	 * TAILQ_ENTRY(DbTxn) child_entry;
	 */
	struct {
		DbTxn *tqe_next;
		DbTxn **tqe_prev;
	} child_entry;
};

//
// A chunk of data, maybe a key or value.
//
class _exported Dbt : private DBT
{
	friend class Db;
	friend class Dbc;
	friend class DbEnv;
	friend class DbLogc;
	friend class DbSequence;

public:
	// key/data
	void *get_data() const                 { return data; }
	void set_data(void *value)             { data = value; }

	// key/data length
	u_int32_t get_size() const             { return size; }
	void set_size(u_int32_t value)         { size = value; }

	// RO: length of user buffer.
	u_int32_t get_ulen() const             { return ulen; }
	void set_ulen(u_int32_t value)         { ulen = value; }

	// RO: get/put record length.
	u_int32_t get_dlen() const             { return dlen; }
	void set_dlen(u_int32_t value)         { dlen = value; }

	// RO: get/put record offset.
	u_int32_t get_doff() const             { return doff; }
	void set_doff(u_int32_t value)         { doff = value; }

	// flags
	u_int32_t get_flags() const            { return flags; }
	void set_flags(u_int32_t value)        { flags = value; }

	// Conversion functions
	DBT *get_DBT()                         { return (DBT *)this; }
	const DBT *get_const_DBT() const       { return (const DBT *)this; }

	static Dbt* get_Dbt(DBT *dbt)          { return (Dbt *)dbt; }
	static const Dbt* get_const_Dbt(const DBT *dbt)
					       { return (const Dbt *)dbt; }

	Dbt(void *data, u_int32_t size);
	Dbt();
	~Dbt();
	Dbt(const Dbt &);
	Dbt &operator = (const Dbt &);

private:
	// Note: no extra data appears in this class (other than
	// inherited from DBT) since we need DBT and Dbt objects
	// to have interchangable pointers.
	//
	// When subclassing this class, remember that callback
	// methods like bt_compare, bt_prefix, dup_compare may
	// internally manufacture DBT objects (which later are
	// cast to Dbt), so such callbacks might receive objects
	// not of your subclassed type.
};

////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
//
// multiple key/data/recno iterator classes
//

// DbMultipleIterator is a shared private base class for the three types
// of bulk-return Iterator;  it should never be instantiated directly,
// but it handles the functionality shared by its subclasses.
class _exported DbMultipleIterator
{
public:
	DbMultipleIterator(const Dbt &dbt);
protected:
	u_int8_t *data_;
	u_int32_t *p_;
};

class _exported DbMultipleKeyDataIterator : private DbMultipleIterator
{
public:
	DbMultipleKeyDataIterator(const Dbt &dbt) : DbMultipleIterator(dbt) {}
	bool next(Dbt &key, Dbt &data);
};

class _exported DbMultipleRecnoDataIterator : private DbMultipleIterator
{
public:
	DbMultipleRecnoDataIterator(const Dbt &dbt) : DbMultipleIterator(dbt) {}
	bool next(db_recno_t &recno, Dbt &data);
};

class _exported DbMultipleDataIterator : private DbMultipleIterator
{
public:
	DbMultipleDataIterator(const Dbt &dbt) : DbMultipleIterator(dbt) {}
	bool next(Dbt &data);
};

////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
//
// multiple key/data/recno builder classes
//

// DbMultipleBuilder is a shared private base class for the three types
// of bulk buffer builders;  it should never be instantiated directly,
// but it handles the functionality shared by its subclasses.
class _exported DbMultipleBuilder
{
public:
	DbMultipleBuilder(Dbt &dbt);
protected:
	Dbt &dbt_;
	void *p_;
};

class _exported DbMultipleDataBuilder : DbMultipleBuilder
{
public:
	DbMultipleDataBuilder(Dbt &dbt) : DbMultipleBuilder(dbt) {}
	bool append(void *dbuf, size_t dlen);
	bool reserve(void *&ddest, size_t dlen);
};

class _exported DbMultipleKeyDataBuilder : DbMultipleBuilder
{
public:
	DbMultipleKeyDataBuilder(Dbt &dbt) : DbMultipleBuilder(dbt) {}
	bool append(void *kbuf, size_t klen, void *dbuf, size_t dlen);
	bool reserve(void *&kdest, size_t klen, void *&ddest, size_t dlen);
};

class _exported DbMultipleRecnoDataBuilder
{
public:
	DbMultipleRecnoDataBuilder(Dbt &dbt);
	bool append(db_recno_t recno, void *dbuf, size_t dlen);
	bool reserve(db_recno_t recno, void *&ddest, size_t dlen);
protected:
	Dbt &dbt_;
	void *p_;
};

////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
//
// Exception classes
//

// Almost any error in the DB library throws a DbException.
// Every exception should be considered an abnormality
// (e.g. bug, misuse of DB, file system error).
//
class _exported DbException : public __DB_STD(exception)
{
public:
	virtual ~DbException() throw();
	DbException(int err);
	DbException(const char *description);
	DbException(const char *description, int err);
	DbException(const char *prefix, const char *description, int err);
	int get_errno() const;
	virtual const char *what() const throw();
	DbEnv *get_env() const;
	void set_env(DbEnv *dbenv);

	DbException(const DbException &);
	DbException &operator = (const DbException &);

private:
	void describe(const char *prefix, const char *description);

	char *what_;
	int err_;                   // errno
	DbEnv *dbenv_;
};

//
// A specific sort of exception that occurs when
// an operation is aborted to resolve a deadlock.
//
class _exported DbDeadlockException : public DbException
{
public:
	virtual ~DbDeadlockException() throw();
	DbDeadlockException(const char *description);

	DbDeadlockException(const DbDeadlockException &);
	DbDeadlockException &operator = (const DbDeadlockException &);
};

//
// A specific sort of exception that occurs when
// a lock is not granted, e.g. by lock_get or lock_vec.
// Note that the Dbt is only live as long as the Dbt used
// in the offending call.
//
class _exported DbLockNotGrantedException : public DbException
{
public:
	virtual ~DbLockNotGrantedException() throw();
	DbLockNotGrantedException(const char *prefix, db_lockop_t op,
	    db_lockmode_t mode, const Dbt *obj, const DbLock lock, int index);
	DbLockNotGrantedException(const char *description);

	DbLockNotGrantedException(const DbLockNotGrantedException &);
	DbLockNotGrantedException &operator =
	    (const DbLockNotGrantedException &);

	db_lockop_t get_op() const;
	db_lockmode_t get_mode() const;
	const Dbt* get_obj() const;
	DbLock *get_lock() const;
	int get_index() const;

private:
	db_lockop_t op_;
	db_lockmode_t mode_;
	const Dbt *obj_;
	DbLock *lock_;
	int index_;
};

//
// A specific sort of exception that occurs when
// user declared memory is insufficient in a Dbt.
//
class _exported DbMemoryException : public DbException
{
public:
	virtual ~DbMemoryException() throw();
	DbMemoryException(Dbt *dbt);
	DbMemoryException(const char *prefix, Dbt *dbt);

	DbMemoryException(const DbMemoryException &);
	DbMemoryException &operator = (const DbMemoryException &);

	Dbt *get_dbt() const;
private:
	Dbt *dbt_;
};

//
// A specific sort of exception that occurs when a change of replication
// master requires that all handles be re-opened.
//
class _exported DbRepHandleDeadException : public DbException
{
public:
	virtual ~DbRepHandleDeadException() throw();
	DbRepHandleDeadException(const char *description);

	DbRepHandleDeadException(const DbRepHandleDeadException &);
	DbRepHandleDeadException &operator = (const DbRepHandleDeadException &);
};

//
// A specific sort of exception that occurs when
// recovery is required before continuing DB activity.
//
class _exported DbRunRecoveryException : public DbException
{
public:
	virtual ~DbRunRecoveryException() throw();
	DbRunRecoveryException(const char *description);

	DbRunRecoveryException(const DbRunRecoveryException &);
	DbRunRecoveryException &operator = (const DbRunRecoveryException &);
};

//
// A specific sort of exception that occurs when

////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
//
// Restore default compiler warnings
//
#ifdef _MSC_VER
#pragma warning(pop)
#endif

#endif /* !_DB_CXX_H_ */
