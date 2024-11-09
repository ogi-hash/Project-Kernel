//
// Created by os on 8/3/24.
//

#include "../h/scheduler.hpp"
#include "../h/print.hpp"
#include "../test/printing.hpp"

List<TCB> Scheduler::readyCoroutineQueue;

int Scheduler::threadcnt =0;

TCB *Scheduler::get()
{

    threadcnt= threadcnt-1;

    return readyCoroutineQueue.removeFirst();
}

void Scheduler::put(TCB *tcb)
{

    threadcnt= threadcnt+1;

    readyCoroutineQueue.addLast(tcb);
}