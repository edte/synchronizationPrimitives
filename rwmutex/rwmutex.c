//
// Created by edte on 2021/4/9.
//

#include "rwmutex.h"
#include <malloc.h>

void write_lock(rwmutex *rw) {
    mutex_lock(&(rw->write_mutex));
}

void write_unlock(rwmutex *rw) {
    mutex_unlock(&(rw->write_mutex));
}

void read_lock(rwmutex *rw) {
    if (rw->read_count == 0) {
        mutex_lock(&(rw->write_mutex));
    }
    mutex_lock(&(rw->read_mutex));
    rw->read_count++;
    mutex_unlock(&(rw->read_mutex));
}

void read_unlock(rwmutex *rw) {
    mutex_lock(&(rw->read_mutex));
    rw->read_count--;
    mutex_unlock(&(rw->read_mutex));
    if (rw->read_count == 0) {
        mutex_unlock(&(rw->write_mutex));
    }
}

rwmutex rwmutex_new() {
    rwmutex *rw = (rwmutex *) malloc(sizeof(rwmutex));
    rw->read_count = 0;
    rw->read_mutex = mutex_new();
    rw->write_mutex = mutex_new();
    return *rw;
}
