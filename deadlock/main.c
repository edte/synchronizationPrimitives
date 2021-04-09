#include <stdio.h>
#include <pthread.h>
#include <unistd.h>

pthread_mutex_t mutex1;
pthread_mutex_t mutex2;

void *Do(void *arg) {
    // do 线程先持有 mutex2
    printf("do thread begin lock mutex2\n");
    pthread_mutex_lock(&mutex2);
    printf("do thread success lock mutex2\n");

    sleep(1);

    // do 线程又尝试 lock mutex1，由于这时 mutex1 是 main thread 持有，
    // 故 do 线程也睡眠，但是这是 main 线程也阻塞的，两个线程都阻塞了，
    // 所以死锁了
    printf("do thread begin lock mutex1\n");
    pthread_mutex_lock(&mutex1);
    printf("do thread success lock mutex1\n");

    return NULL;
}

int main(void) {
    pthread_t t1;

    pthread_mutex_init(&mutex1, NULL);
    pthread_mutex_init(&mutex2, NULL);

    //  先 main 线程 lock mutex1
    printf("main thread begin lock mutex1\n");
    pthread_mutex_lock(&mutex1);
    printf("main thread success lock mutex1\n");

    // 然后 do 线程 lock mutex2
    pthread_create(&t1, NULL, Do, NULL);

    sleep(1);

    // main 线程又尝试 lock mutex2，由于这时 mutex2 是 do 线程持有的，故 main 线程阻塞
    printf("main thread begin lock mutex2\n");
    pthread_mutex_lock(&mutex2);
    printf("main thread success lock mutex2\n");

    // 最终就死锁 deadlock 了，无限停止下去
    // c 就这点好，非常原始，结果是怎样就是怎样，非常利于学习，什么结果都能非常明确的体现，但是如果用 go 的话，直接 panic，根本不知道底层发生了什么

    return 0;
}
