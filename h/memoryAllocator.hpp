//
// Created by os on 8/3/24.
//

#ifndef MEMORYALLOCATOR_HPP
#define MEMORYALLOCATOR_HPP

#include "../lib/hw.h"

class memoryAllocator {

public:
    memoryAllocator();
    ~memoryAllocator() = default;

    static void start();
    static void* allocate(size_t blocks);
    static int deallocate(void* ptr);

private:


    //Blokovi u listi slobodnih blokova
    struct FreeMem{
        size_t size;
        FreeMem* next;
        FreeMem* prev;
    };

    static FreeMem* fmem_head;

};



#endif //MEMORYALLOCATOR_HPP
