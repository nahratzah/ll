#ifndef LLOBJ_H
#define LLOBJ_H

#include <ll.h>

struct obj {
	int satelite;
	LL_ENTRY(obj) entry;
};
LL_HEAD(objlist, obj);
LL_GENERATE(objlist, obj, entry);

#endif /* LLOBJ_H */
