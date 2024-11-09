//
// Created by os on 8/3/24.
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_LIST_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_LIST_HPP

#include "memoryAllocator.hpp"
#include "print.hpp"

template<typename T>
class List
{
public:
    struct Elem
    {
        T *data;
        Elem *next;

        Elem(T *data, Elem *next) : data(data), next(next) {}

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

    };

    Elem *head, *tail;


    List() : head(0), tail(0) {}

    List(const List<T> &) = delete;

    List<T> &operator=(const List<T> &) = delete;

    Elem* getHead() {

        return head;

    }

    void addFirst(T *data)
    {
        Elem *elem = new Elem(data, head);
        head = elem;
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {

        Elem *elem = new Elem(data, 0);


        if (tail) {
            tail->next = elem;

            tail = elem;
        } else {
            head = tail = elem;

        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }

        T *ret = elem->data;
        delete elem;
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
        return head->data;
    }

    T *removeLast()
    {
        if (!head) { return 0; }

        Elem *prev = 0;
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
        {
            prev = curr;
        }

        Elem *elem = tail;
        if (prev) { prev->next = 0; }
        else { head = 0; }
        tail = prev;

        T *ret = elem->data;
        delete elem;
        return ret;
    }

    T *peekLast()
    {
        if (!tail) { return 0; }
        return tail->data;
    }
};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_LIST_HPP