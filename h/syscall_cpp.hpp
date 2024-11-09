#ifndef _syscall_cpp
#define _syscall_cpp

#include "syscall_c.hpp"

void* operator new (size_t);
void operator delete (void*) noexcept;

class Thread {
public:
    Thread (void(*body)(void*), void* arg);
    virtual ~Thread();

    int start();

    void join();

    static void dispatch();
    static int sleep(time_t){return 0;};

    static int getId();
    static void setMax(int max);

    void open();
    void pass();
    void close();

protected:
    Thread();
    virtual void run(){};
    static void runWrapper(void *torun);

private:
    thread_t myHandle;
    void (*body)(void*);
    void* arg;
};

class Semaphore {

public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore();

    int wait();
    int signal();
    int timedWait (time_t){return 0;};
    int tryWait();

private:
    sem_t myHandle;
};

class Console {
    public:
    static char getc();
    static void putc(char);
};

#endif