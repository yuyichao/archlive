/*
 * Copyright 2008-2009 Katholieke Universiteit Leuven
 *
 * Use of this software is governed by the GNU LGPLv2.1 license
 *
 * Written by Sven Verdoolaege, K.U.Leuven, Departement
 * Computerwetenschappen, Celestijnenlaan 200A, B-3001 Leuven, Belgium
 */

#ifndef ISL_VEC_H
#define ISL_VEC_H

#include <stdio.h>

#include <isl/int.h>
#include <isl/ctx.h>
#include <isl/blk.h>
#include <isl/printer.h>

#if defined(__cplusplus)
extern "C" {
#endif

struct isl_vec {
	int ref;

	struct isl_ctx *ctx;

	unsigned size;
	isl_int *el;

	struct isl_blk block;
};
typedef struct isl_vec isl_vec;

struct isl_vec *isl_vec_alloc(struct isl_ctx *ctx, unsigned size);
struct isl_vec *isl_vec_copy(struct isl_vec *vec);
struct isl_vec *isl_vec_cow(struct isl_vec *vec);
void isl_vec_free(struct isl_vec *vec);

void isl_vec_dump(__isl_keep isl_vec *vec);
__isl_give isl_printer *isl_printer_print_vec(__isl_take isl_printer *printer,
	__isl_keep isl_vec *vec);

void isl_vec_lcm(struct isl_vec *vec, isl_int *lcm);
struct isl_vec *isl_vec_ceil(struct isl_vec *vec);
struct isl_vec *isl_vec_normalize(struct isl_vec *vec);
__isl_give isl_vec *isl_vec_clr(__isl_take isl_vec *vec);
__isl_give isl_vec *isl_vec_scale(__isl_take isl_vec *vec, isl_int m);
__isl_give isl_vec *isl_vec_add(__isl_take isl_vec *vec1,
	__isl_take isl_vec *vec2);
__isl_give isl_vec *isl_vec_extend(__isl_take isl_vec *vec, unsigned size);
__isl_give isl_vec *isl_vec_zero_extend(__isl_take isl_vec *vec, unsigned size);

__isl_give isl_vec *isl_vec_read_from_file(isl_ctx *ctx, FILE *input);

#if defined(__cplusplus)
}
#endif

#endif
