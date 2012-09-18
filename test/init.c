#include "llobj.h"

struct objlist list = LL_HEAD_INITIALIZER(list);

int
main()
{
	struct objlist dyn_init;

	assert(LL_EMPTY(objlist, &list));

	LL_INIT(&dyn_init);
	assert(LL_EMPTY(objlist, &list));

	return 0;
}
