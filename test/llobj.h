#ifndef LLOBJ_H
#define LLOBJ_H

#ifdef NDEBUG
#undef NDEBUG
#endif

#include <ll.h>
#include <assert.h>

struct obj {
	int satelite;
	LL_ENTRY(obj) entry;
};
LL_HEAD(objlist, obj);
LL_GENERATE(objlist, obj, entry);

#define N 1000

#endif /* LLOBJ_H */
