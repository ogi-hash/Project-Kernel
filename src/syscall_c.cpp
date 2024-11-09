//
// Created by os on 8/13/24.
//

#include "../h/syscall_c.hpp"
#include "../lib/hw.h"
#include "../h/syscall_codes.h"


// mem_alloc i mem_free implementacija
void* mem_alloc(size_t size){
    size_t blocks = (size + sizeof(size_t))/ MEM_BLOCK_SIZE;

    if(size + sizeof(size_t) - blocks * MEM_BLOCK_SIZE > 0){
        blocks++;
    }

    __asm__ volatile("mv a1, %0" : : "r" (blocks));

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::MEM_ALLOC));

    __asm__ volatile("ecall");

    void *res;
    __asm__ volatile ("mv %0, a0" : "=r" (res));
    return res;
}

int mem_free(void* ptr){

    __asm__ volatile("mv a1, %0": : "r" (ptr));

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::MEM_FREE));

    __asm__ volatile("ecall");

    int res;
    __asm__ volatile("mv %0, a0" : "=r" (res));
    return res;

}
// THREAD f-je
int thread_create (thread_t* handle, void(*start_routine)(void*) , void* arg ) {

    // Alociranje mem za stek
    void* volatile stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    // Greska pri alokaciji steka
    if(!stack_space) {
        return -1;
    }

    __asm__ volatile("mv a4, %0" : : "r" (stack_space));

    __asm__ volatile("mv a3, %0" : : "r" (arg));

    __asm__ volatile("mv a2, %0" : : "r" (start_routine));

    __asm__ volatile("mv a1, %0" : : "r" (handle));

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::THREAD_CREATE));

    __asm__ volatile("ecall");


    int res;
    __asm__ volatile ("mv %0, a0" : "=r" (res));

    // ako je neuspesno kreirana nit, dealociraj stek
    if(res == -1){
        mem_free(stack_space);
    }


    return res;
}

int thread_create_but_dont_start(thread_t* handle, void(*start_routine)(void*) , void* arg ) {
    // Alociranje mem za stek
    void* volatile stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    // Greska pri alokaciji steka
    if(!stack_space) {
        return -1;
    }

    __asm__ volatile("mv a4, %0" : : "r" (stack_space));

    __asm__ volatile("mv a3, %0" : : "r" (arg));

    __asm__ volatile("mv a2, %0" : : "r" (start_routine));

    __asm__ volatile("mv a1, %0" : : "r" (handle));

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::THREAD_CREATE_BUT_NO_START));

    __asm__ volatile("ecall");


    int res;
    __asm__ volatile ("mv %0, a0" : "=r" (res));

    // ako je neuspesno kreirana nit, dealociraj stek
    if(res == -1){
        mem_free(stack_space);
    }


    return res;
}

void thread_start (thread_t handle){

    __asm__ volatile("mv a1, %0" : : "r" (handle));

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::THREAD_START));

    __asm__ volatile("ecall");

}

void thread_dispatch() {
    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::THREAD_DISPATCH));

    __asm__ volatile("ecall");
}

int thread_exit() {

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::THREAD_EXIT));

    __asm__ volatile("ecall");

    int res;
    __asm__ volatile ("mv %0, a0" : "=r" (res));
    return res;

}

int getThreadId() {
    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::THREAD_GET_ID));

    __asm__ volatile("ecall");

    int res;
    __asm__ volatile ("mv %0, a0" : "=r" (res));
    return res;
}

void setMaxThreads(int max) {

    __asm__ volatile("mv a1, %0" : : "r" (max));

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::THREAD_SET_MAX));

    __asm__ volatile("ecall");

}

void thread_join(thread_t handle) {

    __asm__ volatile("mv a1, %0" : : "r" (handle));

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::THREAD_JOIN));

    __asm__ volatile("ecall");

}

void barrier_open(thread_t handle) {

    __asm__ volatile("mv a1, %0" : : "r" (handle));

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::BARRIER_OPEN));

    __asm__ volatile("ecall");

}

void barrier_close(thread_t handle) {

    __asm__ volatile("mv a1, %0" : : "r" (handle));

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::BARRIER_CLOSE));

    __asm__ volatile("ecall");

}

void barrier_pass(thread_t handle) {

    __asm__ volatile("mv a1, %0" : : "r" (handle));

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::BARRIER_PASS));

    __asm__ volatile("ecall");

}


int sem_open(sem_t* handle, unsigned init) {

    __asm__ volatile("mv a2, %0" : : "r" (init));

    __asm__ volatile("mv a1, %0" : : "r" (handle));

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::SEM_OPEN));


    __asm__ volatile("ecall");

    int res;
    __asm__ volatile ("mv %0, a0" : "=r" (res));
    return res;

}

int sem_close (sem_t handle) {

    __asm__ volatile("mv a1, %0" : : "r" (handle));

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::SEM_CLOSE));

    __asm__ volatile("ecall");

    int res;
    __asm__ volatile ("mv %0, a0" : "=r" (res));
    return res;
}

int sem_wait (sem_t id){

    __asm__ volatile("mv a1, %0" : : "r" (id));

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::SEM_WAIT));

    __asm__ volatile("ecall");

    int res;
    __asm__ volatile ("mv %0, a0" : "=r" (res));
    return res;
}

int sem_signal (sem_t id){

    __asm__ volatile("mv a1, %0" : : "r" (id));

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::SEM_SIGNAL));

    __asm__ volatile("ecall");

    int res;
    __asm__ volatile ("mv %0, a0" : "=r" (res));
    return res;
}

int sem_trywait(sem_t id){


    __asm__ volatile("mv a1, %0" : : "r" (id));

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::SEM_TRYWAIT));

    __asm__ volatile("ecall");

    int res;
    __asm__ volatile ("mv %0, a0" : "=r" (res));
    return res;
}

char getc() {

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::GET_C));

    __asm__ volatile("ecall");

    char res;
    __asm__ volatile ("mv %0, a0" : "=r" (res));
    return res;

}

void putc(char c) {

    __asm__ volatile("mv a1, %0" : : "r" (c));

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::PUT_C));

    __asm__ volatile("ecall");
}
