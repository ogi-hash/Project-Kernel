//
// Created by os on 9/8/24.
//

#include "THREAD_JOIN_TEST.hpp"

#include "../h/syscall_cpp.hpp"

#include "printing.hpp"

static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

Thread* threads[2];


class A: public Thread {
    void BodyA1(void* arg);

public:
    static int bra;

    A():Thread() {}

    void run() override {
        BodyA1(nullptr);
    }
};

class B: public Thread {
    void BodyB1(void* arg);

public:
    static int brb;

    B():Thread() {}

    void run() override {
        BodyB1(nullptr);
    }
};

class C: public Thread {
    void BodyC1(void* arg);

public:
    static int brc;

    C():Thread() {}

    void run() override {
        BodyC1(nullptr);
    }
};




void A::BodyA1(void *arg) {

    for (uint64 i = 0; i < 10; i++)
    {
        printString("A: i=");
        printInt(i);
        printString("\n");

        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++)
            {
                /* busy wait */
            }

            thread_dispatch();
        }
    }

    printString("A finished!\n");
    finishedA = true;

}

void B::BodyB1(void *arg) {

    for (uint64 i = 0; i < 16; i++)
    {
        printString("B: i=");
        printInt(i);
        printString("\n");

        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++)
            {
                /* busy wait */
            }

            thread_dispatch();
        }
    }

    printString("B finished!\n");
    finishedB = true;
    thread_dispatch();

}

void C::BodyC1(void *arg) {


}




void join_thread() {


    threads[0] = new A();
    printString("ThreadA created\n");

    threads[1] = new B();
    printString("ThreadB created\n");

    for(int i=0; i<2; i++) {
        threads[i]->start();
    }

    printString("Cekam A\n");
    threads[0]->join();
    printString("Cekam B\n");
    threads[1]->join();


}