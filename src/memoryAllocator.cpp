//
// Created by os on 8/3/24.
//

#include "../h/memoryAllocator.hpp"
#include "../h/print.hpp"

size_t roundUpDiv(size_t numerator, size_t denominator) {
	return (numerator + denominator - 1) / denominator;
}

memoryAllocator::FreeMem* memoryAllocator::fmem_head = nullptr;

void memoryAllocator::start(){

	FreeMem* fm = (FreeMem*)(HEAP_START_ADDR);
	fm->next = nullptr;
	fm->prev = nullptr;
	fm->size = ((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE;
	fmem_head = fm;

}

void* memoryAllocator::allocate(size_t blocks){

	for(FreeMem* cur= fmem_head;cur!=nullptr;cur=cur->next){

		if(cur->size < blocks)continue;
		//Found!

		//ako je uzet ceo fragment slobodne
		if(cur-> size - blocks == 0){
			if(cur->prev) cur->prev->next = cur->next;
			else fmem_head = cur -> next;
			if(cur->next) cur->next->prev = cur->prev;

		}
		else{


			FreeMem* newfrgm = (FreeMem*)((char*)cur+MEM_BLOCK_SIZE * blocks);


			if(cur->prev) cur->prev->next = newfrgm;
			else fmem_head = newfrgm;

			if(cur->next) cur->next->prev = newfrgm;

			newfrgm-> prev = cur->prev;
			newfrgm->next = cur->next;
			newfrgm-> size = cur -> size - blocks;


		}



		uint32* header = (uint32*)cur;
		*header = blocks;

		return (void*)(header + 1);
	}
	return nullptr;
}

int memoryAllocator::deallocate(void* ptr) {
    if(!ptr) return -21;

    FreeMem* blockToFree = (FreeMem*)((char*)ptr - sizeof(uint32));
    blockToFree->size = *((uint32*)blockToFree);

    FreeMem* cur = fmem_head;
    FreeMem* prev = nullptr;

    while(cur && cur < blockToFree) {

        prev = cur;
        cur = cur->next;
    }

    blockToFree->next = cur;
    blockToFree->prev = prev;


    if(prev) {
        prev->next = blockToFree;
    } else {
        fmem_head = blockToFree;
    }

    if(cur) {
        cur->prev = blockToFree;
    }

    if(prev && (char*)prev + prev->size * MEM_BLOCK_SIZE == (char*)blockToFree) {
        prev->size += blockToFree->size;
        prev->next = blockToFree->next;
        if(blockToFree->next) {
            blockToFree->next->prev = prev;
        }
        blockToFree = prev;
    }


    if(cur && (char*)blockToFree + blockToFree->size * MEM_BLOCK_SIZE == (char*)cur) {
        blockToFree->size += cur->size;
        blockToFree->next = cur->next;
        if(cur->next) {
            cur->next->prev = blockToFree;
        }
    }

    return 0;
}


