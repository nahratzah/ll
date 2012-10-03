#include "llobj.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct obj data;


int
main()
{
	struct obj *o = NULL;
	int rv;
	struct objlist list = LL_HEAD_INITIALIZER(list);

	data.satelite = 0;
	LL_INIT_ENTRY(&data.entry);

	/* Insert for the first time; must succeed. */
	rv = LL_PUSH_FRONT(objlist, &list, &data);
	assert(rv == 1);

	/* Insert again; must fail. */
	rv = LL_PUSH_FRONT(objlist, &list, &data);
	assert(rv == 0);

	/* Remove for the first time; must succeed. */
	LL_REF(objlist, &list, &data);
	o = LL_UNLINK(objlist, &list, &data);
	assert(o == &data);

	/* Remove again; must fail. */
	LL_REF(objlist, &list, &data);
	o = LL_UNLINK(objlist, &list, &data);
	assert(o == NULL);
	LL_RELEASE(objlist, &list, &data);

	return 0;
}
