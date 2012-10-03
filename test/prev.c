#include "llobj.h"

struct objlist list = LL_HEAD_INITIALIZER(list);
struct obj data[N];

int
main()
{
	int i;
	struct obj *o, *next_o = NULL;

	for (i = 0; i < N; i++) {
		LL_INIT_ENTRY(&data[i].entry);
		data[i].satelite = i;
	}

	for (i = 0; i < N; i++) {
		LL_PUSH_BACK(objlist, &list, &data[i]);
		LL_RELEASE(objlist, &list, &data[i]);
	}

	for (i = N - 1, o = LL_LAST(objlist, &list);
	    i > 0 - 1;
	    i--, o = next_o) {
		assert(o != NULL);
		assert(o->satelite == i);

		next_o = LL_PREV(objlist, &list, o);

		LL_RELEASE(objlist, &list, o);
	}

	return 0;
}
