#include "../lib/hw.h"
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/riscv.hpp"
#include "../h/scheduler.hpp"

void userMain();

void mainWrapper(void* arg) {

    userMain();

    printString1("userMain je gotov\n");

}

int main(){

    memoryAllocator::start();

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    TCB* main_thread = nullptr;

    thread_create(&main_thread, nullptr, nullptr);

    TCB::running = main_thread;

    TCB::SetMaximumThreads(10);

    TCB* threadHandle1 = nullptr;


    thread_create(&threadHandle1, mainWrapper, nullptr);



    printString1("Thread created successfully.\n");

    while(!threadHandle1->isFinished()) {
        thread_dispatch();
    }

    // Glavna nit se vraća nakon što se sve niti završe
    printString1("Main thread finished.\n");



    return 0;
}