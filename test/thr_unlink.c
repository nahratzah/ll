#include "llobj.h"
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifdef USE_POSIX_THREADS
#include <pthread.h>
#endif

#define T 4

pthread_barrier_t barrier;
struct obj data[T][N];
struct objlist list = LL_HEAD_INITIALIZER(list);


void must_succeed(int, const char*);
void *rm_thread_forward(void*);
void *rm_thread_backward(void*);


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
	pthread_t threads[T];
	int i, j;

	for (j = 0; j < T; j++) {
		for (i = 0; i < N; i++) {
			data[j][i].satelite = N * j + i;
			LL_PUSH_BACK(objlist, &list, &data[j][i]);
			LL_RELEASE(objlist, &list, &data[j][i]);
		}
	}

	must_succeed(pthread_barrier_init(&barrier, NULL, T + 1),
	    "pthread_barrier_init");

	for (i = 0; i < T; i++) {
		must_succeed(pthread_create(&threads[i], NULL,
		    (i < N / 2 ? &rm_thread_forward : &rm_thread_backward),
		    data[i]), "pthread_create");
	}
	must_succeed(barrier_wait(&barrier), "pthread_barrier_wait");

	for (i = 0; i < T; i++)
		must_succeed(pthread_join(threads[i], NULL), "pthread_join");
	must_succeed(pthread_barrier_destroy(&barrier),
	    "pthread_barrier_destroy");

	assert(LL_EMPTY(objlist, &list));
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

void
unlink_fail(struct obj *o)
{
	fprintf(stderr, "Failed to remove object[%d][%d]\n",
	    o->satelite / N, o->satelite % N);
	abort();
}

void*
rm_thread_forward(void *objs_ptr)
{
	struct obj *objs = objs_ptr;
	int i;

	for (i = 0; i < N; i++)
		LL_REF(objlist, &list, &objs[i]);
	must_succeed(barrier_wait(&barrier), "pthread_barrier_wait");

	for (i = 0; i < N; i++) {
		if (!LL_UNLINK(objlist, &list, &objs[i]))
			unlink_fail(&objs[i]);
	}
	return NULL;
}

void*
rm_thread_backward(void *objs_ptr)
{
	struct obj *objs = objs_ptr;
	int i;

	for (i = 0; i < N; i++)
		LL_REF(objlist, &list, &objs[i]);
	must_succeed(barrier_wait(&barrier), "pthread_barrier_wait");

	for (i = N - 1; i >= 0; i--) {
		if (!LL_UNLINK(objlist, &list, &objs[i]))
			unlink_fail(&objs[i]);
	}
	return NULL;
}
