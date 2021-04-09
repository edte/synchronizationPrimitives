//
// Created by edte on 2021/4/9.
//

#ifndef UNTITLED9_SPINLOCK_H
#define UNTITLED9_SPINLOCK_H

typedef struct {
    int is_use;
} spinlock;

spinlock spinlock_new();

void spinlock_lock(spinlock *);

void spinlock_unlock(spinlock *);

#endif //UNTITLED9_SPINLOCK_H
