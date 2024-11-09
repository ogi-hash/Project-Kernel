//
// Created by Andrija
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/scheduler.hpp"
#include "../h/syscall_codes.h"
#include "../h/print.hpp"


TCB* TCB::running = nullptr;

int TCB::id = 0;

int TCB:: max=0;

int TCB::active = 2;

List<TCB> TCB::capacity;

TCB::TCB(Body start_routine, void* arg, void*stack_space):
    barrier(new Barrier(1, this)),
    start_routine(start_routine),
    arg(arg),
    stack_space(start_routine != nullptr ? stack_space:nullptr),
    context({(uint64) &threadWrapper,
            stack_space != nullptr ? (uint64) stack_space + STACK_SIZE : 0}),
    finished(false),
    blocked(false),
    suspended(false),
    barriered(false),
    myID(id++)
{

}

TCB* TCB::thread_create(Body start_routine, void* arg, void* stack_space){

    TCB* newThread = new TCB(start_routine, arg, stack_space);

    return newThread;
}

void TCB::yield()
{
    __asm__ volatile("mv a0, %0" : : "r"(SyscallCodes::THREAD_DISPATCH));

    __asm__ volatile("ecall");
}

void TCB::thread_dispatch()
{
    TCB *old = running;
    if (!old->isFinished() && !old->isBlocked() && !old->isSuspended() && !old->isBarriered()) {
        Scheduler::put(old);
    }

    if(old->isFinished()) {
        TCB::setActive(TCB::getActive()-1);
        if(TCB::getActive()<TCB::getMax() && capacity.peekFirst()) {
            Scheduler::put(TCB::capacity.removeFirst());
        }

    }
    running = Scheduler::get();


    TCB::contextSwitch(&old->context, &running->context);
}

int TCB::thread_exit(){

    running->setFinished(true);

    memoryAllocator::deallocate(TCB::running->stack_space);
    memoryAllocator::deallocate(TCB::running);

    TCB::thread_dispatch();

    return 0;


}

int TCB::getThreadId() {

    int id = running->getMyID();

    return id;
}

void TCB::thread_join(TCB* handle) {

    if(!handle->isFinished()) {
        handle->suspendedList.addLast(running);

        running->setSuspended(true);

        TCB::thread_dispatch();
    }
}

void TCB::relise() {
    while(this->suspendedList.peekFirst()) {
        TCB* un = suspendedList.removeFirst();
        un->setSuspended(false);
        Scheduler::put(un);
    }
}

void TCB::threadWrapper() {


    Riscv::popSppSpie();
    running->start_routine(running->arg);
    running->setFinished(true);

    // relise suspended threads from join
    running->relise();

    memoryAllocator::deallocate(TCB::running->stack_space);
    memoryAllocator::deallocate(TCB::running);
    TCB::yield();

}

void Barrier::open() {
    key = 1; if(owner->isBarriered()) {
        owner->setBarriered(false);
        Scheduler::put(owner);
    }
}