#include <stdio.h>
#include <pthread.h>
#include <unistd.h>

pthread_mutex_t mutex1;
pthread_mutex_t mutex2;

void *Do(void *arg) {
    // do �߳��ȳ��� mutex2
    printf("do thread begin lock mutex2\n");
    pthread_mutex_lock(&mutex2);
    printf("do thread success lock mutex2\n");

    sleep(1);

    // do �߳��ֳ��� lock mutex1��������ʱ mutex1 �� main thread ���У�
    // �� do �߳�Ҳ˯�ߣ��������� main �߳�Ҳ�����ģ������̶߳������ˣ�
    // ����������
    printf("do thread begin lock mutex1\n");
    pthread_mutex_lock(&mutex1);
    printf("do thread success lock mutex1\n");

    return NULL;
}

int main(void) {
    pthread_t t1;

    pthread_mutex_init(&mutex1, NULL);
    pthread_mutex_init(&mutex2, NULL);

    //  �� main �߳� lock mutex1
    printf("main thread begin lock mutex1\n");
    pthread_mutex_lock(&mutex1);
    printf("main thread success lock mutex1\n");

    // Ȼ�� do �߳� lock mutex2
    pthread_create(&t1, NULL, Do, NULL);

    sleep(1);

    // main �߳��ֳ��� lock mutex2��������ʱ mutex2 �� do �̳߳��еģ��� main �߳�����
    printf("main thread begin lock mutex2\n");
    pthread_mutex_lock(&mutex2);
    printf("main thread success lock mutex2\n");

    // ���վ����� deadlock �ˣ�����ֹͣ��ȥ
    // c �����ã��ǳ�ԭʼ����������������������ǳ�����ѧϰ��ʲô������ܷǳ���ȷ�����֣���������� go �Ļ���ֱ�� panic��������֪���ײ㷢����ʲô

    return 0;
}
