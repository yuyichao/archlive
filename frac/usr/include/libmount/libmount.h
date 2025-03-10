/*
 * mount.h - libmount API
 *
 * Copyright (C) 2008-2009 Karel Zak <kzak@redhat.com>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307  USA
 */

#ifndef _LIBMOUNT_MOUNT_H
#define _LIBMOUNT_MOUNT_H

#ifdef __cplusplus
extern "C" {
#endif

#ifndef USE_UNSTABLE_LIBMOUNT_API
# warning libmount API is not stable yet!
#endif

#include <stdio.h>
#include <mntent.h>
#include <sys/types.h>

#define LIBMOUNT_VERSION   "2.19.0"

/**
 * libmnt_cache:
 *
 * Stores canonicalized paths and evaluated tags
 */
struct libmnt_cache;

/**
 * libmnt_lock:
 *
 * Stores information about locked file (e.g. /etc/mtab)
 */
struct libmnt_lock;

/**
 * libmnt_iter:
 *
 * Generic iterator (stores state about lists)
 */
struct libmnt_iter;

/**
 * libmnt_optmap:
 *
 * Mount options description (map)
 */
struct libmnt_optmap
{
	const char	*name;	 /* option name[=%<type>] (e.g. "loop[=%s]") */
	int		id;	 /* option ID or MS_* flags (e.g MS_RDONLY) */
	int		mask;	 /* MNT_{NOMTAB,INVERT,...} mask */
};

/*
 * mount options map masks
 */
#define MNT_INVERT	(1 << 1) /* invert the mountflag */
#define MNT_NOMTAB	(1 << 2) /* skip in the mtab option string */

/**
 * libmnt_fs:
 *
 * Parsed fstab/mtab/mountinfo entry
 */
struct libmnt_fs;

/**
 * libmnt_table:
 *
 * List of struct libmnt_fs entries (parsed fstab/mtab/mountinfo)
 */
struct libmnt_table;

/**
 * libmnt_update
 *
 * /etc/mtab or utab update description
 */
struct libmnt_update;

/**
 * libmnt_context
 *
 * Mount/umount status
 */
struct libmnt_context;

/*
 * Actions
 */
enum {
	MNT_ACT_MOUNT = 1,
	MNT_ACT_UMOUNT
};

/* init.c */
extern void mnt_init_debug(int mask);

/* version.c */
extern int mnt_parse_version_string(const char *ver_string);
extern int mnt_get_library_version(const char **ver_string);

/* utils.c */
extern char *mnt_mangle(const char *str);
extern char *mnt_unmangle(const char *str);
extern int mnt_fstype_is_netfs(const char *type);
extern int mnt_fstype_is_pseudofs(const char *type);
extern int mnt_match_fstype(const char *type, const char *pattern);
extern int mnt_match_options(const char *optstr, const char *pattern);
extern const char *mnt_get_fstab_path(void);
extern const char *mnt_get_mtab_path(void);
extern int mnt_has_regular_mtab(const char **mtab, int *writable);

/* cache.c */
extern struct libmnt_cache *mnt_new_cache(void);
extern void mnt_free_cache(struct libmnt_cache *cache);
extern int mnt_cache_read_tags(struct libmnt_cache *cache, const char *devname);
extern int mnt_cache_device_has_tag(struct libmnt_cache *cache,
				const char *devname,
                                const char *token,
				const char *value);

extern char *mnt_cache_find_tag_value(struct libmnt_cache *cache,
				const char *devname, const char *token);

extern char *mnt_get_fstype(const char *devname, int *ambi,
			    struct libmnt_cache *cache);
extern char *mnt_resolve_path(const char *path, struct libmnt_cache *cache);
extern char *mnt_resolve_tag(const char *token, const char *value,
			     struct libmnt_cache *cache);
extern char *mnt_resolve_spec(const char *spec, struct libmnt_cache *cache);

/* optstr.c */
extern int mnt_optstr_next_option(char **optstr, char **name, size_t *namesz,
				char **value, size_t *valuesz);
extern int mnt_optstr_append_option(char **optstr, const char *name,
				const char *value);
extern int mnt_optstr_prepend_option(char **optstr, const char *name,
				const char *value);
extern int mnt_optstr_get_option(char *optstr, const char *name,
				char **value, size_t *valsz);
extern int mnt_optstr_set_option(char **optstr, const char *name,
				const char *value);
extern int mnt_optstr_remove_option(char **optstr, const char *name);

extern int mnt_split_optstr(const char *optstr,
			    char **user, char **vfs, char **fs,
			    int ignore_user, int ignore_vfs);

extern int mnt_optstr_get_options(const char *optstr, char **subset,
                            const struct libmnt_optmap *map, int ignore);

extern int mnt_optstr_get_flags(const char *optstr, unsigned long *flags,
				const struct libmnt_optmap *map);
extern int mnt_optstr_apply_flags(char **optstr, unsigned long flags,
                                const struct libmnt_optmap *map);

/* iter.c */
enum {

	MNT_ITER_FORWARD = 0,
	MNT_ITER_BACKWARD
};
extern struct libmnt_iter *mnt_new_iter(int direction);
extern void mnt_free_iter(struct libmnt_iter *itr);
extern void mnt_reset_iter(struct libmnt_iter *itr, int direction);
extern int mnt_iter_get_direction(struct libmnt_iter *itr);

/* optmap.c */
enum {
	MNT_LINUX_MAP = 1,
	MNT_USERSPACE_MAP
};
extern const struct libmnt_optmap *mnt_get_builtin_optmap(int id);

/* lock.c */
extern struct libmnt_lock *mnt_new_lock(const char *datafile, pid_t id);
extern void mnt_free_lock(struct libmnt_lock *ml);
extern void mnt_unlock_file(struct libmnt_lock *ml);
extern int mnt_lock_file(struct libmnt_lock *ml);
extern int mnt_lock_block_signals(struct libmnt_lock *ml, int enable);

/* fs.c */
extern struct libmnt_fs *mnt_new_fs(void);
extern void mnt_free_fs(struct libmnt_fs *fs);
extern void mnt_reset_fs(struct libmnt_fs *fs);
extern struct libmnt_fs *mnt_copy_fs(struct libmnt_fs *dest,
				     const struct libmnt_fs *src);
extern void *mnt_fs_get_userdata(struct libmnt_fs *fs);
extern int mnt_fs_set_userdata(struct libmnt_fs *fs, void *data);
extern const char *mnt_fs_get_source(struct libmnt_fs *fs);
extern int mnt_fs_set_source(struct libmnt_fs *fs, const char *source);
extern const char *mnt_fs_get_srcpath(struct libmnt_fs *fs);
extern int mnt_fs_get_tag(struct libmnt_fs *fs, const char **name,
			  const char **value);
extern const char *mnt_fs_get_target(struct libmnt_fs *fs);
extern int mnt_fs_set_target(struct libmnt_fs *fs, const char *target);
extern const char *mnt_fs_get_fstype(struct libmnt_fs *fs);
extern int mnt_fs_set_fstype(struct libmnt_fs *fs, const char *fstype);

extern char *mnt_fs_strdup_options(struct libmnt_fs *fs);
extern int mnt_fs_set_options(struct libmnt_fs *fs, const char *optstr);

extern int mnt_fs_get_option(struct libmnt_fs *fs, const char *name,
				char **value, size_t *valsz);

extern int mnt_fs_append_options(struct libmnt_fs *fs, const char *optstr);
extern int mnt_fs_prepend_options(struct libmnt_fs *fs, const char *optstr);

extern const char *mnt_fs_get_fs_options(struct libmnt_fs *fs);
extern int mnt_fs_set_fs_options(struct libmnt_fs *fs, const char *optstr);
extern int mnt_fs_append_fs_options(struct libmnt_fs *fs, const char *optstr);
extern int mnt_fs_prepend_fs_options(struct libmnt_fs *fs, const char *optstr);

extern const char *mnt_fs_get_vfs_options(struct libmnt_fs *fs);
extern int mnt_fs_set_vfs_options(struct libmnt_fs *fs, const char *optstr);
extern int mnt_fs_append_vfs_options(struct libmnt_fs *fs, const char *optstr);
extern int mnt_fs_prepend_vfs_options(struct libmnt_fs *fs, const char *optstr);

extern const char *mnt_fs_get_user_options(struct libmnt_fs *fs);
extern int mnt_fs_set_user_options(struct libmnt_fs *fs, const char *optstr);
extern int mnt_fs_append_user_options(struct libmnt_fs *fs, const char *optstr);
extern int mnt_fs_prepend_user_options(struct libmnt_fs *fs, const char *optstr);

extern const char *mnt_fs_get_attributes(struct libmnt_fs *fs);
extern int mnt_fs_set_attributes(struct libmnt_fs *fs, const char *optstr);
extern int mnt_fs_get_attribute(struct libmnt_fs *fs, const char *name,
				char **value, size_t *valsz);
extern int mnt_fs_append_attributes(struct libmnt_fs *fs, const char *optstr);
extern int mnt_fs_prepend_attributes(struct libmnt_fs *fs, const char *optstr);

extern int mnt_fs_get_freq(struct libmnt_fs *fs);
extern int mnt_fs_set_freq(struct libmnt_fs *fs, int freq);
extern int mnt_fs_get_passno(struct libmnt_fs *fs);
extern int mnt_fs_set_passno(struct libmnt_fs *fs, int passno);
extern const char *mnt_fs_get_root(struct libmnt_fs *fs);
extern int mnt_fs_set_root(struct libmnt_fs *fs, const char *root);
extern const char *mnt_fs_get_bindsrc(struct libmnt_fs *fs);
extern int mnt_fs_set_bindsrc(struct libmnt_fs *fs, const char *src);
extern int mnt_fs_get_id(struct libmnt_fs *fs);
extern int mnt_fs_get_parent_id(struct libmnt_fs *fs);
extern dev_t mnt_fs_get_devno(struct libmnt_fs *fs);

extern int mnt_fs_match_target(struct libmnt_fs *fs, const char *target,
			       struct libmnt_cache *cache);
extern int mnt_fs_match_source(struct libmnt_fs *fs, const char *source,
			       struct libmnt_cache *cache);
extern int mnt_fs_match_fstype(struct libmnt_fs *fs, const char *types);
extern int mnt_fs_match_options(struct libmnt_fs *fs, const char *options);
extern int mnt_fs_print_debug(struct libmnt_fs *fs, FILE *file);

extern int mnt_fs_is_kernel(struct libmnt_fs *fs);

extern void mnt_free_mntent(struct mntent *mnt);
extern int mnt_fs_to_mntent(struct libmnt_fs *fs, struct mntent **mnt);

/* tab-parse.c */
extern struct libmnt_table *mnt_new_table_from_file(const char *filename);
extern struct libmnt_table *mnt_new_table_from_dir(const char *dirname);
extern int mnt_table_parse_stream(struct libmnt_table *tb, FILE *f,
				  const char *filename);
extern int mnt_table_parse_file(struct libmnt_table *tb, const char *filename);
extern int mnt_table_parse_fstab(struct libmnt_table *tb, const char *filename);
extern int mnt_table_parse_mtab(struct libmnt_table *tb, const char *filename);
extern int mnt_table_set_parser_errcb(struct libmnt_table *tb,
                int (*cb)(struct libmnt_table *tb, const char *filename, int line));

/* tab.c */
extern struct libmnt_table *mnt_new_table(void);
extern void mnt_free_table(struct libmnt_table *tb);
extern int mnt_table_get_nents(struct libmnt_table *tb);
extern int mnt_table_set_cache(struct libmnt_table *tb, struct libmnt_cache *mpc);
extern struct libmnt_cache *mnt_table_get_cache(struct libmnt_table *tb);
extern const char *mnt_table_get_name(struct libmnt_table *tb);
extern int mnt_table_add_fs(struct libmnt_table *tb, struct libmnt_fs *fs);
extern int mnt_table_remove_fs(struct libmnt_table *tb, struct libmnt_fs *fs);
extern int mnt_table_next_fs(struct libmnt_table *tb, struct libmnt_iter *itr,
			     struct libmnt_fs **fs);
extern int mnt_table_next_child_fs(struct libmnt_table *tb, struct libmnt_iter *itr,
	                        struct libmnt_fs *parent, struct libmnt_fs **chld);
extern int mnt_table_get_root_fs(struct libmnt_table *tb, struct libmnt_fs **root);
extern int mnt_table_set_iter(struct libmnt_table *tb, struct libmnt_iter *itr,
			      struct libmnt_fs *fs);

extern struct libmnt_fs *mnt_table_find_target(struct libmnt_table *tb,
				const char *path, int direction);
extern struct libmnt_fs *mnt_table_find_srcpath(struct libmnt_table *tb,
				const char *path, int direction);
extern struct libmnt_fs *mnt_table_find_tag(struct libmnt_table *tb, const char *tag,
				const char *val, int direction);
extern struct libmnt_fs *mnt_table_find_source(struct libmnt_table *tb,
				const char *source, int direction);
extern struct libmnt_fs *mnt_table_find_pair(struct libmnt_table *tb,
				const char *source,
				const char *target, int direction);

extern int mnt_table_find_next_fs(struct libmnt_table *tb,
			struct libmnt_iter *itr,
			int (*match_func)(struct libmnt_fs *, void *), void *userdata,
		        struct libmnt_fs **fs);

/* tab_update.c */
extern struct libmnt_update *mnt_new_update(void);
extern void mnt_free_update(struct libmnt_update *upd);
extern int mnt_update_is_ready(struct libmnt_update *upd);
extern int mnt_update_set_fs(struct libmnt_update *upd, unsigned long mflags,
	                      const char *target, struct libmnt_fs *fs);
extern int mnt_update_table(struct libmnt_update *upd, struct libmnt_lock *lc);
extern unsigned long mnt_update_get_mflags(struct libmnt_update *upd);
extern int mnt_update_force_rdonly(struct libmnt_update *upd, int rdonly);
extern const char *mnt_update_get_filename(struct libmnt_update *upd);
extern struct libmnt_fs *mnt_update_get_fs(struct libmnt_update *upd);

/* context.c */

/* mode for mount options from fstab */
enum {
	MNT_OMODE_IGNORE  = (1 << 1),	/* ignore mtab/fstab options */
	MNT_OMODE_APPEND  = (1 << 2),	/* append mtab/fstab options to existing options */
	MNT_OMODE_PREPEND = (1 << 3),	/* prepend mtab/fstab options to existing options */
	MNT_OMODE_REPLACE = (1 << 4),	/* replace existing options with options from mtab/fstab */

	MNT_OMODE_FORCE   = (1 << 5),   /* always read mtab/fstab options */

	MNT_OMODE_FSTAB   = (1 << 10),	/* read from fstab */
	MNT_OMODE_MTAB    = (1 << 11),	/* read from mtab if fstab not enabled or failed */

	/* default */
	MNT_OMODE_AUTO   = (MNT_OMODE_PREPEND | MNT_OMODE_FSTAB | MNT_OMODE_MTAB),
	/* non-root users */
	MNT_OMODE_USER   = (MNT_OMODE_REPLACE | MNT_OMODE_FORCE | MNT_OMODE_FSTAB)
};

extern struct libmnt_context *mnt_new_context(void);
extern void mnt_free_context(struct libmnt_context *cxt);
extern int mnt_reset_context(struct libmnt_context *cxt);
extern int mnt_context_is_restricted(struct libmnt_context *cxt);

extern int mnt_context_init_helper(struct libmnt_context *cxt,
				   int action, int flags);
extern int mnt_context_helper_setopt(struct libmnt_context *cxt, int c, char *arg);

extern int mnt_context_set_optsmode(struct libmnt_context *cxt, int mode);
extern int mnt_context_disable_canonicalize(struct libmnt_context *cxt, int disable);
extern int mnt_context_enable_lazy(struct libmnt_context *cxt, int enable);
extern int mnt_context_enable_rdonly_umount(struct libmnt_context *cxt, int enable);
extern int mnt_context_disable_helpers(struct libmnt_context *cxt, int disable);
extern int mnt_context_enable_sloppy(struct libmnt_context *cxt, int enable);
extern int mnt_context_enable_fake(struct libmnt_context *cxt, int enable);
extern int mnt_context_disable_mtab(struct libmnt_context *cxt, int disable);
extern int mnt_context_enable_force(struct libmnt_context *cxt, int enable);
extern int mnt_context_enable_verbose(struct libmnt_context *cxt, int enable);
extern int mnt_context_enable_loopdel(struct libmnt_context *cxt, int enable);

extern int mnt_context_get_optsmode(struct libmnt_context *cxt);
extern int mnt_context_is_lazy(struct libmnt_context *cxt);
extern int mnt_context_is_rdonly_umount(struct libmnt_context *cxt);
extern int mnt_context_is_sloppy(struct libmnt_context *cxt);
extern int mnt_context_is_fake(struct libmnt_context *cxt);
extern int mnt_context_is_nomtab(struct libmnt_context *cxt);
extern int mnt_context_is_force(struct libmnt_context *cxt);
extern int mnt_context_is_verbose(struct libmnt_context *cxt);

extern int mnt_context_set_fs(struct libmnt_context *cxt, struct libmnt_fs *fs);
extern struct libmnt_fs *mnt_context_get_fs(struct libmnt_context *cxt);
extern int mnt_context_set_source(struct libmnt_context *cxt, const char *source);
extern int mnt_context_set_target(struct libmnt_context *cxt, const char *target);
extern int mnt_context_set_fstype(struct libmnt_context *cxt, const char *fstype);
extern const char *mnt_context_get_source(struct libmnt_context *cxt);
extern const char *mnt_context_get_target(struct libmnt_context *cxt);
extern const char *mnt_context_get_fstype(struct libmnt_context *cxt);

extern int mnt_context_set_options(struct libmnt_context *cxt, const char *optstr);
extern int mnt_context_append_options(struct libmnt_context *cxt,
				      const char *optstr);
extern int mnt_context_set_fstype_pattern(struct libmnt_context *cxt,
				      const char *pattern);
extern int mnt_context_set_options_pattern(struct libmnt_context *cxt,
				      const char *pattern);

extern int mnt_context_set_fstab(struct libmnt_context *cxt,
				 struct libmnt_table *tb);
extern int mnt_context_get_fstab(struct libmnt_context *cxt,
				 struct libmnt_table **tb);
extern int mnt_context_get_mtab(struct libmnt_context *cxt,
				struct libmnt_table **tb);
extern int mnt_context_set_cache(struct libmnt_context *cxt,
				 struct libmnt_cache *cache);
extern struct libmnt_cache *mnt_context_get_cache(struct libmnt_context *cxt);
extern struct libmnt_lock *mnt_context_get_lock(struct libmnt_context *cxt);

extern int mnt_context_set_mflags(struct libmnt_context *cxt,
				      unsigned long flags);
extern int mnt_context_get_mflags(struct libmnt_context *cxt,
				      unsigned long *flags);
extern int mnt_context_set_user_mflags(struct libmnt_context *cxt,
						unsigned long flags);
extern int mnt_context_get_user_mflags(struct libmnt_context *cxt,
						unsigned long *flags);

extern int mnt_context_set_mountdata(struct libmnt_context *cxt, void *data);
extern int mnt_context_apply_fstab(struct libmnt_context *cxt);
extern int mnt_context_get_status(struct libmnt_context *cxt);
extern int mnt_context_strerror(struct libmnt_context *cxt, char *buf,
				size_t bufsiz);

extern int mnt_context_mount(struct libmnt_context *cxt);
extern int mnt_context_umount(struct libmnt_context *cxt);

extern int mnt_context_prepare_mount(struct libmnt_context *cxt);
extern int mnt_context_do_mount(struct libmnt_context *cxt);
extern int mnt_context_finalize_mount(struct libmnt_context *cxt);

extern int mnt_context_prepare_umount(struct libmnt_context *cxt);
extern int mnt_context_do_umount(struct libmnt_context *cxt);
extern int mnt_context_finalize_umount(struct libmnt_context *cxt);

extern int mnt_context_set_syscall_status(struct libmnt_context *cxt, int status);

/*
 * mount(8) userspace options masks (MNT_MAP_USERSPACE map)
 */
#define MNT_MS_NOAUTO	(1 << 2)
#define MNT_MS_USER	(1 << 3)
#define MNT_MS_USERS	(1 << 4)
#define MNT_MS_OWNER	(1 << 5)
#define MNT_MS_GROUP	(1 << 6)
#define MNT_MS_NETDEV	(1 << 7)
#define MNT_MS_COMMENT  (1 << 8)
#define MNT_MS_LOOP     (1 << 9)
#define MNT_MS_NOFAIL   (1 << 10)
#define MNT_MS_UHELPER  (1 << 11)

/*
 * mount(2) MS_* masks (MNT_MAP_LINUX map)
 */
#ifndef MS_RDONLY
#define MS_RDONLY	 1	/* Mount read-only */
#endif
#ifndef MS_NOSUID
#define MS_NOSUID	 2	/* Ignore suid and sgid bits */
#endif
#ifndef MS_NODEV
#define MS_NODEV	 4	/* Disallow access to device special files */
#endif
#ifndef MS_NOEXEC
#define MS_NOEXEC	 8	/* Disallow program execution */
#endif
#ifndef MS_SYNCHRONOUS
#define MS_SYNCHRONOUS	16	/* Writes are synced at once */
#endif
#ifndef MS_REMOUNT
#define MS_REMOUNT	32	/* Alter flags of a mounted FS */
#endif
#ifndef MS_MANDLOCK
#define MS_MANDLOCK	64	/* Allow mandatory locks on an FS */
#endif
#ifndef MS_DIRSYNC
#define MS_DIRSYNC	128	/* Directory modifications are synchronous */
#endif
#ifndef MS_NOATIME
#define MS_NOATIME	0x400	/* 1024: Do not update access times. */
#endif
#ifndef MS_NODIRATIME
#define MS_NODIRATIME   0x800	/* 2048: Don't update directory access times */
#endif
#ifndef MS_BIND
#define	MS_BIND		0x1000	/* 4096: Mount existing tree also elsewhere */
#endif
#ifndef MS_MOVE
#define MS_MOVE		0x2000	/* 8192: Atomically move tree */
#endif
#ifndef MS_REC
#define MS_REC		0x4000	/* 16384: Recursive loopback */
#endif
#ifndef MS_VERBOSE
#define MS_VERBOSE	0x8000	/* 32768 */
#endif
#ifndef MS_RELATIME
#define MS_RELATIME	0x200000 /* 200000: Update access times relative
                                  to mtime/ctime */
#endif
#ifndef MS_UNBINDABLE
#define MS_UNBINDABLE	(1<<17)	/* 131072 unbindable*/
#endif
#ifndef MS_PRIVATE
#define MS_PRIVATE	(1<<18)	/* 262144 Private*/
#endif
#ifndef MS_SLAVE
#define MS_SLAVE	(1<<19)	/* 524288 Slave*/
#endif
#ifndef MS_SHARED
#define MS_SHARED	(1<<20)	/* 1048576 Shared*/
#endif
#ifndef MS_I_VERSION
#define MS_I_VERSION	(1<<23)	/* update inode I_version field */
#endif
#ifndef MS_STRICTATIME
#define MS_STRICTATIME	(1<<24) /* strict atime semantics */
#endif

/*
 * Magic mount flag number. Had to be or-ed to the flag values.
 */
#ifndef MS_MGC_VAL
#define MS_MGC_VAL 0xC0ED0000	/* magic flag number to indicate "new" flags */
#endif
#ifndef MS_MGC_MSK
#define MS_MGC_MSK 0xffff0000	/* magic flag number mask */
#endif


/* Shared-subtree options */
#define MS_PROPAGATION  (MS_SHARED|MS_SLAVE|MS_UNBINDABLE|MS_PRIVATE)

/* Options that we make ordinary users have by default.  */
#define MS_SECURE	(MS_NOEXEC|MS_NOSUID|MS_NODEV)

/* Options that we make owner-mounted devices have by default */
#define MS_OWNERSECURE	(MS_NOSUID|MS_NODEV)

#ifdef __cplusplus
}
#endif

#endif /* _LIBMOUNT_MOUNT_H */
