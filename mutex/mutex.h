//
// Created by edte on 2021/4/9.
//

#ifndef UNTITLED9_MUTEX_H
#define UNTITLED9_MUTEX_H

#include <semaphore.h>

typedef struct {
    sem_t sem;
} mutex;

mutex mutex_new();

void mutex_lock(mutex *);

void mutex_unlock(mutex *);

void mutex_destroy(mutex *);

#endif //UNTITLED9_MUTEX_H
