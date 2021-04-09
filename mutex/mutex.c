//
// Created by edte on 2021/4/9.
//

#include "mutex.h"
#include "malloc.h"

// 用信息量实现了互斥锁

mutex mutex_new() {
    mutex *m = (mutex *) malloc(sizeof(mutex));
    sem_init(&(m->sem), 0, 1);
    return *m;
}

void mutex_lock(mutex *m) {
    sem_wait(&(m->sem));
}

void mutex_unlock(mutex *m) {
    sem_post(&(m->sem));
}

void mutex_destroy(mutex *m) {
    sem_destroy(&(m->sem));
}

