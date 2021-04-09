//
// Created by edte on 2021/4/9.
//

#ifndef UNTITLED9_RWMUTEX_H
#define UNTITLED9_RWMUTEX_H

#include "../mutex/mutex.h"

typedef struct {
    mutex write_mutex;
    mutex read_mutex;
    int read_count;
} rwmutex;

rwmutex rwmutex_new();

void read_lock(rwmutex *rw);

void read_unlock(rwmutex *rw);

void write_lock(rwmutex *rw);

void write_unlock(rwmutex *rw);

#endif //UNTITLED9_RWMUTEX_H
