#include "llobj.h"
#include <assert.h>

struct objlist list = LL_HEAD_INITIALIZER(list);
struct obj data[N];


#define SUCC(obj_entry)		(*(void**)&(obj_entry)->succ)
#define PRED(obj_entry)		(*(void**)&(obj_entry)->pred)
#define REFCNT(obj_entry)	(*(size_t*)&(obj_entry)->refcnt)

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


	/*
	 * Verify queue is correct with respect to all next pointers.
	 */
	assert(SUCC(&list.ll_head.q) == &data[0].entry);
	for (i = 0; i < N - 1; i++)
		assert(SUCC(&data[i].entry) == &data[i + 1].entry);
	assert(SUCC(&data[N - 1].entry) == &list.ll_head.q);

	/*
	 * Verify queue is correct with respect to all prev pointers.
	 */
	assert(PRED(&list.ll_head.q) == &data[N - 1].entry);
	for (i = 0; i < N - 1; i++)
		assert(PRED(&data[i + 1].entry) == &data[i].entry);
	assert(PRED(&data[0].entry) == &list.ll_head.q);

	/*
	 * Verify queue is correct with respect to all refcounts.
	 */
	assert(REFCNT(&list.ll_head.q) == 2);
	for (i = 0; i < N - 1; i++)
		assert(REFCNT(&data[i + 1].entry) == 2);


	for (i = 0, o = LL_FIRST(objlist, &list);
	    i < N;
	    i++, o = next_o) {
		assert(o != NULL);
		assert(o->satelite == i);

		next_o = LL_NEXT(objlist, &list, o);

		LL_RELEASE(objlist, &list, o);
	}

	return 0;
}
