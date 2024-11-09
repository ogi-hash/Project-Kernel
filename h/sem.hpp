//
// Created by os on 8/21/24.
//

#ifndef SEM_HPP
#define SEM_HPP

#include "../h/list.hpp"
#include "../h/tcb.hpp"




class sem {

public:

    static sem* sem_open( unsigned init);

    int sem_close ();

    int sem_wait ();

    int sem_signal ();

    int sem_trywait();

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

    void setClosed(bool value) { closed = value; }

    bool isClosed() const { return closed; }

private:
    int val;
    bool closed;
    List<TCB> blocked;

};



#endif //SEM_HPP
