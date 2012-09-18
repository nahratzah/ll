#include "llobj.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifdef USE_POSIX_THREADS
#include <pthread.h>
#endif

pthread_barrier_t barrier;
struct obj data[N];


void must_succeed(int, const char*);
void *push_front_thread(void*);
void *push_back_thread(void*);


static __inline int
barrier_wait(pthread_barrier_t *barrier)
{
	int rv = pthread_barrier_wait(barrier);

	if (rv == PTHREAD_BARRIER_SERIAL_THREAD)
		rv = 0;
	return rv;
}


int
main()
{
	pthread_t threads[2];
	struct obj *o = NULL;
	int i;
	struct objlist list = LL_HEAD_INITIALIZER(list);

	for (i = 0; i < N; i++)
		data[i].satelite = i;

	must_succeed(pthread_barrier_init(&barrier, NULL, 3), "pthread_barrier_init");

	must_succeed(pthread_create(&threads[0], NULL, &push_front_thread, &list), "pthread_create");
	must_succeed(pthread_create(&threads[1], NULL, &push_back_thread, &list), "pthread_create");

	must_succeed(barrier_wait(&barrier), "pthread_barrier_wait");

	must_succeed(pthread_join(threads[0], NULL), "pthread_join");
	must_succeed(pthread_join(threads[1], NULL), "pthread_join");
	must_succeed(pthread_barrier_destroy(&barrier), "pthread_barrier_destroy");

	i = 0;
	LL_FOREACH(o, objlist, &list) {
		assert(o->satelite == i);
		i++;
	}
	assert(i == N);

	return 0;
}

void
must_succeed(int error, const char *what)
{
	if (error != 0) {
		fprintf(stderr, "%s failed: %s\n", what, strerror(error));
		abort();
	}
}

void*
push_front_thread(void *listptr)
{
	int i;
	struct objlist *list = listptr;

	must_succeed(barrier_wait(&barrier), "pthread_barrier_wait");
	for (i = N / 2 - 1; i >= 0; i--) {
		LL_PUSH_FRONT(objlist, list, &data[i]);
		LL_RELEASE(objlist, list, &data[i]);
	}
	return NULL;
}
void*
push_back_thread(void *listptr)
{
	int i;
	struct objlist *list = listptr;

	must_succeed(barrier_wait(&barrier), "pthread_barrier_wait");
	for (i = N / 2; i < N; i++) {
		LL_PUSH_BACK(objlist, list, &data[i]);
		LL_RELEASE(objlist, list, &data[i]);
	}
	return NULL;
}
