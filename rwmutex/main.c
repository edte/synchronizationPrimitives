//
// Created by edte on 2021/4/9.
//
#include <stdio.h>
#include "rwmutex.h"
#include <pthread.h>
#include <time.h>
#include <stdlib.h>

// 对 a 的读写锁
rwmutex rw;
int a = 0;

void *read_test(void *arg) {
    read_lock(&rw);
    printf("reading is doing\n");
    printf("a = %d\n", a);
    printf("reading is done\n");
    read_unlock(&rw);
    return NULL;
}

void *write_test(void *arg) {
    write_lock(&rw);
    printf("write is doing\n");
    a++;
//    printf("%d\n", a);
    printf("write is done\n");
    write_unlock(&rw);
    return NULL;
}


int main(void) {
    rw = rwmutex_new();
    pthread_t t;
    srand(time(NULL));

    for (int i = 0; i < 10000; i++) {
        if (rand() % 2 == 0) {
            pthread_create(&t, NULL, write_test, NULL);
        } else {
            pthread_create(&t, NULL, read_test, NULL);
        }
    }

    sleep(15);

    printf("################\n");
    printf("%d\n", a);


    return 0;
}
