//
// Created by os on 8/13/24.
//

#ifndef SYSCALL_CODES_H
#define SYSCALL_CODES_H

enum SyscallCodes {
    MEM_ALLOC = 0x01,
    MEM_FREE = 0x02,
    THREAD_CREATE = 0x11,
    THREAD_EXIT = 0x12,
    THREAD_DISPATCH = 0x13,
    SEM_OPEN = 0x21,
    SEM_CLOSE = 0x22,
    SEM_WAIT = 0x23,
    SEM_SIGNAL = 0x24,
    SEM_TRYWAIT = 0x26,
    GET_C= 0x41,
    PUT_C= 0x42,
    THREAD_CREATE_BUT_NO_START = 0x10,
    THREAD_START = 0x14,
    THREAD_GET_ID = 0x15,
    THREAD_SET_MAX = 0x16,
    THREAD_JOIN = 0x17,
    BARRIER_OPEN = 0x18,
    BARRIER_PASS = 0x19,
    BARRIER_CLOSE = 0x20
};

#endif //SYSCALL_CODES_H
