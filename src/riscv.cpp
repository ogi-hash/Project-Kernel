//
// Created by os on 8/3/24.
//

#include "../h/riscv.hpp"
#include "../h/syscall_codes.h"
#include "../h/memoryAllocator.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/sem.hpp"
#include "../h/scheduler.hpp"

void Riscv::popSppSpie()
{
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");

}

void Riscv::handleSupervisorTrap(){

    uint64 volatile scause = r_scause();
    uint64 volatile sepc = r_sepc() + 4;
    uint64 volatile sstatus = r_sstatus();


    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){
        uint64 syscall_code;

        __asm__ volatile("mv %0, a0" : "=r"(syscall_code));

        //MEMORY_ALLOCATOR
        //MEM_ALLOC
        if(syscall_code == SyscallCodes::MEM_ALLOC)
        {
            uint64 blocks;

            __asm__ volatile("mv %0, a1" : "=r"(blocks));

            void* allocated_mem = memoryAllocator::allocate(blocks);

            __asm__ volatile("sd %0, 80(x8)": : "r"(allocated_mem));

        }
        //MEM_FREE
        else if(syscall_code == SyscallCodes::MEM_FREE)
        {
            uint64 ptr;

            __asm__ volatile("mv %0, a1" : "=r" (ptr));

            int code = memoryAllocator::deallocate((void*)ptr);

            __asm__ volatile("sd %0, 80(x8)": : "r" (code));
        }
        //THREAD CONTROL BLOCK
        //THREAD_CREATE
        else if(syscall_code == SyscallCodes::THREAD_CREATE)
        {
            TCB** handle;
            void (*start_routine)(void*);
            void* arg;
            void* stack_space;

            __asm__ volatile("ld %0, 88(x8)" : "=r" (handle));
            __asm__ volatile("ld %0, 96(x8)" : "=r" (start_routine));
            __asm__ volatile("ld %0, 104(x8)" : "=r" (arg));
            __asm__ volatile("ld %0, 112(x8)" : "=r" (stack_space));

            *handle = TCB::thread_create(start_routine, arg, stack_space);
            if (start_routine != nullptr) { Scheduler::put(*handle); }

            __asm__ volatile("sd %0, 80(x8)" : : "r"(0));

        }
        //THREAD_CREATE_BUT_NO_START
        else if(syscall_code == SyscallCodes::THREAD_CREATE_BUT_NO_START)
        {
            TCB** handle;
            void (*start_routine)(void*);
            void* arg;
            void* stack_space;

            __asm__ volatile("ld %0, 88(x8)" : "=r" (handle));
            __asm__ volatile("ld %0, 96(x8)" : "=r" (start_routine));
            __asm__ volatile("ld %0, 104(x8)" : "=r" (arg));
            __asm__ volatile("ld %0, 112(x8)" : "=r" (stack_space));

            *handle = TCB::thread_create(start_routine, arg, stack_space);


            __asm__ volatile("sd %0, 80(x8)" : : "r"(0));

        }
        //THREAD_START
        else if(syscall_code == SyscallCodes::THREAD_START)
        {
            TCB* handle;

            __asm__ volatile("mv %0, a1" : "=r" (handle));

            if(TCB::getActive()>=TCB::getMax()) {
                TCB::capacity.addLast(handle);
            }
            else{
                printString1("pustio jednu\n");
                TCB::setActive(TCB::getActive()+1);
                Scheduler::put(handle);
            }
        }
        //THREAD_DISPATCH
        else if(syscall_code == SyscallCodes::THREAD_DISPATCH) {

            TCB::thread_dispatch();

        }
        //THREAD_EXIT
        else if(syscall_code == SyscallCodes::THREAD_EXIT) {

            int res = TCB::thread_exit();

            __asm__ volatile("sd %0, 80(x8)" : : "r"(res));

        }
        //THREAD_GET_ID
        else if(syscall_code == SyscallCodes::THREAD_GET_ID) {

            int res = TCB::getThreadId();

            __asm__ volatile("sd %0, 80(x8)" : : "r"(res));

            TCB::thread_dispatch();

        }
        //THREAD_SET_MAX
        else if(syscall_code == SyscallCodes::THREAD_SET_MAX) {
            int max;

            __asm__ volatile("mv %0, a1" : "=r" (max));

            TCB::SetMaximumThreads(max);


        }
        //THREAD_JOIN
        else if(syscall_code == SyscallCodes::THREAD_JOIN) {
            TCB* handle;

            __asm__ volatile("mv %0, a1" : "=r" (handle));

            TCB::thread_join(handle);

        }
        //BARRIER_OPEN
        else if(syscall_code == SyscallCodes::BARRIER_OPEN) {
            TCB* handle;

            __asm__ volatile("mv %0, a1" : "=r" (handle));

            handle->barrier->open();

        }
        //BARRIER_PASS
        else if(syscall_code == SyscallCodes::BARRIER_PASS) {
            TCB* handle;

            __asm__ volatile("mv %0, a1" : "=r" (handle));

            handle->barrier->pass();

        }
        //BARRIER_CLOSE
        else if(syscall_code == SyscallCodes::BARRIER_CLOSE) {
            TCB* handle;

            __asm__ volatile("mv %0, a1" : "=r" (handle));

            handle->barrier->close();

        }
        //SEMAPHORE
        //SEM_OPEN
        else if(syscall_code == SyscallCodes::SEM_OPEN) {

            sem** handle;
            unsigned init;

            __asm__ volatile("mv %0, a1" : "=r" (handle));
            __asm__ volatile("mv %0, a2" : "=r" (init));


            *handle = sem::sem_open(init);

            __asm__ volatile("sd %0, 80(x8)" : : "r"(0));
        }
        //SEM_CLOSE
        else if(syscall_code == SyscallCodes::SEM_CLOSE) {

            sem* handle;

            __asm__ volatile("mv %0, a1" : "=r" (handle));

            int res = handle->sem_close();

            __asm__ volatile("sd %0, 80(x8)" : : "r"(res));
        }
        //SEM_WAIT
        else if(syscall_code== SyscallCodes::SEM_WAIT) {

            sem* id;

            __asm__ volatile("mv %0, a1" : "=r" (id));

            int res = id->sem_wait();

            __asm__ volatile("sd %0, 80(x8)" : : "r"(res));

        }
        //SEM_SIGNAL
        else if(syscall_code== SyscallCodes::SEM_SIGNAL) {

            sem* id;

            __asm__ volatile("mv %0, a1" : "=r" (id));

            int res = id->sem_signal();

            __asm__ volatile("sd %0, 80(x8)" : : "r"(res));

        }
        //SEM_TRYWAIT
        else if(syscall_code== SyscallCodes::SEM_TRYWAIT) {

            sem* id;

            __asm__ volatile("mv %0, a1" : "=r" (id));

            int res = id->sem_trywait();

            __asm__ volatile("sd %0, 80(x8)" : : "r"(res));

        }
        //
        //GET_C
        else if(syscall_code == SyscallCodes::GET_C) {

            char c;

            c = __getc();

            __asm__ volatile("sd %0, 80(x8)" : : "r"(c));

        }
        else if(syscall_code == SyscallCodes::PUT_C) {

            char c;

            __asm__ volatile("mv %0, a1" : "=r" (c));

            __putc(c);

        }

        w_sstatus(sstatus);
        w_sepc(sepc);

    }
    else if(scause == 0x8000000000000001UL)
    {
        mc_sip(SIP_SSIE);
    }
    else if (scause == 0x8000000000000009UL)
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    }
    else
    {
        printInteger1(scause);
    }

}