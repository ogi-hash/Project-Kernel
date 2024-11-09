//
// Created by os on 8/3/24.
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_TCB_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_TCB_HPP

#include "../lib/hw.h"
#include "memoryAllocator.hpp"
#include "list.hpp"


class Barrier;

// Thread Control Block
class TCB
{
public:
    ~TCB() {}

    Barrier* barrier;

    static void thread_join(TCB* handle);

    static int id;

    static int active;

    static int max;

    static int getThreadId();

    static List<TCB> capacity;

    bool isFinished() const { return finished; }

    bool isBlocked() const { return blocked; }

    bool isSuspended() const { return suspended; }

    bool isBarriered() const { return barriered; }

    void setFinished(bool value) { finished = value; }

    void setBlocked(bool value) { blocked = value; }

    void setSuspended(bool value) { suspended = value; }

    void setBarriered(bool value) { barriered = value; }

    int getMyID() const { return myID; }

    static int getMax() { return max; }

    static void SetMaximumThreads(int num_of_threads){ max = num_of_threads; };

    static int getActive() { return active; }

    static void setActive(int value) { active = value; }

    using Body = void (*)(void*);

    static TCB* thread_create(Body start_routine, void* arg, void* stack_space);

    static void yield();

	static int thread_exit();

    static TCB *running;

    static void thread_dispatch();

    void* operator new(size_t size) {
        size_t blocks = (size + sizeof(size_t))/ MEM_BLOCK_SIZE;

        if(size + sizeof(size_t) - blocks * MEM_BLOCK_SIZE > 0){
            blocks++;
        }
        return memoryAllocator::allocate(blocks);
    }
    void* operator new[](size_t size) {
        size_t blocks = (size + sizeof(size_t))/ MEM_BLOCK_SIZE;

        if(size + sizeof(size_t) - blocks * MEM_BLOCK_SIZE > 0){
            blocks++;
        }
        return memoryAllocator::allocate(blocks);
    }

    void operator delete(void *ptr) {
        memoryAllocator::deallocate(ptr);
    }
    void operator delete[](void *ptr) {
        memoryAllocator::deallocate(ptr);
    }

private:
    explicit TCB(Body body, void* arg, void* stack_space);

    Body start_routine;
    void* arg;
    void* stack_space;

    struct Context
    {
        uint64 ra; //return address
        uint64 sp; // stack pointer
    };

    Context context;
    bool finished;
    bool blocked;
    bool suspended;
    bool barriered;
    int myID;

    List<TCB> suspendedList;


    static void threadWrapper();

    static void contextSwitch(Context* oldContext, Context* newContext);

    void relise();

    static uint64 constexpr STACK_SIZE = DEFAULT_STACK_SIZE;
};

class Barrier {
public:
    Barrier (int open, TCB* owner){ key = open; owner = owner;};
    void open();
    void close() {
        key = 0;
    };
    void pass() {
        if(owner->running==owner) {
            if(key==0) {
                owner->setBarriered(true);
                owner->thread_dispatch();
            }
            else {
                // nit nastavlja izvrsavanje
            }
        }
        else {
            // nit nije vlasnik barijere
        }
    };

    TCB* owner;
private:
    int key;

};



#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_TCB_HPP
