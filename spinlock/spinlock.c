//
// Created by edte on 2021/4/9.
//

#include "spinlock.h"
#include <malloc.h>
#include <stdio.h>

spinlock spinlock_new() {
    spinlock *sp = (spinlock *) malloc(sizeof(spinlock));
    sp->is_use = 0;
    return *sp;
}

void spinlock_lock(spinlock *sp) {
    while (1) {
        if (sp->is_use == 0) {
            sp->is_use++;
            break;
        }
    }
}

void spinlock_unlock(spinlock *sp) {
    sp->is_use--;
}
