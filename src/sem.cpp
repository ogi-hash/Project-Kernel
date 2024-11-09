//
// Created by os on 8/23/24.
//
#include "../h/sem.hpp"
#include "../h/tcb.hpp"
#include "../h/scheduler.hpp"
#include "../h/list.hpp"


sem* sem::sem_open(unsigned init) {
    sem* newSem = new sem();

    newSem->val = init;
    newSem->setClosed(false);

    return newSem;

}

int sem::sem_close(){

    if(isClosed()) {
        return -1;
    }

    setClosed( true);

    while(blocked.peekFirst()) {

        TCB* unblocked = blocked.removeFirst();
        unblocked->setBlocked(false);
        Scheduler::put(unblocked);

    }

    return 0;

}

int sem::sem_wait() {

    if(isClosed()) {
        return -1;
    }

    if (--val < 0) {

        TCB::running->setBlocked(true);
        blocked.addLast(TCB::running);
        TCB::thread_dispatch();
    }

    if(isClosed()) {
        return -1;
    }

    return 0;
}

int sem::sem_signal() {

    if(isClosed()) {
        return -1;
    }

    if (++val <= 0) {

        TCB* unblocked = blocked.removeFirst();
        unblocked->setBlocked(false);
        Scheduler::put(unblocked);

    }

    return 0;
}

int sem::sem_trywait(){

    if(isClosed()) {
        return -1;
    }

    if(val>0){
        val--;

        if(val==0) {
            return 0;
        }

        return 1;
    }

    //semafor je zauzet

    return -1;


}