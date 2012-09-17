#include "llobj.h"
#include <assert.h>

#define N 100

struct objlist list = LL_HEAD_INITIALIZER(list);
struct obj data[N];

int
main()
{
	int i;
	struct obj *o, *next_o = NULL;

	for (i = 0; i < N; i++)
		data[i].satelite = i;

	for (i = 0; i < N; i++) {
		LL_PUSH_BACK(objlist, &list, &data[i]);
		LL_RELEASE(objlist, &list, &data[i]);
	}

	for (i = 0, o = LL_FIRST(objlist, &list);
	    i < N;
	    i++, o = next_o) {
		assert(o != NULL);
		assert(o->satelite == i);

		next_o = LL_NEXT(objlist, &list, o);

		LL_RELEASE(objlist, &list, o);
	}

	LL_REF(objlist, &list, &data[0]);
	LL_UNLINK(objlist, &list, &data[0]);
	for (i = 1, o = LL_FIRST(objlist, &list);
	    i < N;
	    i++, o = next_o) {
		assert(o != NULL);
		assert(o->satelite == i);

		next_o = LL_NEXT(objlist, &list, o);

		LL_RELEASE(objlist, &list, o);
	}

	return 0;
}
