//
// Created by edte on 2021/4/9.
//

#include "spinlock.h"
#include <stdio.h>
#include <pthread.h>

// 给共享变量 a 开一个自旋锁
spinlock sp;
int a;

void *Do1(void *arg) {
    printf("begin thread1\n");
    printf("thread1 begin lock spinlock\n");
    spinlock_lock(&sp);
    printf("thread1 success lock spinlock\n");
    for (int i = 0; i < 50; i++) {
        a++;
    }
    printf("thread1 begin unlock spinlock\n");
    spinlock_unlock(&sp);
    printf("thread1 success unlock spinlock\n");
    printf("end thread1\n");
    return 0;
}

void *Do2(void *arg) {
    printf("begin thread2\n");
    printf("thread2 begin lock spinlock\n");
    spinlock_lock(&sp);
    printf("thread2 success lock spinlock\n");
    for (int i = 0; i < 50; i++) {
        printf("a = %d\n", a);
    }
    printf("thread2 begin unlock spinlock\n");
    spinlock_unlock(&sp);
    printf("thread2 begin unlock spinlock\n");
    printf("end thread2\n");
    return NULL;
}

int main(void) {
    sp = spinlock_new();
    pthread_t t1;
    pthread_t t2;

    pthread_create(&t1, NULL, Do1, NULL);
    pthread_create(&t2, NULL, Do2, NULL);

    sleep(30);

    return 0;
}
