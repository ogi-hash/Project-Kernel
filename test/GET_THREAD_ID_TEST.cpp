//
// Created by os on 9/5/24.
//

#include "GET_THREAD_ID_TEST.hpp"

#include "../h/syscall_cpp.hpp"

#include "printing.hpp"

static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;




class A: public Thread {
    void BodyA(void* arg);

public:
    static int bra;

    A():Thread() {}

    void run() override {
        BodyA(nullptr);
    }
};

class B: public Thread {
    void BodyB(void* arg);

public:
    static int brb;

    B():Thread() {}

    void run() override {
        BodyB(nullptr);
    }
};

class C: public Thread {
    void BodyC(void* arg);

public:
    static int brc;

    C():Thread() {}

    void run() override {
        BodyC(nullptr);
    }
};

int A::bra=0;
int B::brb=0;
int C::brc=0;


void A::BodyA(void *arg) {

  int id= getId();

    printString("poceo ");

  int br = bra++;
  for(int i = 0; i<3; i++) {
    printString("A");
    printInt(br);
    printString("\n");
    printInt(id);
    printString("\n");
    dispatch();

  }

}

void B::BodyB(void *arg) {

    int id= getId();

    printString("poceo ");

    int br = brb++;
    for(int i = 0; i<3; i++) {
        printString("B");
        printInt(br);
        printString("\n");
        printInt(id);
        printString("\n");
        dispatch();
    }
}

void C::BodyC(void *arg) {



    int id= getId();

    printString("poceo ");

    int br = brc++;
    for(int i = 0; i<3; i++) {
        printString("C");
        printInt(br);
        printString("\n");
        printInt(id);
        printString("\n");
        dispatch();
    }
}




void get_thread_id() {



    Thread* threads[30];
    for(int i=0; i<30; i=i+3){
        threads[i] = new A();
        printString("ThreadA created\n");

        threads[i+1] = new B();
        printString("ThreadB created\n");

        threads[i+2] = new C();
        printString("ThreadC created\n");
    }


    for(int i=0; i<30; i++) {
        threads[i]->start();
    }

    while (!(A::bra==10 && B::brb==10 && C::brc==10)) {
        Thread::dispatch();
    }

    for (auto thread: threads) { delete thread; }
}