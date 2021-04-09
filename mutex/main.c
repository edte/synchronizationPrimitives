//
// Created by edte on 2021/4/9.
//

#include <stdio.h>
//#include "mutex/mutex.h"
#include "mutex.h"
#include <pthread.h>
#include <unistd.h>

// 共享全局变量
int a = 0;

mutex m;

void *Do(void *arg) {
    // 这里 a++ 和打印 a 是原子操作，理论上来说，就是先增加，再打印出 a
    // 那么最终打印出来的一定是一个有顺序的一些值
    // 但是，这两个操作如果就这样普通的使用，当多个线程同时调用时，
    // 一个线程可能刚使 a++，但是还没来得及打印，就挂起换时间片了
    // 就去执行另一个线程，这时另一个线程又执行了 a++，当轮转回来这个线程时
    // 再执行打印，就会发现 a 的值变大了，应该是小的值，但是不对，这样最终打印的值就不再是有顺序的值了
    // 这就是理论上应该是原子操作，应该同时执行的操作，但是却被打断了
    // 那么就可以使用互斥锁，在原子操作执行前和执行后分别加锁和解锁，
    // 这样当其他线程切换要操作 a 时，发现已经加锁了，那么就只能阻塞等待，
    // 于是轮转回来继续执行，那么最终的原子操作就能正确执行，结果就是有顺序的了
    // 当然加锁解锁肯定有开销的，并且轮转后发现加锁后又阻塞，会导致上下文切换次数增多，这也会导致开销，不过这都是必须的
    mutex_lock(&m);
    a++;
    printf("%d\n", a);
    mutex_unlock(&m);
    return NULL;
}

int main(void) {
    m = mutex_new();
    pthread_t t;

    for (int i = 0; i < 100000; i++) {
        pthread_create(&t, NULL, Do, NULL);
    }

    printf("main thread sleep...\n");
    sleep(10);
    printf("main thread awake");

    return 0;
}


