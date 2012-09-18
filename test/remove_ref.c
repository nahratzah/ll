#include "llobj.h"

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
	assert(o == NULL);

	for (i = 0, o = LL_FIRST(objlist, &list);
	    i < N;
	    i++, o = next_o) {
		assert(o != NULL);
		assert(o->satelite == i);

		next_o = LL_NEXT(objlist, &list, o);
		LL_UNLINK(objlist, &list, &data[i]);
	}
	assert(LL_EMPTY(objlist, &list));

	return 0;
}
