#include "llobj.h"
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define N 100

struct obj data[N];


void push_front_half(struct objlist*);
void push_back_half(struct objlist*);


int
main()
{
	struct obj *o = NULL;
	int i;
	struct objlist list = LL_HEAD_INITIALIZER(list);

	for (i = 0; i < N; i++)
		data[i].satelite = i;

	push_front_half(&list);
	push_back_half(&list);

	fprintf(stderr, "Checking array...");
	i = 0;
	LL_FOREACH(o, objlist, &list) {
		fprintf(stderr, "\t%d", i);
		assert(o->satelite == i);
		i++;
	}
	fprintf(stderr, "\ni = %d\n", i);
	assert(i == N);

	return 0;
}

void
push_front_half(struct objlist *list)
{
	int i;

	for (i = N / 2 - 1; i >= 0; i--) {
		LL_PUSH_FRONT(objlist, list, &data[i]);
		LL_RELEASE(objlist, list, &data[i]);
	}
}
void
push_back_half(struct objlist *list)
{
	int i;

	for (i = N / 2; i < N; i++) {
		LL_PUSH_BACK(objlist, list, &data[i]);
		LL_RELEASE(objlist, list, &data[i]);
	}
}
