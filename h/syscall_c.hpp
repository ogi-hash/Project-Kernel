//
// Created by os on 8/13/24.
//

#ifndef SYSCALL_C_HPP
#define SYSCALL_C_HPP


#include "tcb.hpp"
#include "sem.hpp"


// f-je za memoriju
void* mem_alloc(size_t size);
int mem_free(void* ptr);

typedef sem* sem_t;
typedef TCB* thread_t;

// f-je za niti
int thread_create (thread_t* handle, void(*start_routine)(void*) , void* arg );

int thread_create_but_dont_start(thread_t* handle, void(*start_routine)(void*) , void* arg );

void thread_start(thread_t handle);

void thread_dispatch();

int thread_exit();

int getThreadId();

void thread_join(thread_t);

void barrier_open(thread_t);

void barrier_pass(thread_t);

void barrier_close(thread_t);

void setMaxThreads(int max);

int sem_open(sem_t* handle, unsigned init);

int sem_close (sem_t handle);

int sem_wait (sem_t id);

int sem_signal (sem_t id);

int sem_trywait(sem_t id);

char getc();

void putc(char c);


#endif //SYSCALL_C_HPP
