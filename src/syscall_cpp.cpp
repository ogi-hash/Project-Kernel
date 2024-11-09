//
// Created by os on 8/8/24.
//

#include "../h/syscall_cpp.hpp"

#include "../h/scheduler.hpp"
#include "../h/syscall_codes.h"


Thread::Thread (void (*body)(void*), void* arg) {
	this->arg=arg;
	this->body=body;
	thread_create(&this->myHandle, body, arg);
}

Thread::~Thread(){

	delete myHandle;

}

int Thread::start() {
	thread_start(myHandle);
	return 0;
}

Thread::Thread() {
	this->body = runWrapper;
	this->arg = nullptr;
	thread_create_but_dont_start(&this->myHandle, runWrapper, this);
}

void Thread::runWrapper(void *torun) {
	((Thread*)torun)->run();
}

void Thread::dispatch() {
	thread_dispatch();
}

int Thread::getId() {
	return getThreadId();
}

void Thread::setMax(int max){
	setMaxThreads(max);
}

void Thread::join() {
	thread_join(myHandle);
}

void Thread::open() {
	barrier_open(myHandle);
}

void Thread::pass() {
	barrier_pass(myHandle);
}

void Thread::close() {
	barrier_close(myHandle);
}


Semaphore::Semaphore(unsigned init) {
	sem_open(&this->myHandle, init);
}

Semaphore::~Semaphore() {

	delete myHandle;

}


int Semaphore::wait() {
	return sem_wait(myHandle);
}
int Semaphore::signal() {
	return sem_signal(myHandle);
}
int Semaphore::tryWait() {
	return sem_trywait(myHandle);
}

char Console::getc () {
	__asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::GET_C));

	__asm__ volatile("ecall");

	char res;
	__asm__ volatile ("mv %0, a0" : "=r" (res));
	return res;
}

void Console::putc(char c) {
	__asm__ volatile("mv a1, %0" : : "r" (c));

	__asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::PUT_C));

	__asm__ volatile("ecall");
}

