cmake_minimum_required(VERSION 3.17)
project(untitled9 C)

set(CMAKE_C_STANDARD 99)

add_executable(main main.c mutex/mutex.h mutex/mutex.c)
add_executable(mutex mutex/main.c mutex/mutex.c mutex/mutex.h mutex/main.c)
add_executable(rwmutex rwmutex/rwmutex.c rwmutex/rwmutex.h rwmutex/main.c mutex/mutex.c mutex/mutex.h)