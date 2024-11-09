
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	7e013103          	ld	sp,2016(sp) # 8000b7e0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	434060ef          	jal	ra,80006450 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.type __ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:

    //push registers

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09213823          	sd	s2,144(sp)
    8000104c:	09313c23          	sd	s3,152(sp)
    80001050:	0b413023          	sd	s4,160(sp)
    80001054:	0b513423          	sd	s5,168(sp)
    80001058:	0b613823          	sd	s6,176(sp)
    8000105c:	0b713c23          	sd	s7,184(sp)
    80001060:	0d813023          	sd	s8,192(sp)
    80001064:	0d913423          	sd	s9,200(sp)
    80001068:	0da13823          	sd	s10,208(sp)
    8000106c:	0db13c23          	sd	s11,216(sp)
    80001070:	0fc13023          	sd	t3,224(sp)
    80001074:	0fd13423          	sd	t4,232(sp)
    80001078:	0fe13823          	sd	t5,240(sp)
    8000107c:	0ff13c23          	sd	t6,248(sp)


    call _ZN5Riscv20handleSupervisorTrapEv
    80001080:	33c010ef          	jal	ra,800023bc <_ZN5Riscv20handleSupervisorTrapEv>

    // pop registers

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001084:	00013003          	ld	zero,0(sp)
    80001088:	00813083          	ld	ra,8(sp)
    8000108c:	01013103          	ld	sp,16(sp)
    80001090:	01813183          	ld	gp,24(sp)
    80001094:	02013203          	ld	tp,32(sp)
    80001098:	02813283          	ld	t0,40(sp)
    8000109c:	03013303          	ld	t1,48(sp)
    800010a0:	03813383          	ld	t2,56(sp)
    800010a4:	04013403          	ld	s0,64(sp)
    800010a8:	04813483          	ld	s1,72(sp)
    800010ac:	05013503          	ld	a0,80(sp)
    800010b0:	05813583          	ld	a1,88(sp)
    800010b4:	06013603          	ld	a2,96(sp)
    800010b8:	06813683          	ld	a3,104(sp)
    800010bc:	07013703          	ld	a4,112(sp)
    800010c0:	07813783          	ld	a5,120(sp)
    800010c4:	08013803          	ld	a6,128(sp)
    800010c8:	09013903          	ld	s2,144(sp)
    800010cc:	09813983          	ld	s3,152(sp)
    800010d0:	0a013a03          	ld	s4,160(sp)
    800010d4:	0a813a83          	ld	s5,168(sp)
    800010d8:	0b013b03          	ld	s6,176(sp)
    800010dc:	0b813b83          	ld	s7,184(sp)
    800010e0:	0c013c03          	ld	s8,192(sp)
    800010e4:	0c813c83          	ld	s9,200(sp)
    800010e8:	0d013d03          	ld	s10,208(sp)
    800010ec:	0d813d83          	ld	s11,216(sp)
    800010f0:	0e013e03          	ld	t3,224(sp)
    800010f4:	0e813e83          	ld	t4,232(sp)
    800010f8:	0f013f03          	ld	t5,240(sp)
    800010fc:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001100:	10010113          	addi	sp,sp,256

    80001104:	10200073          	sret
	...

0000000080001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    ret
    80001120:	00008067          	ret

0000000080001124 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001124:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001128:	00b29a63          	bne	t0,a1,8000113c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000112c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001130:	fe029ae3          	bnez	t0,80001124 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001134:	00000513          	li	a0,0
    jr ra                  # Return.
    80001138:	00008067          	ret

000000008000113c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000113c:	00100513          	li	a0,1
    80001140:	00008067          	ret

0000000080001144 <_Z9mem_allocm>:
#include "../lib/hw.h"
#include "../h/syscall_codes.h"


// mem_alloc i mem_free implementacija
void* mem_alloc(size_t size){
    80001144:	ff010113          	addi	sp,sp,-16
    80001148:	00813423          	sd	s0,8(sp)
    8000114c:	01010413          	addi	s0,sp,16
    size_t blocks = (size + sizeof(size_t))/ MEM_BLOCK_SIZE;
    80001150:	00850793          	addi	a5,a0,8
    80001154:	0067d713          	srli	a4,a5,0x6

    if(size + sizeof(size_t) - blocks * MEM_BLOCK_SIZE > 0){
    80001158:	fc07f793          	andi	a5,a5,-64
    8000115c:	40f50533          	sub	a0,a0,a5
    80001160:	ff800793          	li	a5,-8
    80001164:	00f50463          	beq	a0,a5,8000116c <_Z9mem_allocm+0x28>
        blocks++;
    80001168:	00170713          	addi	a4,a4,1
    }

    __asm__ volatile("mv a1, %0" : : "r" (blocks));
    8000116c:	00070593          	mv	a1,a4

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::MEM_ALLOC));
    80001170:	00100793          	li	a5,1
    80001174:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001178:	00000073          	ecall

    void *res;
    __asm__ volatile ("mv %0, a0" : "=r" (res));
    8000117c:	00050513          	mv	a0,a0
    return res;
}
    80001180:	00813403          	ld	s0,8(sp)
    80001184:	01010113          	addi	sp,sp,16
    80001188:	00008067          	ret

000000008000118c <_Z8mem_freePv>:

int mem_free(void* ptr){
    8000118c:	ff010113          	addi	sp,sp,-16
    80001190:	00813423          	sd	s0,8(sp)
    80001194:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1, %0": : "r" (ptr));
    80001198:	00050593          	mv	a1,a0

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::MEM_FREE));
    8000119c:	00200793          	li	a5,2
    800011a0:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800011a4:	00000073          	ecall

    int res;
    __asm__ volatile("mv %0, a0" : "=r" (res));
    800011a8:	00050513          	mv	a0,a0
    return res;

}
    800011ac:	0005051b          	sext.w	a0,a0
    800011b0:	00813403          	ld	s0,8(sp)
    800011b4:	01010113          	addi	sp,sp,16
    800011b8:	00008067          	ret

00000000800011bc <_Z13thread_createPP3TCBPFvPvES2_>:
// THREAD f-je
int thread_create (thread_t* handle, void(*start_routine)(void*) , void* arg ) {
    800011bc:	fc010113          	addi	sp,sp,-64
    800011c0:	02113c23          	sd	ra,56(sp)
    800011c4:	02813823          	sd	s0,48(sp)
    800011c8:	02913423          	sd	s1,40(sp)
    800011cc:	03213023          	sd	s2,32(sp)
    800011d0:	01313c23          	sd	s3,24(sp)
    800011d4:	04010413          	addi	s0,sp,64
    800011d8:	00050493          	mv	s1,a0
    800011dc:	00058913          	mv	s2,a1
    800011e0:	00060993          	mv	s3,a2

    // Alociranje mem za stek
    void* volatile stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800011e4:	00001537          	lui	a0,0x1
    800011e8:	00000097          	auipc	ra,0x0
    800011ec:	f5c080e7          	jalr	-164(ra) # 80001144 <_Z9mem_allocm>
    800011f0:	fca43423          	sd	a0,-56(s0)
    // Greska pri alokaciji steka
    if(!stack_space) {
    800011f4:	fc843783          	ld	a5,-56(s0)
    800011f8:	06078263          	beqz	a5,8000125c <_Z13thread_createPP3TCBPFvPvES2_+0xa0>
        return -1;
    }

    __asm__ volatile("mv a4, %0" : : "r" (stack_space));
    800011fc:	fc843783          	ld	a5,-56(s0)
    80001200:	00078713          	mv	a4,a5

    __asm__ volatile("mv a3, %0" : : "r" (arg));
    80001204:	00098693          	mv	a3,s3

    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    80001208:	00090613          	mv	a2,s2

    __asm__ volatile("mv a1, %0" : : "r" (handle));
    8000120c:	00048593          	mv	a1,s1

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::THREAD_CREATE));
    80001210:	01100793          	li	a5,17
    80001214:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001218:	00000073          	ecall


    int res;
    __asm__ volatile ("mv %0, a0" : "=r" (res));
    8000121c:	00050493          	mv	s1,a0
    80001220:	0004849b          	sext.w	s1,s1

    // ako je neuspesno kreirana nit, dealociraj stek
    if(res == -1){
    80001224:	fff00793          	li	a5,-1
    80001228:	02f48263          	beq	s1,a5,8000124c <_Z13thread_createPP3TCBPFvPvES2_+0x90>
        mem_free(stack_space);
    }


    return res;
}
    8000122c:	00048513          	mv	a0,s1
    80001230:	03813083          	ld	ra,56(sp)
    80001234:	03013403          	ld	s0,48(sp)
    80001238:	02813483          	ld	s1,40(sp)
    8000123c:	02013903          	ld	s2,32(sp)
    80001240:	01813983          	ld	s3,24(sp)
    80001244:	04010113          	addi	sp,sp,64
    80001248:	00008067          	ret
        mem_free(stack_space);
    8000124c:	fc843503          	ld	a0,-56(s0)
    80001250:	00000097          	auipc	ra,0x0
    80001254:	f3c080e7          	jalr	-196(ra) # 8000118c <_Z8mem_freePv>
    80001258:	fd5ff06f          	j	8000122c <_Z13thread_createPP3TCBPFvPvES2_+0x70>
        return -1;
    8000125c:	fff00493          	li	s1,-1
    80001260:	fcdff06f          	j	8000122c <_Z13thread_createPP3TCBPFvPvES2_+0x70>

0000000080001264 <_Z28thread_create_but_dont_startPP3TCBPFvPvES2_>:

int thread_create_but_dont_start(thread_t* handle, void(*start_routine)(void*) , void* arg ) {
    80001264:	fc010113          	addi	sp,sp,-64
    80001268:	02113c23          	sd	ra,56(sp)
    8000126c:	02813823          	sd	s0,48(sp)
    80001270:	02913423          	sd	s1,40(sp)
    80001274:	03213023          	sd	s2,32(sp)
    80001278:	01313c23          	sd	s3,24(sp)
    8000127c:	04010413          	addi	s0,sp,64
    80001280:	00050493          	mv	s1,a0
    80001284:	00058913          	mv	s2,a1
    80001288:	00060993          	mv	s3,a2
    // Alociranje mem za stek
    void* volatile stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    8000128c:	00001537          	lui	a0,0x1
    80001290:	00000097          	auipc	ra,0x0
    80001294:	eb4080e7          	jalr	-332(ra) # 80001144 <_Z9mem_allocm>
    80001298:	fca43423          	sd	a0,-56(s0)
    // Greska pri alokaciji steka
    if(!stack_space) {
    8000129c:	fc843783          	ld	a5,-56(s0)
    800012a0:	06078263          	beqz	a5,80001304 <_Z28thread_create_but_dont_startPP3TCBPFvPvES2_+0xa0>
        return -1;
    }

    __asm__ volatile("mv a4, %0" : : "r" (stack_space));
    800012a4:	fc843783          	ld	a5,-56(s0)
    800012a8:	00078713          	mv	a4,a5

    __asm__ volatile("mv a3, %0" : : "r" (arg));
    800012ac:	00098693          	mv	a3,s3

    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    800012b0:	00090613          	mv	a2,s2

    __asm__ volatile("mv a1, %0" : : "r" (handle));
    800012b4:	00048593          	mv	a1,s1

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::THREAD_CREATE_BUT_NO_START));
    800012b8:	01000793          	li	a5,16
    800012bc:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800012c0:	00000073          	ecall


    int res;
    __asm__ volatile ("mv %0, a0" : "=r" (res));
    800012c4:	00050493          	mv	s1,a0
    800012c8:	0004849b          	sext.w	s1,s1

    // ako je neuspesno kreirana nit, dealociraj stek
    if(res == -1){
    800012cc:	fff00793          	li	a5,-1
    800012d0:	02f48263          	beq	s1,a5,800012f4 <_Z28thread_create_but_dont_startPP3TCBPFvPvES2_+0x90>
        mem_free(stack_space);
    }


    return res;
}
    800012d4:	00048513          	mv	a0,s1
    800012d8:	03813083          	ld	ra,56(sp)
    800012dc:	03013403          	ld	s0,48(sp)
    800012e0:	02813483          	ld	s1,40(sp)
    800012e4:	02013903          	ld	s2,32(sp)
    800012e8:	01813983          	ld	s3,24(sp)
    800012ec:	04010113          	addi	sp,sp,64
    800012f0:	00008067          	ret
        mem_free(stack_space);
    800012f4:	fc843503          	ld	a0,-56(s0)
    800012f8:	00000097          	auipc	ra,0x0
    800012fc:	e94080e7          	jalr	-364(ra) # 8000118c <_Z8mem_freePv>
    80001300:	fd5ff06f          	j	800012d4 <_Z28thread_create_but_dont_startPP3TCBPFvPvES2_+0x70>
        return -1;
    80001304:	fff00493          	li	s1,-1
    80001308:	fcdff06f          	j	800012d4 <_Z28thread_create_but_dont_startPP3TCBPFvPvES2_+0x70>

000000008000130c <_Z12thread_startP3TCB>:

void thread_start (thread_t handle){
    8000130c:	ff010113          	addi	sp,sp,-16
    80001310:	00813423          	sd	s0,8(sp)
    80001314:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1, %0" : : "r" (handle));
    80001318:	00050593          	mv	a1,a0

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::THREAD_START));
    8000131c:	01400793          	li	a5,20
    80001320:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001324:	00000073          	ecall

}
    80001328:	00813403          	ld	s0,8(sp)
    8000132c:	01010113          	addi	sp,sp,16
    80001330:	00008067          	ret

0000000080001334 <_Z15thread_dispatchv>:

void thread_dispatch() {
    80001334:	ff010113          	addi	sp,sp,-16
    80001338:	00813423          	sd	s0,8(sp)
    8000133c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::THREAD_DISPATCH));
    80001340:	01300793          	li	a5,19
    80001344:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001348:	00000073          	ecall
}
    8000134c:	00813403          	ld	s0,8(sp)
    80001350:	01010113          	addi	sp,sp,16
    80001354:	00008067          	ret

0000000080001358 <_Z11thread_exitv>:

int thread_exit() {
    80001358:	ff010113          	addi	sp,sp,-16
    8000135c:	00813423          	sd	s0,8(sp)
    80001360:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::THREAD_EXIT));
    80001364:	01200793          	li	a5,18
    80001368:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    8000136c:	00000073          	ecall

    int res;
    __asm__ volatile ("mv %0, a0" : "=r" (res));
    80001370:	00050513          	mv	a0,a0
    return res;

}
    80001374:	0005051b          	sext.w	a0,a0
    80001378:	00813403          	ld	s0,8(sp)
    8000137c:	01010113          	addi	sp,sp,16
    80001380:	00008067          	ret

0000000080001384 <_Z11getThreadIdv>:

int getThreadId() {
    80001384:	ff010113          	addi	sp,sp,-16
    80001388:	00813423          	sd	s0,8(sp)
    8000138c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::THREAD_GET_ID));
    80001390:	01500793          	li	a5,21
    80001394:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001398:	00000073          	ecall

    int res;
    __asm__ volatile ("mv %0, a0" : "=r" (res));
    8000139c:	00050513          	mv	a0,a0
    return res;
}
    800013a0:	0005051b          	sext.w	a0,a0
    800013a4:	00813403          	ld	s0,8(sp)
    800013a8:	01010113          	addi	sp,sp,16
    800013ac:	00008067          	ret

00000000800013b0 <_Z13setMaxThreadsi>:

void setMaxThreads(int max) {
    800013b0:	ff010113          	addi	sp,sp,-16
    800013b4:	00813423          	sd	s0,8(sp)
    800013b8:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1, %0" : : "r" (max));
    800013bc:	00050593          	mv	a1,a0

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::THREAD_SET_MAX));
    800013c0:	01600793          	li	a5,22
    800013c4:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800013c8:	00000073          	ecall

}
    800013cc:	00813403          	ld	s0,8(sp)
    800013d0:	01010113          	addi	sp,sp,16
    800013d4:	00008067          	ret

00000000800013d8 <_Z11thread_joinP3TCB>:

void thread_join(thread_t handle) {
    800013d8:	ff010113          	addi	sp,sp,-16
    800013dc:	00813423          	sd	s0,8(sp)
    800013e0:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1, %0" : : "r" (handle));
    800013e4:	00050593          	mv	a1,a0

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::THREAD_JOIN));
    800013e8:	01700793          	li	a5,23
    800013ec:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800013f0:	00000073          	ecall

}
    800013f4:	00813403          	ld	s0,8(sp)
    800013f8:	01010113          	addi	sp,sp,16
    800013fc:	00008067          	ret

0000000080001400 <_Z12barrier_openP3TCB>:

void barrier_open(thread_t handle) {
    80001400:	ff010113          	addi	sp,sp,-16
    80001404:	00813423          	sd	s0,8(sp)
    80001408:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1, %0" : : "r" (handle));
    8000140c:	00050593          	mv	a1,a0

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::BARRIER_OPEN));
    80001410:	01800793          	li	a5,24
    80001414:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001418:	00000073          	ecall

}
    8000141c:	00813403          	ld	s0,8(sp)
    80001420:	01010113          	addi	sp,sp,16
    80001424:	00008067          	ret

0000000080001428 <_Z13barrier_closeP3TCB>:

void barrier_close(thread_t handle) {
    80001428:	ff010113          	addi	sp,sp,-16
    8000142c:	00813423          	sd	s0,8(sp)
    80001430:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1, %0" : : "r" (handle));
    80001434:	00050593          	mv	a1,a0

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::BARRIER_CLOSE));
    80001438:	02000793          	li	a5,32
    8000143c:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001440:	00000073          	ecall

}
    80001444:	00813403          	ld	s0,8(sp)
    80001448:	01010113          	addi	sp,sp,16
    8000144c:	00008067          	ret

0000000080001450 <_Z12barrier_passP3TCB>:

void barrier_pass(thread_t handle) {
    80001450:	ff010113          	addi	sp,sp,-16
    80001454:	00813423          	sd	s0,8(sp)
    80001458:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1, %0" : : "r" (handle));
    8000145c:	00050593          	mv	a1,a0

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::BARRIER_PASS));
    80001460:	01900793          	li	a5,25
    80001464:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001468:	00000073          	ecall

}
    8000146c:	00813403          	ld	s0,8(sp)
    80001470:	01010113          	addi	sp,sp,16
    80001474:	00008067          	ret

0000000080001478 <_Z8sem_openPP3semj>:


int sem_open(sem_t* handle, unsigned init) {
    80001478:	ff010113          	addi	sp,sp,-16
    8000147c:	00813423          	sd	s0,8(sp)
    80001480:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a2, %0" : : "r" (init));
    80001484:	00058613          	mv	a2,a1

    __asm__ volatile("mv a1, %0" : : "r" (handle));
    80001488:	00050593          	mv	a1,a0

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::SEM_OPEN));
    8000148c:	02100793          	li	a5,33
    80001490:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    80001494:	00000073          	ecall

    int res;
    __asm__ volatile ("mv %0, a0" : "=r" (res));
    80001498:	00050513          	mv	a0,a0
    return res;

}
    8000149c:	0005051b          	sext.w	a0,a0
    800014a0:	00813403          	ld	s0,8(sp)
    800014a4:	01010113          	addi	sp,sp,16
    800014a8:	00008067          	ret

00000000800014ac <_Z9sem_closeP3sem>:

int sem_close (sem_t handle) {
    800014ac:	ff010113          	addi	sp,sp,-16
    800014b0:	00813423          	sd	s0,8(sp)
    800014b4:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1, %0" : : "r" (handle));
    800014b8:	00050593          	mv	a1,a0

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::SEM_CLOSE));
    800014bc:	02200793          	li	a5,34
    800014c0:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800014c4:	00000073          	ecall

    int res;
    __asm__ volatile ("mv %0, a0" : "=r" (res));
    800014c8:	00050513          	mv	a0,a0
    return res;
}
    800014cc:	0005051b          	sext.w	a0,a0
    800014d0:	00813403          	ld	s0,8(sp)
    800014d4:	01010113          	addi	sp,sp,16
    800014d8:	00008067          	ret

00000000800014dc <_Z8sem_waitP3sem>:

int sem_wait (sem_t id){
    800014dc:	ff010113          	addi	sp,sp,-16
    800014e0:	00813423          	sd	s0,8(sp)
    800014e4:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1, %0" : : "r" (id));
    800014e8:	00050593          	mv	a1,a0

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::SEM_WAIT));
    800014ec:	02300793          	li	a5,35
    800014f0:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800014f4:	00000073          	ecall

    int res;
    __asm__ volatile ("mv %0, a0" : "=r" (res));
    800014f8:	00050513          	mv	a0,a0
    return res;
}
    800014fc:	0005051b          	sext.w	a0,a0
    80001500:	00813403          	ld	s0,8(sp)
    80001504:	01010113          	addi	sp,sp,16
    80001508:	00008067          	ret

000000008000150c <_Z10sem_signalP3sem>:

int sem_signal (sem_t id){
    8000150c:	ff010113          	addi	sp,sp,-16
    80001510:	00813423          	sd	s0,8(sp)
    80001514:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1, %0" : : "r" (id));
    80001518:	00050593          	mv	a1,a0

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::SEM_SIGNAL));
    8000151c:	02400793          	li	a5,36
    80001520:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001524:	00000073          	ecall

    int res;
    __asm__ volatile ("mv %0, a0" : "=r" (res));
    80001528:	00050513          	mv	a0,a0
    return res;
}
    8000152c:	0005051b          	sext.w	a0,a0
    80001530:	00813403          	ld	s0,8(sp)
    80001534:	01010113          	addi	sp,sp,16
    80001538:	00008067          	ret

000000008000153c <_Z11sem_trywaitP3sem>:

int sem_trywait(sem_t id){
    8000153c:	ff010113          	addi	sp,sp,-16
    80001540:	00813423          	sd	s0,8(sp)
    80001544:	01010413          	addi	s0,sp,16


    __asm__ volatile("mv a1, %0" : : "r" (id));
    80001548:	00050593          	mv	a1,a0

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::SEM_TRYWAIT));
    8000154c:	02600793          	li	a5,38
    80001550:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001554:	00000073          	ecall

    int res;
    __asm__ volatile ("mv %0, a0" : "=r" (res));
    80001558:	00050513          	mv	a0,a0
    return res;
}
    8000155c:	0005051b          	sext.w	a0,a0
    80001560:	00813403          	ld	s0,8(sp)
    80001564:	01010113          	addi	sp,sp,16
    80001568:	00008067          	ret

000000008000156c <_Z4getcv>:

char getc() {
    8000156c:	ff010113          	addi	sp,sp,-16
    80001570:	00813423          	sd	s0,8(sp)
    80001574:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::GET_C));
    80001578:	04100793          	li	a5,65
    8000157c:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001580:	00000073          	ecall

    char res;
    __asm__ volatile ("mv %0, a0" : "=r" (res));
    80001584:	00050513          	mv	a0,a0
    return res;

}
    80001588:	0ff57513          	andi	a0,a0,255
    8000158c:	00813403          	ld	s0,8(sp)
    80001590:	01010113          	addi	sp,sp,16
    80001594:	00008067          	ret

0000000080001598 <_Z4putcc>:

void putc(char c) {
    80001598:	ff010113          	addi	sp,sp,-16
    8000159c:	00813423          	sd	s0,8(sp)
    800015a0:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1, %0" : : "r" (c));
    800015a4:	00050593          	mv	a1,a0

    __asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::PUT_C));
    800015a8:	04200793          	li	a5,66
    800015ac:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800015b0:	00000073          	ecall
}
    800015b4:	00813403          	ld	s0,8(sp)
    800015b8:	01010113          	addi	sp,sp,16
    800015bc:	00008067          	ret

00000000800015c0 <_Z8userMainv>:
// #include "../test/ConsumerProducer_CPP_API_test.hpp"
// #include "System_Mode_test.hpp"

#endif

void userMain() {
    800015c0:	fe010113          	addi	sp,sp,-32
    800015c4:	00113c23          	sd	ra,24(sp)
    800015c8:	00813823          	sd	s0,16(sp)
    800015cc:	00913423          	sd	s1,8(sp)
    800015d0:	01213023          	sd	s2,0(sp)
    800015d4:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800015d8:	00008517          	auipc	a0,0x8
    800015dc:	a4850513          	addi	a0,a0,-1464 # 80009020 <CONSOLE_STATUS+0x10>
    800015e0:	00004097          	auipc	ra,0x4
    800015e4:	ea0080e7          	jalr	-352(ra) # 80005480 <_Z11printStringPKc>
    int test = getc() - '0';
    800015e8:	00000097          	auipc	ra,0x0
    800015ec:	f84080e7          	jalr	-124(ra) # 8000156c <_Z4getcv>
    800015f0:	00050913          	mv	s2,a0
    800015f4:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800015f8:	00000097          	auipc	ra,0x0
    800015fc:	f74080e7          	jalr	-140(ra) # 8000156c <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80001600:	fcb9091b          	addiw	s2,s2,-53
    80001604:	00100793          	li	a5,1
    80001608:	0327f463          	bgeu	a5,s2,80001630 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    8000160c:	00900793          	li	a5,9
    80001610:	1097e063          	bltu	a5,s1,80001710 <_Z8userMainv+0x150>
    80001614:	00249493          	slli	s1,s1,0x2
    80001618:	00008717          	auipc	a4,0x8
    8000161c:	c6870713          	addi	a4,a4,-920 # 80009280 <CONSOLE_STATUS+0x270>
    80001620:	00e484b3          	add	s1,s1,a4
    80001624:	0004a783          	lw	a5,0(s1)
    80001628:	00e787b3          	add	a5,a5,a4
    8000162c:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80001630:	00008517          	auipc	a0,0x8
    80001634:	a1050513          	addi	a0,a0,-1520 # 80009040 <CONSOLE_STATUS+0x30>
    80001638:	00004097          	auipc	ra,0x4
    8000163c:	e48080e7          	jalr	-440(ra) # 80005480 <_Z11printStringPKc>
            return;
    80001640:	0e00006f          	j	80001720 <_Z8userMainv+0x160>
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80001644:	00003097          	auipc	ra,0x3
    80001648:	f78080e7          	jalr	-136(ra) # 800045bc <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000164c:	00008517          	auipc	a0,0x8
    80001650:	a2450513          	addi	a0,a0,-1500 # 80009070 <CONSOLE_STATUS+0x60>
    80001654:	00004097          	auipc	ra,0x4
    80001658:	e2c080e7          	jalr	-468(ra) # 80005480 <_Z11printStringPKc>
#endif
            break;
    8000165c:	0c40006f          	j	80001720 <_Z8userMainv+0x160>
            case 2:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_CPP_API_test();
    80001660:	00002097          	auipc	ra,0x2
    80001664:	160080e7          	jalr	352(ra) # 800037c0 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80001668:	00008517          	auipc	a0,0x8
    8000166c:	a4850513          	addi	a0,a0,-1464 # 800090b0 <CONSOLE_STATUS+0xa0>
    80001670:	00004097          	auipc	ra,0x4
    80001674:	e10080e7          	jalr	-496(ra) # 80005480 <_Z11printStringPKc>
#endif
            break;
    80001678:	0a80006f          	j	80001720 <_Z8userMainv+0x160>
        case 3:
#if LEVEL_3_IMPLEMENTED == 1
            producerConsumer_C_API();
    8000167c:	00002097          	auipc	ra,0x2
    80001680:	998080e7          	jalr	-1640(ra) # 80003014 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80001684:	00008517          	auipc	a0,0x8
    80001688:	a6c50513          	addi	a0,a0,-1428 # 800090f0 <CONSOLE_STATUS+0xe0>
    8000168c:	00004097          	auipc	ra,0x4
    80001690:	df4080e7          	jalr	-524(ra) # 80005480 <_Z11printStringPKc>
#endif
            break;
    80001694:	08c0006f          	j	80001720 <_Z8userMainv+0x160>
        case 4:
#if LEVEL_3_IMPLEMENTED == 1
            producerConsumer_CPP_Sync_API();
    80001698:	00003097          	auipc	ra,0x3
    8000169c:	268080e7          	jalr	616(ra) # 80004900 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800016a0:	00008517          	auipc	a0,0x8
    800016a4:	aa050513          	addi	a0,a0,-1376 # 80009140 <CONSOLE_STATUS+0x130>
    800016a8:	00004097          	auipc	ra,0x4
    800016ac:	dd8080e7          	jalr	-552(ra) # 80005480 <_Z11printStringPKc>
#endif
            break;
    800016b0:	0700006f          	j	80001720 <_Z8userMainv+0x160>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
#endif
            break;
        case 7:
#if LEVEL_2_IMPLEMENTED == 1
            System_Mode_test();
    800016b4:	00005097          	auipc	ra,0x5
    800016b8:	980080e7          	jalr	-1664(ra) # 80006034 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800016bc:	00008517          	auipc	a0,0x8
    800016c0:	adc50513          	addi	a0,a0,-1316 # 80009198 <CONSOLE_STATUS+0x188>
    800016c4:	00004097          	auipc	ra,0x4
    800016c8:	dbc080e7          	jalr	-580(ra) # 80005480 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800016cc:	00008517          	auipc	a0,0x8
    800016d0:	aec50513          	addi	a0,a0,-1300 # 800091b8 <CONSOLE_STATUS+0x1a8>
    800016d4:	00004097          	auipc	ra,0x4
    800016d8:	dac080e7          	jalr	-596(ra) # 80005480 <_Z11printStringPKc>
#endif
            break;
    800016dc:	0440006f          	j	80001720 <_Z8userMainv+0x160>
        case 8:
#if LEVEL_3_IMPLEMENTED == 1
            get_thread_id();
    800016e0:	00004097          	auipc	ra,0x4
    800016e4:	af8080e7          	jalr	-1288(ra) # 800051d8 <_Z13get_thread_idv>
            printString("TEST get thread id radi super! \n");
    800016e8:	00008517          	auipc	a0,0x8
    800016ec:	b2850513          	addi	a0,a0,-1240 # 80009210 <CONSOLE_STATUS+0x200>
    800016f0:	00004097          	auipc	ra,0x4
    800016f4:	d90080e7          	jalr	-624(ra) # 80005480 <_Z11printStringPKc>
#endif
        case 9:
#if LEVEL_3_IMPLEMENTED == 1
            join_thread();
    800016f8:	00002097          	auipc	ra,0x2
    800016fc:	740080e7          	jalr	1856(ra) # 80003e38 <_Z11join_threadv>
            printString("TEST join thread radi super! \n");
    80001700:	00008517          	auipc	a0,0x8
    80001704:	b3850513          	addi	a0,a0,-1224 # 80009238 <CONSOLE_STATUS+0x228>
    80001708:	00004097          	auipc	ra,0x4
    8000170c:	d78080e7          	jalr	-648(ra) # 80005480 <_Z11printStringPKc>
#endif
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    80001710:	00008517          	auipc	a0,0x8
    80001714:	b4850513          	addi	a0,a0,-1208 # 80009258 <CONSOLE_STATUS+0x248>
    80001718:	00004097          	auipc	ra,0x4
    8000171c:	d68080e7          	jalr	-664(ra) # 80005480 <_Z11printStringPKc>
    }
    80001720:	01813083          	ld	ra,24(sp)
    80001724:	01013403          	ld	s0,16(sp)
    80001728:	00813483          	ld	s1,8(sp)
    8000172c:	00013903          	ld	s2,0(sp)
    80001730:	02010113          	addi	sp,sp,32
    80001734:	00008067          	ret

0000000080001738 <_Z41__static_initialization_and_destruction_0ii>:
void Barrier::open() {
    key = 1; if(owner->isBarriered()) {
        owner->setBarriered(false);
        Scheduler::put(owner);
    }
    80001738:	ff010113          	addi	sp,sp,-16
    8000173c:	00813423          	sd	s0,8(sp)
    80001740:	01010413          	addi	s0,sp,16
    80001744:	00100793          	li	a5,1
    80001748:	00f50863          	beq	a0,a5,80001758 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000174c:	00813403          	ld	s0,8(sp)
    80001750:	01010113          	addi	sp,sp,16
    80001754:	00008067          	ret
    80001758:	000107b7          	lui	a5,0x10
    8000175c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001760:	fef596e3          	bne	a1,a5,8000174c <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;


    List() : head(0), tail(0) {}
    80001764:	0000a797          	auipc	a5,0xa
    80001768:	0fc78793          	addi	a5,a5,252 # 8000b860 <_ZN3TCB8capacityE>
    8000176c:	0007b023          	sd	zero,0(a5)
    80001770:	0007b423          	sd	zero,8(a5)
    80001774:	fd9ff06f          	j	8000174c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001778 <_ZN3TCBC1EPFvPvES0_S0_>:
TCB::TCB(Body start_routine, void* arg, void*stack_space):
    80001778:	fd010113          	addi	sp,sp,-48
    8000177c:	02113423          	sd	ra,40(sp)
    80001780:	02813023          	sd	s0,32(sp)
    80001784:	00913c23          	sd	s1,24(sp)
    80001788:	01213823          	sd	s2,16(sp)
    8000178c:	01313423          	sd	s3,8(sp)
    80001790:	01413023          	sd	s4,0(sp)
    80001794:	03010413          	addi	s0,sp,48
    80001798:	00050493          	mv	s1,a0
    8000179c:	00058993          	mv	s3,a1
    800017a0:	00060a13          	mv	s4,a2
    800017a4:	00068913          	mv	s2,a3
    barrier(new Barrier(1, this)),
    800017a8:	01000513          	li	a0,16
    800017ac:	00000097          	auipc	ra,0x0
    800017b0:	710080e7          	jalr	1808(ra) # 80001ebc <_Znwm>
    static uint64 constexpr STACK_SIZE = DEFAULT_STACK_SIZE;
};

class Barrier {
public:
    Barrier (int open, TCB* owner){ key = open; owner = owner;};
    800017b4:	00100793          	li	a5,1
    800017b8:	00f52423          	sw	a5,8(a0)
    myID(id++)
    800017bc:	00a4b023          	sd	a0,0(s1)
    800017c0:	0134b423          	sd	s3,8(s1)
    800017c4:	0144b823          	sd	s4,16(s1)
    stack_space(start_routine != nullptr ? stack_space:nullptr),
    800017c8:	06098c63          	beqz	s3,80001840 <_ZN3TCBC1EPFvPvES0_S0_+0xc8>
    800017cc:	00090793          	mv	a5,s2
    myID(id++)
    800017d0:	00f4bc23          	sd	a5,24(s1)
    800017d4:	00000797          	auipc	a5,0x0
    800017d8:	3bc78793          	addi	a5,a5,956 # 80001b90 <_ZN3TCB13threadWrapperEv>
    800017dc:	02f4b023          	sd	a5,32(s1)
            stack_space != nullptr ? (uint64) stack_space + STACK_SIZE : 0}),
    800017e0:	06090463          	beqz	s2,80001848 <_ZN3TCBC1EPFvPvES0_S0_+0xd0>
    800017e4:	000016b7          	lui	a3,0x1
    800017e8:	00d90933          	add	s2,s2,a3
    myID(id++)
    800017ec:	0324b423          	sd	s2,40(s1)
    800017f0:	02048823          	sb	zero,48(s1)
    800017f4:	020488a3          	sb	zero,49(s1)
    800017f8:	02048923          	sb	zero,50(s1)
    800017fc:	020489a3          	sb	zero,51(s1)
    80001800:	0000a717          	auipc	a4,0xa
    80001804:	06070713          	addi	a4,a4,96 # 8000b860 <_ZN3TCB8capacityE>
    80001808:	01072783          	lw	a5,16(a4)
    8000180c:	0017869b          	addiw	a3,a5,1
    80001810:	00d72823          	sw	a3,16(a4)
    80001814:	02f4aa23          	sw	a5,52(s1)
    80001818:	0204bc23          	sd	zero,56(s1)
    8000181c:	0404b023          	sd	zero,64(s1)
}
    80001820:	02813083          	ld	ra,40(sp)
    80001824:	02013403          	ld	s0,32(sp)
    80001828:	01813483          	ld	s1,24(sp)
    8000182c:	01013903          	ld	s2,16(sp)
    80001830:	00813983          	ld	s3,8(sp)
    80001834:	00013a03          	ld	s4,0(sp)
    80001838:	03010113          	addi	sp,sp,48
    8000183c:	00008067          	ret
    stack_space(start_routine != nullptr ? stack_space:nullptr),
    80001840:	00000793          	li	a5,0
    80001844:	f8dff06f          	j	800017d0 <_ZN3TCBC1EPFvPvES0_S0_+0x58>
            stack_space != nullptr ? (uint64) stack_space + STACK_SIZE : 0}),
    80001848:	00000913          	li	s2,0
    8000184c:	fa1ff06f          	j	800017ec <_ZN3TCBC1EPFvPvES0_S0_+0x74>

0000000080001850 <_ZN3TCB13thread_createEPFvPvES0_S0_>:
TCB* TCB::thread_create(Body start_routine, void* arg, void* stack_space){
    80001850:	fd010113          	addi	sp,sp,-48
    80001854:	02113423          	sd	ra,40(sp)
    80001858:	02813023          	sd	s0,32(sp)
    8000185c:	00913c23          	sd	s1,24(sp)
    80001860:	01213823          	sd	s2,16(sp)
    80001864:	01313423          	sd	s3,8(sp)
    80001868:	01413023          	sd	s4,0(sp)
    8000186c:	03010413          	addi	s0,sp,48
    80001870:	00050913          	mv	s2,a0
    80001874:	00058993          	mv	s3,a1
    80001878:	00060a13          	mv	s4,a2
        return memoryAllocator::allocate(blocks);
    8000187c:	00200513          	li	a0,2
    80001880:	00000097          	auipc	ra,0x0
    80001884:	47c080e7          	jalr	1148(ra) # 80001cfc <_ZN15memoryAllocator8allocateEm>
    80001888:	00050493          	mv	s1,a0
    TCB* newThread = new TCB(start_routine, arg, stack_space);
    8000188c:	000a0693          	mv	a3,s4
    80001890:	00098613          	mv	a2,s3
    80001894:	00090593          	mv	a1,s2
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	ee0080e7          	jalr	-288(ra) # 80001778 <_ZN3TCBC1EPFvPvES0_S0_>
    800018a0:	0200006f          	j	800018c0 <_ZN3TCB13thread_createEPFvPvES0_S0_+0x70>
    800018a4:	00050913          	mv	s2,a0
        memoryAllocator::deallocate(ptr);
    800018a8:	00048513          	mv	a0,s1
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	510080e7          	jalr	1296(ra) # 80001dbc <_ZN15memoryAllocator10deallocateEPv>
    800018b4:	00090513          	mv	a0,s2
    800018b8:	0000b097          	auipc	ra,0xb
    800018bc:	120080e7          	jalr	288(ra) # 8000c9d8 <_Unwind_Resume>
}
    800018c0:	00048513          	mv	a0,s1
    800018c4:	02813083          	ld	ra,40(sp)
    800018c8:	02013403          	ld	s0,32(sp)
    800018cc:	01813483          	ld	s1,24(sp)
    800018d0:	01013903          	ld	s2,16(sp)
    800018d4:	00813983          	ld	s3,8(sp)
    800018d8:	00013a03          	ld	s4,0(sp)
    800018dc:	03010113          	addi	sp,sp,48
    800018e0:	00008067          	ret

00000000800018e4 <_ZN3TCB5yieldEv>:
{
    800018e4:	ff010113          	addi	sp,sp,-16
    800018e8:	00813423          	sd	s0,8(sp)
    800018ec:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r"(SyscallCodes::THREAD_DISPATCH));
    800018f0:	01300793          	li	a5,19
    800018f4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800018f8:	00000073          	ecall
}
    800018fc:	00813403          	ld	s0,8(sp)
    80001900:	01010113          	addi	sp,sp,16
    80001904:	00008067          	ret

0000000080001908 <_ZN3TCB15thread_dispatchEv>:
{
    80001908:	fe010113          	addi	sp,sp,-32
    8000190c:	00113c23          	sd	ra,24(sp)
    80001910:	00813823          	sd	s0,16(sp)
    80001914:	00913423          	sd	s1,8(sp)
    80001918:	01213023          	sd	s2,0(sp)
    8000191c:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001920:	0000a497          	auipc	s1,0xa
    80001924:	f584b483          	ld	s1,-168(s1) # 8000b878 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001928:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished() && !old->isBlocked() && !old->isSuspended() && !old->isBarriered()) {
    8000192c:	00079e63          	bnez	a5,80001948 <_ZN3TCB15thread_dispatchEv+0x40>
    bool isBlocked() const { return blocked; }
    80001930:	0314c783          	lbu	a5,49(s1)
    80001934:	00079a63          	bnez	a5,80001948 <_ZN3TCB15thread_dispatchEv+0x40>
    bool isSuspended() const { return suspended; }
    80001938:	0324c783          	lbu	a5,50(s1)
    8000193c:	00079663          	bnez	a5,80001948 <_ZN3TCB15thread_dispatchEv+0x40>
    bool isBarriered() const { return barriered; }
    80001940:	0334c783          	lbu	a5,51(s1)
    80001944:	0a078263          	beqz	a5,800019e8 <_ZN3TCB15thread_dispatchEv+0xe0>
    bool isFinished() const { return finished; }
    80001948:	0304c783          	lbu	a5,48(s1)
    if(old->isFinished()) {
    8000194c:	06078263          	beqz	a5,800019b0 <_ZN3TCB15thread_dispatchEv+0xa8>
    static int getActive() { return active; }
    80001950:	0000a717          	auipc	a4,0xa
    80001954:	c7070713          	addi	a4,a4,-912 # 8000b5c0 <_ZN3TCB6activeE>
    80001958:	00072783          	lw	a5,0(a4)
        TCB::setActive(TCB::getActive()-1);
    8000195c:	fff7879b          	addiw	a5,a5,-1
    80001960:	0007869b          	sext.w	a3,a5
    static void setActive(int value) { active = value; }
    80001964:	00f72023          	sw	a5,0(a4)
    static int getMax() { return max; }
    80001968:	0000a797          	auipc	a5,0xa
    8000196c:	f187a783          	lw	a5,-232(a5) # 8000b880 <_ZN3TCB3maxE>
        if(TCB::getActive()<TCB::getMax() && capacity.peekFirst()) {
    80001970:	04f6d063          	bge	a3,a5,800019b0 <_ZN3TCB15thread_dispatchEv+0xa8>
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80001974:	0000a517          	auipc	a0,0xa
    80001978:	eec53503          	ld	a0,-276(a0) # 8000b860 <_ZN3TCB8capacityE>
    8000197c:	02050a63          	beqz	a0,800019b0 <_ZN3TCB15thread_dispatchEv+0xa8>
        return head->data;
    80001980:	00053783          	ld	a5,0(a0)
    80001984:	02078663          	beqz	a5,800019b0 <_ZN3TCB15thread_dispatchEv+0xa8>
        head = head->next;
    80001988:	00853783          	ld	a5,8(a0)
    8000198c:	0000a717          	auipc	a4,0xa
    80001990:	ecf73a23          	sd	a5,-300(a4) # 8000b860 <_ZN3TCB8capacityE>
        if (!head) { tail = 0; }
    80001994:	06078263          	beqz	a5,800019f8 <_ZN3TCB15thread_dispatchEv+0xf0>
        T *ret = elem->data;
    80001998:	00053903          	ld	s2,0(a0)
            memoryAllocator::deallocate(ptr);
    8000199c:	00000097          	auipc	ra,0x0
    800019a0:	420080e7          	jalr	1056(ra) # 80001dbc <_ZN15memoryAllocator10deallocateEPv>
            Scheduler::put(TCB::capacity.removeFirst());
    800019a4:	00090513          	mv	a0,s2
    800019a8:	00001097          	auipc	ra,0x1
    800019ac:	148080e7          	jalr	328(ra) # 80002af0 <_ZN9Scheduler3putEP3TCB>
    running = Scheduler::get();
    800019b0:	00001097          	auipc	ra,0x1
    800019b4:	0c8080e7          	jalr	200(ra) # 80002a78 <_ZN9Scheduler3getEv>
    800019b8:	0000a797          	auipc	a5,0xa
    800019bc:	eca7b023          	sd	a0,-320(a5) # 8000b878 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    800019c0:	02050593          	addi	a1,a0,32
    800019c4:	02048513          	addi	a0,s1,32
    800019c8:	fffff097          	auipc	ra,0xfffff
    800019cc:	748080e7          	jalr	1864(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    800019d0:	01813083          	ld	ra,24(sp)
    800019d4:	01013403          	ld	s0,16(sp)
    800019d8:	00813483          	ld	s1,8(sp)
    800019dc:	00013903          	ld	s2,0(sp)
    800019e0:	02010113          	addi	sp,sp,32
    800019e4:	00008067          	ret
        Scheduler::put(old);
    800019e8:	00048513          	mv	a0,s1
    800019ec:	00001097          	auipc	ra,0x1
    800019f0:	104080e7          	jalr	260(ra) # 80002af0 <_ZN9Scheduler3putEP3TCB>
    800019f4:	f55ff06f          	j	80001948 <_ZN3TCB15thread_dispatchEv+0x40>
        if (!head) { tail = 0; }
    800019f8:	0000a797          	auipc	a5,0xa
    800019fc:	e607b823          	sd	zero,-400(a5) # 8000b868 <_ZN3TCB8capacityE+0x8>
    80001a00:	f99ff06f          	j	80001998 <_ZN3TCB15thread_dispatchEv+0x90>

0000000080001a04 <_ZN3TCB11thread_exitEv>:
int TCB::thread_exit(){
    80001a04:	fe010113          	addi	sp,sp,-32
    80001a08:	00113c23          	sd	ra,24(sp)
    80001a0c:	00813823          	sd	s0,16(sp)
    80001a10:	00913423          	sd	s1,8(sp)
    80001a14:	02010413          	addi	s0,sp,32
    running->setFinished(true);
    80001a18:	0000a497          	auipc	s1,0xa
    80001a1c:	e4848493          	addi	s1,s1,-440 # 8000b860 <_ZN3TCB8capacityE>
    80001a20:	0184b783          	ld	a5,24(s1)
    void setFinished(bool value) { finished = value; }
    80001a24:	00100713          	li	a4,1
    80001a28:	02e78823          	sb	a4,48(a5)
    memoryAllocator::deallocate(TCB::running->stack_space);
    80001a2c:	0187b503          	ld	a0,24(a5)
    80001a30:	00000097          	auipc	ra,0x0
    80001a34:	38c080e7          	jalr	908(ra) # 80001dbc <_ZN15memoryAllocator10deallocateEPv>
    memoryAllocator::deallocate(TCB::running);
    80001a38:	0184b503          	ld	a0,24(s1)
    80001a3c:	00000097          	auipc	ra,0x0
    80001a40:	380080e7          	jalr	896(ra) # 80001dbc <_ZN15memoryAllocator10deallocateEPv>
    TCB::thread_dispatch();
    80001a44:	00000097          	auipc	ra,0x0
    80001a48:	ec4080e7          	jalr	-316(ra) # 80001908 <_ZN3TCB15thread_dispatchEv>
}
    80001a4c:	00000513          	li	a0,0
    80001a50:	01813083          	ld	ra,24(sp)
    80001a54:	01013403          	ld	s0,16(sp)
    80001a58:	00813483          	ld	s1,8(sp)
    80001a5c:	02010113          	addi	sp,sp,32
    80001a60:	00008067          	ret

0000000080001a64 <_ZN3TCB11getThreadIdEv>:
int TCB::getThreadId() {
    80001a64:	ff010113          	addi	sp,sp,-16
    80001a68:	00813423          	sd	s0,8(sp)
    80001a6c:	01010413          	addi	s0,sp,16
}
    80001a70:	0000a797          	auipc	a5,0xa
    80001a74:	e087b783          	ld	a5,-504(a5) # 8000b878 <_ZN3TCB7runningE>
    80001a78:	0347a503          	lw	a0,52(a5)
    80001a7c:	00813403          	ld	s0,8(sp)
    80001a80:	01010113          	addi	sp,sp,16
    80001a84:	00008067          	ret

0000000080001a88 <_ZN3TCB11thread_joinEPS_>:
    bool isFinished() const { return finished; }
    80001a88:	03054783          	lbu	a5,48(a0)
    if(!handle->isFinished()) {
    80001a8c:	00078463          	beqz	a5,80001a94 <_ZN3TCB11thread_joinEPS_+0xc>
    80001a90:	00008067          	ret
void TCB::thread_join(TCB* handle) {
    80001a94:	fe010113          	addi	sp,sp,-32
    80001a98:	00113c23          	sd	ra,24(sp)
    80001a9c:	00813823          	sd	s0,16(sp)
    80001aa0:	00913423          	sd	s1,8(sp)
    80001aa4:	01213023          	sd	s2,0(sp)
    80001aa8:	02010413          	addi	s0,sp,32
    80001aac:	00050493          	mv	s1,a0
        handle->suspendedList.addLast(running);
    80001ab0:	0000a917          	auipc	s2,0xa
    80001ab4:	dc893903          	ld	s2,-568(s2) # 8000b878 <_ZN3TCB7runningE>
            return memoryAllocator::allocate(blocks);
    80001ab8:	00100513          	li	a0,1
    80001abc:	00000097          	auipc	ra,0x0
    80001ac0:	240080e7          	jalr	576(ra) # 80001cfc <_ZN15memoryAllocator8allocateEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001ac4:	01253023          	sd	s2,0(a0)
    80001ac8:	00053423          	sd	zero,8(a0)
        if (tail) {
    80001acc:	0404b783          	ld	a5,64(s1)
    80001ad0:	02078e63          	beqz	a5,80001b0c <_ZN3TCB11thread_joinEPS_+0x84>
            tail->next = elem;
    80001ad4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001ad8:	04a4b023          	sd	a0,64(s1)
    void setSuspended(bool value) { suspended = value; }
    80001adc:	0000a797          	auipc	a5,0xa
    80001ae0:	d9c7b783          	ld	a5,-612(a5) # 8000b878 <_ZN3TCB7runningE>
    80001ae4:	00100713          	li	a4,1
    80001ae8:	02e78923          	sb	a4,50(a5)
        TCB::thread_dispatch();
    80001aec:	00000097          	auipc	ra,0x0
    80001af0:	e1c080e7          	jalr	-484(ra) # 80001908 <_ZN3TCB15thread_dispatchEv>
}
    80001af4:	01813083          	ld	ra,24(sp)
    80001af8:	01013403          	ld	s0,16(sp)
    80001afc:	00813483          	ld	s1,8(sp)
    80001b00:	00013903          	ld	s2,0(sp)
    80001b04:	02010113          	addi	sp,sp,32
    80001b08:	00008067          	ret
            head = tail = elem;
    80001b0c:	04a4b023          	sd	a0,64(s1)
    80001b10:	02a4bc23          	sd	a0,56(s1)
    80001b14:	fc9ff06f          	j	80001adc <_ZN3TCB11thread_joinEPS_+0x54>

0000000080001b18 <_ZN3TCB6reliseEv>:
void TCB::relise() {
    80001b18:	fe010113          	addi	sp,sp,-32
    80001b1c:	00113c23          	sd	ra,24(sp)
    80001b20:	00813823          	sd	s0,16(sp)
    80001b24:	00913423          	sd	s1,8(sp)
    80001b28:	01213023          	sd	s2,0(sp)
    80001b2c:	02010413          	addi	s0,sp,32
    80001b30:	00050913          	mv	s2,a0
    80001b34:	0240006f          	j	80001b58 <_ZN3TCB6reliseEv+0x40>
        if (!head) { tail = 0; }
    80001b38:	04093023          	sd	zero,64(s2)
        T *ret = elem->data;
    80001b3c:	00053483          	ld	s1,0(a0)
            memoryAllocator::deallocate(ptr);
    80001b40:	00000097          	auipc	ra,0x0
    80001b44:	27c080e7          	jalr	636(ra) # 80001dbc <_ZN15memoryAllocator10deallocateEPv>
    80001b48:	02048923          	sb	zero,50(s1)
        Scheduler::put(un);
    80001b4c:	00048513          	mv	a0,s1
    80001b50:	00001097          	auipc	ra,0x1
    80001b54:	fa0080e7          	jalr	-96(ra) # 80002af0 <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    80001b58:	03893503          	ld	a0,56(s2)
    80001b5c:	00050e63          	beqz	a0,80001b78 <_ZN3TCB6reliseEv+0x60>
        return head->data;
    80001b60:	00053783          	ld	a5,0(a0)
    while(this->suspendedList.peekFirst()) {
    80001b64:	00078a63          	beqz	a5,80001b78 <_ZN3TCB6reliseEv+0x60>
        head = head->next;
    80001b68:	00853783          	ld	a5,8(a0)
    80001b6c:	02f93c23          	sd	a5,56(s2)
        if (!head) { tail = 0; }
    80001b70:	fc0796e3          	bnez	a5,80001b3c <_ZN3TCB6reliseEv+0x24>
    80001b74:	fc5ff06f          	j	80001b38 <_ZN3TCB6reliseEv+0x20>
}
    80001b78:	01813083          	ld	ra,24(sp)
    80001b7c:	01013403          	ld	s0,16(sp)
    80001b80:	00813483          	ld	s1,8(sp)
    80001b84:	00013903          	ld	s2,0(sp)
    80001b88:	02010113          	addi	sp,sp,32
    80001b8c:	00008067          	ret

0000000080001b90 <_ZN3TCB13threadWrapperEv>:
void TCB::threadWrapper() {
    80001b90:	fe010113          	addi	sp,sp,-32
    80001b94:	00113c23          	sd	ra,24(sp)
    80001b98:	00813823          	sd	s0,16(sp)
    80001b9c:	00913423          	sd	s1,8(sp)
    80001ba0:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001ba4:	00000097          	auipc	ra,0x0
    80001ba8:	7f0080e7          	jalr	2032(ra) # 80002394 <_ZN5Riscv10popSppSpieEv>
    running->start_routine(running->arg);
    80001bac:	0000a497          	auipc	s1,0xa
    80001bb0:	cb448493          	addi	s1,s1,-844 # 8000b860 <_ZN3TCB8capacityE>
    80001bb4:	0184b783          	ld	a5,24(s1)
    80001bb8:	0087b703          	ld	a4,8(a5)
    80001bbc:	0107b503          	ld	a0,16(a5)
    80001bc0:	000700e7          	jalr	a4
    running->setFinished(true);
    80001bc4:	0184b503          	ld	a0,24(s1)
    void setFinished(bool value) { finished = value; }
    80001bc8:	00100793          	li	a5,1
    80001bcc:	02f50823          	sb	a5,48(a0)
    running->relise();
    80001bd0:	00000097          	auipc	ra,0x0
    80001bd4:	f48080e7          	jalr	-184(ra) # 80001b18 <_ZN3TCB6reliseEv>
    memoryAllocator::deallocate(TCB::running->stack_space);
    80001bd8:	0184b783          	ld	a5,24(s1)
    80001bdc:	0187b503          	ld	a0,24(a5)
    80001be0:	00000097          	auipc	ra,0x0
    80001be4:	1dc080e7          	jalr	476(ra) # 80001dbc <_ZN15memoryAllocator10deallocateEPv>
    memoryAllocator::deallocate(TCB::running);
    80001be8:	0184b503          	ld	a0,24(s1)
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	1d0080e7          	jalr	464(ra) # 80001dbc <_ZN15memoryAllocator10deallocateEPv>
    TCB::thread_dispatch();
    80001bf4:	00000097          	auipc	ra,0x0
    80001bf8:	d14080e7          	jalr	-748(ra) # 80001908 <_ZN3TCB15thread_dispatchEv>
}
    80001bfc:	01813083          	ld	ra,24(sp)
    80001c00:	01013403          	ld	s0,16(sp)
    80001c04:	00813483          	ld	s1,8(sp)
    80001c08:	02010113          	addi	sp,sp,32
    80001c0c:	00008067          	ret

0000000080001c10 <_ZN7Barrier4openEv>:
    key = 1; if(owner->isBarriered()) {
    80001c10:	00100793          	li	a5,1
    80001c14:	00f52423          	sw	a5,8(a0)
    80001c18:	00053783          	ld	a5,0(a0)
    bool isBarriered() const { return barriered; }
    80001c1c:	0337c703          	lbu	a4,51(a5)
    80001c20:	00071463          	bnez	a4,80001c28 <_ZN7Barrier4openEv+0x18>
    80001c24:	00008067          	ret
void Barrier::open() {
    80001c28:	ff010113          	addi	sp,sp,-16
    80001c2c:	00113423          	sd	ra,8(sp)
    80001c30:	00813023          	sd	s0,0(sp)
    80001c34:	01010413          	addi	s0,sp,16
    void setBarriered(bool value) { barriered = value; }
    80001c38:	020789a3          	sb	zero,51(a5)
        Scheduler::put(owner);
    80001c3c:	00053503          	ld	a0,0(a0)
    80001c40:	00001097          	auipc	ra,0x1
    80001c44:	eb0080e7          	jalr	-336(ra) # 80002af0 <_ZN9Scheduler3putEP3TCB>
    80001c48:	00813083          	ld	ra,8(sp)
    80001c4c:	00013403          	ld	s0,0(sp)
    80001c50:	01010113          	addi	sp,sp,16
    80001c54:	00008067          	ret

0000000080001c58 <_GLOBAL__sub_I__ZN3TCB7runningE>:
    80001c58:	ff010113          	addi	sp,sp,-16
    80001c5c:	00113423          	sd	ra,8(sp)
    80001c60:	00813023          	sd	s0,0(sp)
    80001c64:	01010413          	addi	s0,sp,16
    80001c68:	000105b7          	lui	a1,0x10
    80001c6c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001c70:	00100513          	li	a0,1
    80001c74:	00000097          	auipc	ra,0x0
    80001c78:	ac4080e7          	jalr	-1340(ra) # 80001738 <_Z41__static_initialization_and_destruction_0ii>
    80001c7c:	00813083          	ld	ra,8(sp)
    80001c80:	00013403          	ld	s0,0(sp)
    80001c84:	01010113          	addi	sp,sp,16
    80001c88:	00008067          	ret

0000000080001c8c <_Z10roundUpDivmm>:
//

#include "../h/memoryAllocator.hpp"
#include "../h/print.hpp"

size_t roundUpDiv(size_t numerator, size_t denominator) {
    80001c8c:	ff010113          	addi	sp,sp,-16
    80001c90:	00813423          	sd	s0,8(sp)
    80001c94:	01010413          	addi	s0,sp,16
	return (numerator + denominator - 1) / denominator;
    80001c98:	00b50533          	add	a0,a0,a1
    80001c9c:	fff50513          	addi	a0,a0,-1
}
    80001ca0:	02b55533          	divu	a0,a0,a1
    80001ca4:	00813403          	ld	s0,8(sp)
    80001ca8:	01010113          	addi	sp,sp,16
    80001cac:	00008067          	ret

0000000080001cb0 <_ZN15memoryAllocator5startEv>:

memoryAllocator::FreeMem* memoryAllocator::fmem_head = nullptr;

void memoryAllocator::start(){
    80001cb0:	ff010113          	addi	sp,sp,-16
    80001cb4:	00813423          	sd	s0,8(sp)
    80001cb8:	01010413          	addi	s0,sp,16

	FreeMem* fm = (FreeMem*)(HEAP_START_ADDR);
    80001cbc:	0000a797          	auipc	a5,0xa
    80001cc0:	b147b783          	ld	a5,-1260(a5) # 8000b7d0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001cc4:	0007b783          	ld	a5,0(a5)
	fm->next = nullptr;
    80001cc8:	0007b423          	sd	zero,8(a5)
	fm->prev = nullptr;
    80001ccc:	0007b823          	sd	zero,16(a5)
	fm->size = ((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE;
    80001cd0:	0000a717          	auipc	a4,0xa
    80001cd4:	b3073703          	ld	a4,-1232(a4) # 8000b800 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001cd8:	00073703          	ld	a4,0(a4)
    80001cdc:	40f70733          	sub	a4,a4,a5
    80001ce0:	00675713          	srli	a4,a4,0x6
    80001ce4:	00e7b023          	sd	a4,0(a5)
	fmem_head = fm;
    80001ce8:	0000a717          	auipc	a4,0xa
    80001cec:	baf73023          	sd	a5,-1120(a4) # 8000b888 <_ZN15memoryAllocator9fmem_headE>

}
    80001cf0:	00813403          	ld	s0,8(sp)
    80001cf4:	01010113          	addi	sp,sp,16
    80001cf8:	00008067          	ret

0000000080001cfc <_ZN15memoryAllocator8allocateEm>:

void* memoryAllocator::allocate(size_t blocks){
    80001cfc:	ff010113          	addi	sp,sp,-16
    80001d00:	00813423          	sd	s0,8(sp)
    80001d04:	01010413          	addi	s0,sp,16
    80001d08:	00050793          	mv	a5,a0

	for(FreeMem* cur= fmem_head;cur!=nullptr;cur=cur->next){
    80001d0c:	0000a517          	auipc	a0,0xa
    80001d10:	b7c53503          	ld	a0,-1156(a0) # 8000b888 <_ZN15memoryAllocator9fmem_headE>
    80001d14:	04050a63          	beqz	a0,80001d68 <_ZN15memoryAllocator8allocateEm+0x6c>

		if(cur->size < blocks)continue;
    80001d18:	00053703          	ld	a4,0(a0)
    80001d1c:	04f76c63          	bltu	a4,a5,80001d74 <_ZN15memoryAllocator8allocateEm+0x78>
		//Found!

		//ako je uzet ceo fragment slobodne
		if(cur-> size - blocks == 0){
    80001d20:	04f70e63          	beq	a4,a5,80001d7c <_ZN15memoryAllocator8allocateEm+0x80>

		}
		else{


			FreeMem* newfrgm = (FreeMem*)((char*)cur+MEM_BLOCK_SIZE * blocks);
    80001d24:	00679713          	slli	a4,a5,0x6
    80001d28:	00e50733          	add	a4,a0,a4


			if(cur->prev) cur->prev->next = newfrgm;
    80001d2c:	01053683          	ld	a3,16(a0)
    80001d30:	08068063          	beqz	a3,80001db0 <_ZN15memoryAllocator8allocateEm+0xb4>
    80001d34:	00e6b423          	sd	a4,8(a3) # 1008 <_entry-0x7fffeff8>
			else fmem_head = newfrgm;

			if(cur->next) cur->next->prev = newfrgm;
    80001d38:	00853683          	ld	a3,8(a0)
    80001d3c:	00068463          	beqz	a3,80001d44 <_ZN15memoryAllocator8allocateEm+0x48>
    80001d40:	00e6b823          	sd	a4,16(a3)

			newfrgm-> prev = cur->prev;
    80001d44:	01053683          	ld	a3,16(a0)
    80001d48:	00d73823          	sd	a3,16(a4)
			newfrgm->next = cur->next;
    80001d4c:	00853683          	ld	a3,8(a0)
    80001d50:	00d73423          	sd	a3,8(a4)
			newfrgm-> size = cur -> size - blocks;
    80001d54:	00053683          	ld	a3,0(a0)
    80001d58:	40f686b3          	sub	a3,a3,a5
    80001d5c:	00d73023          	sd	a3,0(a4)
		}



		uint32* header = (uint32*)cur;
		*header = blocks;
    80001d60:	00f52023          	sw	a5,0(a0)

		return (void*)(header + 1);
    80001d64:	00450513          	addi	a0,a0,4
	}
	return nullptr;
}
    80001d68:	00813403          	ld	s0,8(sp)
    80001d6c:	01010113          	addi	sp,sp,16
    80001d70:	00008067          	ret
	for(FreeMem* cur= fmem_head;cur!=nullptr;cur=cur->next){
    80001d74:	00853503          	ld	a0,8(a0)
    80001d78:	f9dff06f          	j	80001d14 <_ZN15memoryAllocator8allocateEm+0x18>
			if(cur->prev) cur->prev->next = cur->next;
    80001d7c:	01053703          	ld	a4,16(a0)
    80001d80:	02070063          	beqz	a4,80001da0 <_ZN15memoryAllocator8allocateEm+0xa4>
    80001d84:	00853683          	ld	a3,8(a0)
    80001d88:	00d73423          	sd	a3,8(a4)
			if(cur->next) cur->next->prev = cur->prev;
    80001d8c:	00853703          	ld	a4,8(a0)
    80001d90:	fc0708e3          	beqz	a4,80001d60 <_ZN15memoryAllocator8allocateEm+0x64>
    80001d94:	01053683          	ld	a3,16(a0)
    80001d98:	00d73823          	sd	a3,16(a4)
    80001d9c:	fc5ff06f          	j	80001d60 <_ZN15memoryAllocator8allocateEm+0x64>
			else fmem_head = cur -> next;
    80001da0:	00853703          	ld	a4,8(a0)
    80001da4:	0000a697          	auipc	a3,0xa
    80001da8:	aee6b223          	sd	a4,-1308(a3) # 8000b888 <_ZN15memoryAllocator9fmem_headE>
    80001dac:	fe1ff06f          	j	80001d8c <_ZN15memoryAllocator8allocateEm+0x90>
			else fmem_head = newfrgm;
    80001db0:	0000a697          	auipc	a3,0xa
    80001db4:	ace6bc23          	sd	a4,-1320(a3) # 8000b888 <_ZN15memoryAllocator9fmem_headE>
    80001db8:	f81ff06f          	j	80001d38 <_ZN15memoryAllocator8allocateEm+0x3c>

0000000080001dbc <_ZN15memoryAllocator10deallocateEPv>:

int memoryAllocator::deallocate(void* ptr) {
    80001dbc:	ff010113          	addi	sp,sp,-16
    80001dc0:	00813423          	sd	s0,8(sp)
    80001dc4:	01010413          	addi	s0,sp,16
    if(!ptr) return -21;
    80001dc8:	0c050e63          	beqz	a0,80001ea4 <_ZN15memoryAllocator10deallocateEPv+0xe8>

    FreeMem* blockToFree = (FreeMem*)((char*)ptr - sizeof(uint32));
    80001dcc:	ffc50693          	addi	a3,a0,-4
    blockToFree->size = *((uint32*)blockToFree);
    80001dd0:	ffc56783          	lwu	a5,-4(a0)
    80001dd4:	fef53e23          	sd	a5,-4(a0)

    FreeMem* cur = fmem_head;
    80001dd8:	0000a797          	auipc	a5,0xa
    80001ddc:	ab07b783          	ld	a5,-1360(a5) # 8000b888 <_ZN15memoryAllocator9fmem_headE>
    FreeMem* prev = nullptr;
    80001de0:	00000713          	li	a4,0

    while(cur && cur < blockToFree) {
    80001de4:	00078a63          	beqz	a5,80001df8 <_ZN15memoryAllocator10deallocateEPv+0x3c>
    80001de8:	00d7f863          	bgeu	a5,a3,80001df8 <_ZN15memoryAllocator10deallocateEPv+0x3c>

        prev = cur;
    80001dec:	00078713          	mv	a4,a5
        cur = cur->next;
    80001df0:	0087b783          	ld	a5,8(a5)
    while(cur && cur < blockToFree) {
    80001df4:	ff1ff06f          	j	80001de4 <_ZN15memoryAllocator10deallocateEPv+0x28>
    }

    blockToFree->next = cur;
    80001df8:	00f53223          	sd	a5,4(a0)
    blockToFree->prev = prev;
    80001dfc:	00e53623          	sd	a4,12(a0)


    if(prev) {
    80001e00:	04070463          	beqz	a4,80001e48 <_ZN15memoryAllocator10deallocateEPv+0x8c>
        prev->next = blockToFree;
    80001e04:	00d73423          	sd	a3,8(a4)
    } else {
        fmem_head = blockToFree;
    }

    if(cur) {
    80001e08:	00078463          	beqz	a5,80001e10 <_ZN15memoryAllocator10deallocateEPv+0x54>
        cur->prev = blockToFree;
    80001e0c:	00d7b823          	sd	a3,16(a5)
    }

    if(prev && (char*)prev + prev->size * MEM_BLOCK_SIZE == (char*)blockToFree) {
    80001e10:	00070a63          	beqz	a4,80001e24 <_ZN15memoryAllocator10deallocateEPv+0x68>
    80001e14:	00073583          	ld	a1,0(a4)
    80001e18:	00659613          	slli	a2,a1,0x6
    80001e1c:	00c70633          	add	a2,a4,a2
    80001e20:	02d60a63          	beq	a2,a3,80001e54 <_ZN15memoryAllocator10deallocateEPv+0x98>
        }
        blockToFree = prev;
    }


    if(cur && (char*)blockToFree + blockToFree->size * MEM_BLOCK_SIZE == (char*)cur) {
    80001e24:	08078463          	beqz	a5,80001eac <_ZN15memoryAllocator10deallocateEPv+0xf0>
    80001e28:	0006b603          	ld	a2,0(a3)
    80001e2c:	00661713          	slli	a4,a2,0x6
    80001e30:	00e68733          	add	a4,a3,a4
    80001e34:	04f70663          	beq	a4,a5,80001e80 <_ZN15memoryAllocator10deallocateEPv+0xc4>
        if(cur->next) {
            cur->next->prev = blockToFree;
        }
    }

    return 0;
    80001e38:	00000513          	li	a0,0
}
    80001e3c:	00813403          	ld	s0,8(sp)
    80001e40:	01010113          	addi	sp,sp,16
    80001e44:	00008067          	ret
        fmem_head = blockToFree;
    80001e48:	0000a617          	auipc	a2,0xa
    80001e4c:	a4d63023          	sd	a3,-1472(a2) # 8000b888 <_ZN15memoryAllocator9fmem_headE>
    80001e50:	fb9ff06f          	j	80001e08 <_ZN15memoryAllocator10deallocateEPv+0x4c>
        prev->size += blockToFree->size;
    80001e54:	ffc53683          	ld	a3,-4(a0)
    80001e58:	00d585b3          	add	a1,a1,a3
    80001e5c:	00b73023          	sd	a1,0(a4)
        prev->next = blockToFree->next;
    80001e60:	00453683          	ld	a3,4(a0)
    80001e64:	00d73423          	sd	a3,8(a4)
        if(blockToFree->next) {
    80001e68:	00068863          	beqz	a3,80001e78 <_ZN15memoryAllocator10deallocateEPv+0xbc>
            blockToFree->next->prev = prev;
    80001e6c:	00e6b823          	sd	a4,16(a3)
        blockToFree = prev;
    80001e70:	00070693          	mv	a3,a4
    80001e74:	fb1ff06f          	j	80001e24 <_ZN15memoryAllocator10deallocateEPv+0x68>
    80001e78:	00070693          	mv	a3,a4
    80001e7c:	fa9ff06f          	j	80001e24 <_ZN15memoryAllocator10deallocateEPv+0x68>
        blockToFree->size += cur->size;
    80001e80:	0007b703          	ld	a4,0(a5)
    80001e84:	00e60633          	add	a2,a2,a4
    80001e88:	00c6b023          	sd	a2,0(a3)
        blockToFree->next = cur->next;
    80001e8c:	0087b783          	ld	a5,8(a5)
    80001e90:	00f6b423          	sd	a5,8(a3)
        if(cur->next) {
    80001e94:	02078063          	beqz	a5,80001eb4 <_ZN15memoryAllocator10deallocateEPv+0xf8>
            cur->next->prev = blockToFree;
    80001e98:	00d7b823          	sd	a3,16(a5)
    return 0;
    80001e9c:	00000513          	li	a0,0
    80001ea0:	f9dff06f          	j	80001e3c <_ZN15memoryAllocator10deallocateEPv+0x80>
    if(!ptr) return -21;
    80001ea4:	feb00513          	li	a0,-21
    80001ea8:	f95ff06f          	j	80001e3c <_ZN15memoryAllocator10deallocateEPv+0x80>
    return 0;
    80001eac:	00000513          	li	a0,0
    80001eb0:	f8dff06f          	j	80001e3c <_ZN15memoryAllocator10deallocateEPv+0x80>
    80001eb4:	00000513          	li	a0,0
    80001eb8:	f85ff06f          	j	80001e3c <_ZN15memoryAllocator10deallocateEPv+0x80>

0000000080001ebc <_Znwm>:


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001ebc:	ff010113          	addi	sp,sp,-16
    80001ec0:	00113423          	sd	ra,8(sp)
    80001ec4:	00813023          	sd	s0,0(sp)
    80001ec8:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001ecc:	fffff097          	auipc	ra,0xfffff
    80001ed0:	278080e7          	jalr	632(ra) # 80001144 <_Z9mem_allocm>
}
    80001ed4:	00813083          	ld	ra,8(sp)
    80001ed8:	00013403          	ld	s0,0(sp)
    80001edc:	01010113          	addi	sp,sp,16
    80001ee0:	00008067          	ret

0000000080001ee4 <_Znam>:

void *operator new[](size_t n)
{
    80001ee4:	ff010113          	addi	sp,sp,-16
    80001ee8:	00113423          	sd	ra,8(sp)
    80001eec:	00813023          	sd	s0,0(sp)
    80001ef0:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001ef4:	fffff097          	auipc	ra,0xfffff
    80001ef8:	250080e7          	jalr	592(ra) # 80001144 <_Z9mem_allocm>
}
    80001efc:	00813083          	ld	ra,8(sp)
    80001f00:	00013403          	ld	s0,0(sp)
    80001f04:	01010113          	addi	sp,sp,16
    80001f08:	00008067          	ret

0000000080001f0c <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001f0c:	ff010113          	addi	sp,sp,-16
    80001f10:	00113423          	sd	ra,8(sp)
    80001f14:	00813023          	sd	s0,0(sp)
    80001f18:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001f1c:	fffff097          	auipc	ra,0xfffff
    80001f20:	270080e7          	jalr	624(ra) # 8000118c <_Z8mem_freePv>
}
    80001f24:	00813083          	ld	ra,8(sp)
    80001f28:	00013403          	ld	s0,0(sp)
    80001f2c:	01010113          	addi	sp,sp,16
    80001f30:	00008067          	ret

0000000080001f34 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001f34:	ff010113          	addi	sp,sp,-16
    80001f38:	00113423          	sd	ra,8(sp)
    80001f3c:	00813023          	sd	s0,0(sp)
    80001f40:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001f44:	fffff097          	auipc	ra,0xfffff
    80001f48:	248080e7          	jalr	584(ra) # 8000118c <_Z8mem_freePv>
    80001f4c:	00813083          	ld	ra,8(sp)
    80001f50:	00013403          	ld	s0,0(sp)
    80001f54:	01010113          	addi	sp,sp,16
    80001f58:	00008067          	ret

0000000080001f5c <_ZN6Thread10runWrapperEPv>:
	this->body = runWrapper;
	this->arg = nullptr;
	thread_create_but_dont_start(&this->myHandle, runWrapper, this);
}

void Thread::runWrapper(void *torun) {
    80001f5c:	ff010113          	addi	sp,sp,-16
    80001f60:	00113423          	sd	ra,8(sp)
    80001f64:	00813023          	sd	s0,0(sp)
    80001f68:	01010413          	addi	s0,sp,16
	((Thread*)torun)->run();
    80001f6c:	00053783          	ld	a5,0(a0)
    80001f70:	0107b783          	ld	a5,16(a5)
    80001f74:	000780e7          	jalr	a5
}
    80001f78:	00813083          	ld	ra,8(sp)
    80001f7c:	00013403          	ld	s0,0(sp)
    80001f80:	01010113          	addi	sp,sp,16
    80001f84:	00008067          	ret

0000000080001f88 <_ZN6ThreadD1Ev>:
Thread::~Thread(){
    80001f88:	00009797          	auipc	a5,0x9
    80001f8c:	65878793          	addi	a5,a5,1624 # 8000b5e0 <_ZTV6Thread+0x10>
    80001f90:	00f53023          	sd	a5,0(a0)
	delete myHandle;
    80001f94:	00853503          	ld	a0,8(a0)
    80001f98:	02050663          	beqz	a0,80001fc4 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread(){
    80001f9c:	ff010113          	addi	sp,sp,-16
    80001fa0:	00113423          	sd	ra,8(sp)
    80001fa4:	00813023          	sd	s0,0(sp)
    80001fa8:	01010413          	addi	s0,sp,16
        memoryAllocator::deallocate(ptr);
    80001fac:	00000097          	auipc	ra,0x0
    80001fb0:	e10080e7          	jalr	-496(ra) # 80001dbc <_ZN15memoryAllocator10deallocateEPv>
}
    80001fb4:	00813083          	ld	ra,8(sp)
    80001fb8:	00013403          	ld	s0,0(sp)
    80001fbc:	01010113          	addi	sp,sp,16
    80001fc0:	00008067          	ret
    80001fc4:	00008067          	ret

0000000080001fc8 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned init) {
	sem_open(&this->myHandle, init);
}

Semaphore::~Semaphore() {
    80001fc8:	00009797          	auipc	a5,0x9
    80001fcc:	64078793          	addi	a5,a5,1600 # 8000b608 <_ZTV9Semaphore+0x10>
    80001fd0:	00f53023          	sd	a5,0(a0)

	delete myHandle;
    80001fd4:	00853503          	ld	a0,8(a0)
    80001fd8:	02050663          	beqz	a0,80002004 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80001fdc:	ff010113          	addi	sp,sp,-16
    80001fe0:	00113423          	sd	ra,8(sp)
    80001fe4:	00813023          	sd	s0,0(sp)
    80001fe8:	01010413          	addi	s0,sp,16
        }
        return memoryAllocator::allocate(blocks);
    }

    void operator delete(void *ptr) {
        memoryAllocator::deallocate(ptr);
    80001fec:	00000097          	auipc	ra,0x0
    80001ff0:	dd0080e7          	jalr	-560(ra) # 80001dbc <_ZN15memoryAllocator10deallocateEPv>

}
    80001ff4:	00813083          	ld	ra,8(sp)
    80001ff8:	00013403          	ld	s0,0(sp)
    80001ffc:	01010113          	addi	sp,sp,16
    80002000:	00008067          	ret
    80002004:	00008067          	ret

0000000080002008 <_ZN6ThreadD0Ev>:
Thread::~Thread(){
    80002008:	fe010113          	addi	sp,sp,-32
    8000200c:	00113c23          	sd	ra,24(sp)
    80002010:	00813823          	sd	s0,16(sp)
    80002014:	00913423          	sd	s1,8(sp)
    80002018:	02010413          	addi	s0,sp,32
    8000201c:	00050493          	mv	s1,a0
}
    80002020:	00000097          	auipc	ra,0x0
    80002024:	f68080e7          	jalr	-152(ra) # 80001f88 <_ZN6ThreadD1Ev>
    80002028:	00048513          	mv	a0,s1
    8000202c:	00000097          	auipc	ra,0x0
    80002030:	ee0080e7          	jalr	-288(ra) # 80001f0c <_ZdlPv>
    80002034:	01813083          	ld	ra,24(sp)
    80002038:	01013403          	ld	s0,16(sp)
    8000203c:	00813483          	ld	s1,8(sp)
    80002040:	02010113          	addi	sp,sp,32
    80002044:	00008067          	ret

0000000080002048 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002048:	fe010113          	addi	sp,sp,-32
    8000204c:	00113c23          	sd	ra,24(sp)
    80002050:	00813823          	sd	s0,16(sp)
    80002054:	00913423          	sd	s1,8(sp)
    80002058:	02010413          	addi	s0,sp,32
    8000205c:	00050493          	mv	s1,a0
}
    80002060:	00000097          	auipc	ra,0x0
    80002064:	f68080e7          	jalr	-152(ra) # 80001fc8 <_ZN9SemaphoreD1Ev>
    80002068:	00048513          	mv	a0,s1
    8000206c:	00000097          	auipc	ra,0x0
    80002070:	ea0080e7          	jalr	-352(ra) # 80001f0c <_ZdlPv>
    80002074:	01813083          	ld	ra,24(sp)
    80002078:	01013403          	ld	s0,16(sp)
    8000207c:	00813483          	ld	s1,8(sp)
    80002080:	02010113          	addi	sp,sp,32
    80002084:	00008067          	ret

0000000080002088 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread (void (*body)(void*), void* arg) {
    80002088:	ff010113          	addi	sp,sp,-16
    8000208c:	00113423          	sd	ra,8(sp)
    80002090:	00813023          	sd	s0,0(sp)
    80002094:	01010413          	addi	s0,sp,16
    80002098:	00009797          	auipc	a5,0x9
    8000209c:	54878793          	addi	a5,a5,1352 # 8000b5e0 <_ZTV6Thread+0x10>
    800020a0:	00f53023          	sd	a5,0(a0)
	this->arg=arg;
    800020a4:	00c53c23          	sd	a2,24(a0)
	this->body=body;
    800020a8:	00b53823          	sd	a1,16(a0)
	thread_create(&this->myHandle, body, arg);
    800020ac:	00850513          	addi	a0,a0,8
    800020b0:	fffff097          	auipc	ra,0xfffff
    800020b4:	10c080e7          	jalr	268(ra) # 800011bc <_Z13thread_createPP3TCBPFvPvES2_>
}
    800020b8:	00813083          	ld	ra,8(sp)
    800020bc:	00013403          	ld	s0,0(sp)
    800020c0:	01010113          	addi	sp,sp,16
    800020c4:	00008067          	ret

00000000800020c8 <_ZN6Thread5startEv>:
int Thread::start() {
    800020c8:	ff010113          	addi	sp,sp,-16
    800020cc:	00113423          	sd	ra,8(sp)
    800020d0:	00813023          	sd	s0,0(sp)
    800020d4:	01010413          	addi	s0,sp,16
	thread_start(myHandle);
    800020d8:	00853503          	ld	a0,8(a0)
    800020dc:	fffff097          	auipc	ra,0xfffff
    800020e0:	230080e7          	jalr	560(ra) # 8000130c <_Z12thread_startP3TCB>
}
    800020e4:	00000513          	li	a0,0
    800020e8:	00813083          	ld	ra,8(sp)
    800020ec:	00013403          	ld	s0,0(sp)
    800020f0:	01010113          	addi	sp,sp,16
    800020f4:	00008067          	ret

00000000800020f8 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800020f8:	ff010113          	addi	sp,sp,-16
    800020fc:	00113423          	sd	ra,8(sp)
    80002100:	00813023          	sd	s0,0(sp)
    80002104:	01010413          	addi	s0,sp,16
    80002108:	00009797          	auipc	a5,0x9
    8000210c:	4d878793          	addi	a5,a5,1240 # 8000b5e0 <_ZTV6Thread+0x10>
    80002110:	00f53023          	sd	a5,0(a0)
	this->body = runWrapper;
    80002114:	00000597          	auipc	a1,0x0
    80002118:	e4858593          	addi	a1,a1,-440 # 80001f5c <_ZN6Thread10runWrapperEPv>
    8000211c:	00b53823          	sd	a1,16(a0)
	this->arg = nullptr;
    80002120:	00053c23          	sd	zero,24(a0)
	thread_create_but_dont_start(&this->myHandle, runWrapper, this);
    80002124:	00050613          	mv	a2,a0
    80002128:	00850513          	addi	a0,a0,8
    8000212c:	fffff097          	auipc	ra,0xfffff
    80002130:	138080e7          	jalr	312(ra) # 80001264 <_Z28thread_create_but_dont_startPP3TCBPFvPvES2_>
}
    80002134:	00813083          	ld	ra,8(sp)
    80002138:	00013403          	ld	s0,0(sp)
    8000213c:	01010113          	addi	sp,sp,16
    80002140:	00008067          	ret

0000000080002144 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002144:	ff010113          	addi	sp,sp,-16
    80002148:	00113423          	sd	ra,8(sp)
    8000214c:	00813023          	sd	s0,0(sp)
    80002150:	01010413          	addi	s0,sp,16
	thread_dispatch();
    80002154:	fffff097          	auipc	ra,0xfffff
    80002158:	1e0080e7          	jalr	480(ra) # 80001334 <_Z15thread_dispatchv>
}
    8000215c:	00813083          	ld	ra,8(sp)
    80002160:	00013403          	ld	s0,0(sp)
    80002164:	01010113          	addi	sp,sp,16
    80002168:	00008067          	ret

000000008000216c <_ZN6Thread5getIdEv>:
int Thread::getId() {
    8000216c:	ff010113          	addi	sp,sp,-16
    80002170:	00113423          	sd	ra,8(sp)
    80002174:	00813023          	sd	s0,0(sp)
    80002178:	01010413          	addi	s0,sp,16
	return getThreadId();
    8000217c:	fffff097          	auipc	ra,0xfffff
    80002180:	208080e7          	jalr	520(ra) # 80001384 <_Z11getThreadIdv>
}
    80002184:	00813083          	ld	ra,8(sp)
    80002188:	00013403          	ld	s0,0(sp)
    8000218c:	01010113          	addi	sp,sp,16
    80002190:	00008067          	ret

0000000080002194 <_ZN6Thread6setMaxEi>:
void Thread::setMax(int max){
    80002194:	ff010113          	addi	sp,sp,-16
    80002198:	00113423          	sd	ra,8(sp)
    8000219c:	00813023          	sd	s0,0(sp)
    800021a0:	01010413          	addi	s0,sp,16
	setMaxThreads(max);
    800021a4:	fffff097          	auipc	ra,0xfffff
    800021a8:	20c080e7          	jalr	524(ra) # 800013b0 <_Z13setMaxThreadsi>
}
    800021ac:	00813083          	ld	ra,8(sp)
    800021b0:	00013403          	ld	s0,0(sp)
    800021b4:	01010113          	addi	sp,sp,16
    800021b8:	00008067          	ret

00000000800021bc <_ZN6Thread4joinEv>:
void Thread::join() {
    800021bc:	ff010113          	addi	sp,sp,-16
    800021c0:	00113423          	sd	ra,8(sp)
    800021c4:	00813023          	sd	s0,0(sp)
    800021c8:	01010413          	addi	s0,sp,16
	thread_join(myHandle);
    800021cc:	00853503          	ld	a0,8(a0)
    800021d0:	fffff097          	auipc	ra,0xfffff
    800021d4:	208080e7          	jalr	520(ra) # 800013d8 <_Z11thread_joinP3TCB>
}
    800021d8:	00813083          	ld	ra,8(sp)
    800021dc:	00013403          	ld	s0,0(sp)
    800021e0:	01010113          	addi	sp,sp,16
    800021e4:	00008067          	ret

00000000800021e8 <_ZN6Thread4openEv>:
void Thread::open() {
    800021e8:	ff010113          	addi	sp,sp,-16
    800021ec:	00113423          	sd	ra,8(sp)
    800021f0:	00813023          	sd	s0,0(sp)
    800021f4:	01010413          	addi	s0,sp,16
	barrier_open(myHandle);
    800021f8:	00853503          	ld	a0,8(a0)
    800021fc:	fffff097          	auipc	ra,0xfffff
    80002200:	204080e7          	jalr	516(ra) # 80001400 <_Z12barrier_openP3TCB>
}
    80002204:	00813083          	ld	ra,8(sp)
    80002208:	00013403          	ld	s0,0(sp)
    8000220c:	01010113          	addi	sp,sp,16
    80002210:	00008067          	ret

0000000080002214 <_ZN6Thread4passEv>:
void Thread::pass() {
    80002214:	ff010113          	addi	sp,sp,-16
    80002218:	00113423          	sd	ra,8(sp)
    8000221c:	00813023          	sd	s0,0(sp)
    80002220:	01010413          	addi	s0,sp,16
	barrier_pass(myHandle);
    80002224:	00853503          	ld	a0,8(a0)
    80002228:	fffff097          	auipc	ra,0xfffff
    8000222c:	228080e7          	jalr	552(ra) # 80001450 <_Z12barrier_passP3TCB>
}
    80002230:	00813083          	ld	ra,8(sp)
    80002234:	00013403          	ld	s0,0(sp)
    80002238:	01010113          	addi	sp,sp,16
    8000223c:	00008067          	ret

0000000080002240 <_ZN6Thread5closeEv>:
void Thread::close() {
    80002240:	ff010113          	addi	sp,sp,-16
    80002244:	00113423          	sd	ra,8(sp)
    80002248:	00813023          	sd	s0,0(sp)
    8000224c:	01010413          	addi	s0,sp,16
	barrier_close(myHandle);
    80002250:	00853503          	ld	a0,8(a0)
    80002254:	fffff097          	auipc	ra,0xfffff
    80002258:	1d4080e7          	jalr	468(ra) # 80001428 <_Z13barrier_closeP3TCB>
}
    8000225c:	00813083          	ld	ra,8(sp)
    80002260:	00013403          	ld	s0,0(sp)
    80002264:	01010113          	addi	sp,sp,16
    80002268:	00008067          	ret

000000008000226c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    8000226c:	ff010113          	addi	sp,sp,-16
    80002270:	00113423          	sd	ra,8(sp)
    80002274:	00813023          	sd	s0,0(sp)
    80002278:	01010413          	addi	s0,sp,16
    8000227c:	00009797          	auipc	a5,0x9
    80002280:	38c78793          	addi	a5,a5,908 # 8000b608 <_ZTV9Semaphore+0x10>
    80002284:	00f53023          	sd	a5,0(a0)
	sem_open(&this->myHandle, init);
    80002288:	00850513          	addi	a0,a0,8
    8000228c:	fffff097          	auipc	ra,0xfffff
    80002290:	1ec080e7          	jalr	492(ra) # 80001478 <_Z8sem_openPP3semj>
}
    80002294:	00813083          	ld	ra,8(sp)
    80002298:	00013403          	ld	s0,0(sp)
    8000229c:	01010113          	addi	sp,sp,16
    800022a0:	00008067          	ret

00000000800022a4 <_ZN9Semaphore4waitEv>:


int Semaphore::wait() {
    800022a4:	ff010113          	addi	sp,sp,-16
    800022a8:	00113423          	sd	ra,8(sp)
    800022ac:	00813023          	sd	s0,0(sp)
    800022b0:	01010413          	addi	s0,sp,16
	return sem_wait(myHandle);
    800022b4:	00853503          	ld	a0,8(a0)
    800022b8:	fffff097          	auipc	ra,0xfffff
    800022bc:	224080e7          	jalr	548(ra) # 800014dc <_Z8sem_waitP3sem>
}
    800022c0:	00813083          	ld	ra,8(sp)
    800022c4:	00013403          	ld	s0,0(sp)
    800022c8:	01010113          	addi	sp,sp,16
    800022cc:	00008067          	ret

00000000800022d0 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    800022d0:	ff010113          	addi	sp,sp,-16
    800022d4:	00113423          	sd	ra,8(sp)
    800022d8:	00813023          	sd	s0,0(sp)
    800022dc:	01010413          	addi	s0,sp,16
	return sem_signal(myHandle);
    800022e0:	00853503          	ld	a0,8(a0)
    800022e4:	fffff097          	auipc	ra,0xfffff
    800022e8:	228080e7          	jalr	552(ra) # 8000150c <_Z10sem_signalP3sem>
}
    800022ec:	00813083          	ld	ra,8(sp)
    800022f0:	00013403          	ld	s0,0(sp)
    800022f4:	01010113          	addi	sp,sp,16
    800022f8:	00008067          	ret

00000000800022fc <_ZN9Semaphore7tryWaitEv>:
int Semaphore::tryWait() {
    800022fc:	ff010113          	addi	sp,sp,-16
    80002300:	00113423          	sd	ra,8(sp)
    80002304:	00813023          	sd	s0,0(sp)
    80002308:	01010413          	addi	s0,sp,16
	return sem_trywait(myHandle);
    8000230c:	00853503          	ld	a0,8(a0)
    80002310:	fffff097          	auipc	ra,0xfffff
    80002314:	22c080e7          	jalr	556(ra) # 8000153c <_Z11sem_trywaitP3sem>
}
    80002318:	00813083          	ld	ra,8(sp)
    8000231c:	00013403          	ld	s0,0(sp)
    80002320:	01010113          	addi	sp,sp,16
    80002324:	00008067          	ret

0000000080002328 <_ZN7Console4getcEv>:

char Console::getc () {
    80002328:	ff010113          	addi	sp,sp,-16
    8000232c:	00813423          	sd	s0,8(sp)
    80002330:	01010413          	addi	s0,sp,16
	__asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::GET_C));
    80002334:	04100793          	li	a5,65
    80002338:	00078513          	mv	a0,a5

	__asm__ volatile("ecall");
    8000233c:	00000073          	ecall

	char res;
	__asm__ volatile ("mv %0, a0" : "=r" (res));
    80002340:	00050513          	mv	a0,a0
	return res;
}
    80002344:	0ff57513          	andi	a0,a0,255
    80002348:	00813403          	ld	s0,8(sp)
    8000234c:	01010113          	addi	sp,sp,16
    80002350:	00008067          	ret

0000000080002354 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002354:	ff010113          	addi	sp,sp,-16
    80002358:	00813423          	sd	s0,8(sp)
    8000235c:	01010413          	addi	s0,sp,16
	__asm__ volatile("mv a1, %0" : : "r" (c));
    80002360:	00050593          	mv	a1,a0

	__asm__ volatile("mv a0, %0" : : "r" (SyscallCodes::PUT_C));
    80002364:	04200793          	li	a5,66
    80002368:	00078513          	mv	a0,a5

	__asm__ volatile("ecall");
    8000236c:	00000073          	ecall
}
    80002370:	00813403          	ld	s0,8(sp)
    80002374:	01010113          	addi	sp,sp,16
    80002378:	00008067          	ret

000000008000237c <_ZN6Thread3runEv>:
    void pass();
    void close();

protected:
    Thread();
    virtual void run(){};
    8000237c:	ff010113          	addi	sp,sp,-16
    80002380:	00813423          	sd	s0,8(sp)
    80002384:	01010413          	addi	s0,sp,16
    80002388:	00813403          	ld	s0,8(sp)
    8000238c:	01010113          	addi	sp,sp,16
    80002390:	00008067          	ret

0000000080002394 <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/sem.hpp"
#include "../h/scheduler.hpp"

void Riscv::popSppSpie()
{
    80002394:	ff010113          	addi	sp,sp,-16
    80002398:	00813423          	sd	s0,8(sp)
    8000239c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800023a0:	10000793          	li	a5,256
    800023a4:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile ("csrw sepc, ra");
    800023a8:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800023ac:	10200073          	sret

}
    800023b0:	00813403          	ld	s0,8(sp)
    800023b4:	01010113          	addi	sp,sp,16
    800023b8:	00008067          	ret

00000000800023bc <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    800023bc:	fb010113          	addi	sp,sp,-80
    800023c0:	04113423          	sd	ra,72(sp)
    800023c4:	04813023          	sd	s0,64(sp)
    800023c8:	02913c23          	sd	s1,56(sp)
    800023cc:	03213823          	sd	s2,48(sp)
    800023d0:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800023d4:	142027f3          	csrr	a5,scause
    800023d8:	fcf43023          	sd	a5,-64(s0)
    return scause;
    800023dc:	fc043783          	ld	a5,-64(s0)

    uint64 volatile scause = r_scause();
    800023e0:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800023e4:	141027f3          	csrr	a5,sepc
    800023e8:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    800023ec:	fb843783          	ld	a5,-72(s0)
    uint64 volatile sepc = r_sepc() + 4;
    800023f0:	00478793          	addi	a5,a5,4
    800023f4:	fcf43823          	sd	a5,-48(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800023f8:	100027f3          	csrr	a5,sstatus
    800023fc:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80002400:	fb043783          	ld	a5,-80(s0)
    uint64 volatile sstatus = r_sstatus();
    80002404:	fcf43423          	sd	a5,-56(s0)


    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){
    80002408:	fd843703          	ld	a4,-40(s0)
    8000240c:	00800793          	li	a5,8
    80002410:	04f70463          	beq	a4,a5,80002458 <_ZN5Riscv20handleSupervisorTrapEv+0x9c>
    80002414:	fd843703          	ld	a4,-40(s0)
    80002418:	00900793          	li	a5,9
    8000241c:	02f70e63          	beq	a4,a5,80002458 <_ZN5Riscv20handleSupervisorTrapEv+0x9c>

        w_sstatus(sstatus);
        w_sepc(sepc);

    }
    else if(scause == 0x8000000000000001UL)
    80002420:	fd843703          	ld	a4,-40(s0)
    80002424:	fff00793          	li	a5,-1
    80002428:	03f79793          	slli	a5,a5,0x3f
    8000242c:	00178793          	addi	a5,a5,1
    80002430:	36f70263          	beq	a4,a5,80002794 <_ZN5Riscv20handleSupervisorTrapEv+0x3d8>
    {
        mc_sip(SIP_SSIE);
    }
    else if (scause == 0x8000000000000009UL)
    80002434:	fd843703          	ld	a4,-40(s0)
    80002438:	fff00793          	li	a5,-1
    8000243c:	03f79793          	slli	a5,a5,0x3f
    80002440:	00978793          	addi	a5,a5,9
    80002444:	34f70e63          	beq	a4,a5,800027a0 <_ZN5Riscv20handleSupervisorTrapEv+0x3e4>
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    }
    else
    {
        printInteger1(scause);
    80002448:	fd843503          	ld	a0,-40(s0)
    8000244c:	00001097          	auipc	ra,0x1
    80002450:	8a4080e7          	jalr	-1884(ra) # 80002cf0 <_Z13printInteger1m>
    }

    80002454:	0dc0006f          	j	80002530 <_ZN5Riscv20handleSupervisorTrapEv+0x174>
        __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002458:	00050793          	mv	a5,a0
        if(syscall_code == SyscallCodes::MEM_ALLOC)
    8000245c:	00100713          	li	a4,1
    80002460:	0ae78863          	beq	a5,a4,80002510 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
        else if(syscall_code == SyscallCodes::MEM_FREE)
    80002464:	00200713          	li	a4,2
    80002468:	0ee78063          	beq	a5,a4,80002548 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
        else if(syscall_code == SyscallCodes::THREAD_CREATE)
    8000246c:	01100713          	li	a4,17
    80002470:	0ee78663          	beq	a5,a4,8000255c <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
        else if(syscall_code == SyscallCodes::THREAD_CREATE_BUT_NO_START)
    80002474:	01000713          	li	a4,16
    80002478:	10e78e63          	beq	a5,a4,80002594 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
        else if(syscall_code == SyscallCodes::THREAD_START)
    8000247c:	01400713          	li	a4,20
    80002480:	12e78e63          	beq	a5,a4,800025bc <_ZN5Riscv20handleSupervisorTrapEv+0x200>
        else if(syscall_code == SyscallCodes::THREAD_DISPATCH) {
    80002484:	01300713          	li	a4,19
    80002488:	1ce78a63          	beq	a5,a4,8000265c <_ZN5Riscv20handleSupervisorTrapEv+0x2a0>
        else if(syscall_code == SyscallCodes::THREAD_EXIT) {
    8000248c:	01200713          	li	a4,18
    80002490:	1ce78c63          	beq	a5,a4,80002668 <_ZN5Riscv20handleSupervisorTrapEv+0x2ac>
        else if(syscall_code == SyscallCodes::THREAD_GET_ID) {
    80002494:	01500713          	li	a4,21
    80002498:	1ee78063          	beq	a5,a4,80002678 <_ZN5Riscv20handleSupervisorTrapEv+0x2bc>
        else if(syscall_code == SyscallCodes::THREAD_SET_MAX) {
    8000249c:	01600713          	li	a4,22
    800024a0:	1ee78863          	beq	a5,a4,80002690 <_ZN5Riscv20handleSupervisorTrapEv+0x2d4>
        else if(syscall_code == SyscallCodes::THREAD_JOIN) {
    800024a4:	01700713          	li	a4,23
    800024a8:	1ee78e63          	beq	a5,a4,800026a4 <_ZN5Riscv20handleSupervisorTrapEv+0x2e8>
        else if(syscall_code == SyscallCodes::BARRIER_OPEN) {
    800024ac:	01800713          	li	a4,24
    800024b0:	20e78263          	beq	a5,a4,800026b4 <_ZN5Riscv20handleSupervisorTrapEv+0x2f8>
        else if(syscall_code == SyscallCodes::BARRIER_PASS) {
    800024b4:	01900713          	li	a4,25
    800024b8:	20e78863          	beq	a5,a4,800026c8 <_ZN5Riscv20handleSupervisorTrapEv+0x30c>
        else if(syscall_code == SyscallCodes::BARRIER_CLOSE) {
    800024bc:	02000713          	li	a4,32
    800024c0:	24e78063          	beq	a5,a4,80002700 <_ZN5Riscv20handleSupervisorTrapEv+0x344>
        else if(syscall_code == SyscallCodes::SEM_OPEN) {
    800024c4:	02100713          	li	a4,33
    800024c8:	24e78463          	beq	a5,a4,80002710 <_ZN5Riscv20handleSupervisorTrapEv+0x354>
        else if(syscall_code == SyscallCodes::SEM_CLOSE) {
    800024cc:	02200713          	li	a4,34
    800024d0:	26e78263          	beq	a5,a4,80002734 <_ZN5Riscv20handleSupervisorTrapEv+0x378>
        else if(syscall_code== SyscallCodes::SEM_WAIT) {
    800024d4:	02300713          	li	a4,35
    800024d8:	26e78863          	beq	a5,a4,80002748 <_ZN5Riscv20handleSupervisorTrapEv+0x38c>
        else if(syscall_code== SyscallCodes::SEM_SIGNAL) {
    800024dc:	02400713          	li	a4,36
    800024e0:	26e78e63          	beq	a5,a4,8000275c <_ZN5Riscv20handleSupervisorTrapEv+0x3a0>
        else if(syscall_code== SyscallCodes::SEM_TRYWAIT) {
    800024e4:	02600713          	li	a4,38
    800024e8:	28e78463          	beq	a5,a4,80002770 <_ZN5Riscv20handleSupervisorTrapEv+0x3b4>
        else if(syscall_code == SyscallCodes::GET_C) {
    800024ec:	04100713          	li	a4,65
    800024f0:	28e78a63          	beq	a5,a4,80002784 <_ZN5Riscv20handleSupervisorTrapEv+0x3c8>
        else if(syscall_code == SyscallCodes::PUT_C) {
    800024f4:	04200713          	li	a4,66
    800024f8:	02e79463          	bne	a5,a4,80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            __asm__ volatile("mv %0, a1" : "=r" (c));
    800024fc:	00058513          	mv	a0,a1
            __putc(c);
    80002500:	0ff57513          	andi	a0,a0,255
    80002504:	00006097          	auipc	ra,0x6
    80002508:	008080e7          	jalr	8(ra) # 8000850c <__putc>
    8000250c:	0140006f          	j	80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            __asm__ volatile("mv %0, a1" : "=r"(blocks));
    80002510:	00058513          	mv	a0,a1
            void* allocated_mem = memoryAllocator::allocate(blocks);
    80002514:	fffff097          	auipc	ra,0xfffff
    80002518:	7e8080e7          	jalr	2024(ra) # 80001cfc <_ZN15memoryAllocator8allocateEm>
            __asm__ volatile("sd %0, 80(x8)": : "r"(allocated_mem));
    8000251c:	04a43823          	sd	a0,80(s0)
        w_sstatus(sstatus);
    80002520:	fc843783          	ld	a5,-56(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002524:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002528:	fd043783          	ld	a5,-48(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000252c:	14179073          	csrw	sepc,a5
    80002530:	04813083          	ld	ra,72(sp)
    80002534:	04013403          	ld	s0,64(sp)
    80002538:	03813483          	ld	s1,56(sp)
    8000253c:	03013903          	ld	s2,48(sp)
    80002540:	05010113          	addi	sp,sp,80
    80002544:	00008067          	ret
            __asm__ volatile("mv %0, a1" : "=r" (ptr));
    80002548:	00058513          	mv	a0,a1
            int code = memoryAllocator::deallocate((void*)ptr);
    8000254c:	00000097          	auipc	ra,0x0
    80002550:	870080e7          	jalr	-1936(ra) # 80001dbc <_ZN15memoryAllocator10deallocateEPv>
            __asm__ volatile("sd %0, 80(x8)": : "r" (code));
    80002554:	04a43823          	sd	a0,80(s0)
    80002558:	fc9ff06f          	j	80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            __asm__ volatile("ld %0, 88(x8)" : "=r" (handle));
    8000255c:	05843903          	ld	s2,88(s0)
            __asm__ volatile("ld %0, 96(x8)" : "=r" (start_routine));
    80002560:	06043483          	ld	s1,96(s0)
            __asm__ volatile("ld %0, 104(x8)" : "=r" (arg));
    80002564:	06843583          	ld	a1,104(s0)
            __asm__ volatile("ld %0, 112(x8)" : "=r" (stack_space));
    80002568:	07043603          	ld	a2,112(s0)
            *handle = TCB::thread_create(start_routine, arg, stack_space);
    8000256c:	00048513          	mv	a0,s1
    80002570:	fffff097          	auipc	ra,0xfffff
    80002574:	2e0080e7          	jalr	736(ra) # 80001850 <_ZN3TCB13thread_createEPFvPvES0_S0_>
    80002578:	00a93023          	sd	a0,0(s2)
            if (start_routine != nullptr) { Scheduler::put(*handle); }
    8000257c:	00048663          	beqz	s1,80002588 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
    80002580:	00000097          	auipc	ra,0x0
    80002584:	570080e7          	jalr	1392(ra) # 80002af0 <_ZN9Scheduler3putEP3TCB>
            __asm__ volatile("sd %0, 80(x8)" : : "r"(0));
    80002588:	00000793          	li	a5,0
    8000258c:	04f43823          	sd	a5,80(s0)
    80002590:	f91ff06f          	j	80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            __asm__ volatile("ld %0, 88(x8)" : "=r" (handle));
    80002594:	05843483          	ld	s1,88(s0)
            __asm__ volatile("ld %0, 96(x8)" : "=r" (start_routine));
    80002598:	06043503          	ld	a0,96(s0)
            __asm__ volatile("ld %0, 104(x8)" : "=r" (arg));
    8000259c:	06843583          	ld	a1,104(s0)
            __asm__ volatile("ld %0, 112(x8)" : "=r" (stack_space));
    800025a0:	07043603          	ld	a2,112(s0)
            *handle = TCB::thread_create(start_routine, arg, stack_space);
    800025a4:	fffff097          	auipc	ra,0xfffff
    800025a8:	2ac080e7          	jalr	684(ra) # 80001850 <_ZN3TCB13thread_createEPFvPvES0_S0_>
    800025ac:	00a4b023          	sd	a0,0(s1)
            __asm__ volatile("sd %0, 80(x8)" : : "r"(0));
    800025b0:	00000793          	li	a5,0
    800025b4:	04f43823          	sd	a5,80(s0)
    800025b8:	f69ff06f          	j	80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            __asm__ volatile("mv %0, a1" : "=r" (handle));
    800025bc:	00058493          	mv	s1,a1
    static int getActive() { return active; }
    800025c0:	00009797          	auipc	a5,0x9
    800025c4:	2087b783          	ld	a5,520(a5) # 8000b7c8 <_GLOBAL_OFFSET_TABLE_+0x8>
    800025c8:	0007a783          	lw	a5,0(a5)
    static int getMax() { return max; }
    800025cc:	00009717          	auipc	a4,0x9
    800025d0:	21c73703          	ld	a4,540(a4) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800025d4:	00072703          	lw	a4,0(a4)
            if(TCB::getActive()>=TCB::getMax()) {
    800025d8:	04e7c863          	blt	a5,a4,80002628 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
            return memoryAllocator::allocate(blocks);
    800025dc:	00100513          	li	a0,1
    800025e0:	fffff097          	auipc	ra,0xfffff
    800025e4:	71c080e7          	jalr	1820(ra) # 80001cfc <_ZN15memoryAllocator8allocateEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800025e8:	00953023          	sd	s1,0(a0)
    800025ec:	00053423          	sd	zero,8(a0)
        if (tail) {
    800025f0:	00009797          	auipc	a5,0x9
    800025f4:	2007b783          	ld	a5,512(a5) # 8000b7f0 <_GLOBAL_OFFSET_TABLE_+0x30>
    800025f8:	0087b783          	ld	a5,8(a5)
    800025fc:	00078c63          	beqz	a5,80002614 <_ZN5Riscv20handleSupervisorTrapEv+0x258>
            tail->next = elem;
    80002600:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002604:	00009797          	auipc	a5,0x9
    80002608:	1ec7b783          	ld	a5,492(a5) # 8000b7f0 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000260c:	00a7b423          	sd	a0,8(a5)
    80002610:	f11ff06f          	j	80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            head = tail = elem;
    80002614:	00009797          	auipc	a5,0x9
    80002618:	1dc7b783          	ld	a5,476(a5) # 8000b7f0 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000261c:	00a7b423          	sd	a0,8(a5)
    80002620:	00a7b023          	sd	a0,0(a5)
    80002624:	efdff06f          	j	80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
                printString1("pustio jednu\n");
    80002628:	00007517          	auipc	a0,0x7
    8000262c:	c8050513          	addi	a0,a0,-896 # 800092a8 <CONSOLE_STATUS+0x298>
    80002630:	00000097          	auipc	ra,0x0
    80002634:	67c080e7          	jalr	1660(ra) # 80002cac <_Z12printString1PKc>
    static int getActive() { return active; }
    80002638:	00009717          	auipc	a4,0x9
    8000263c:	19073703          	ld	a4,400(a4) # 8000b7c8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002640:	00072783          	lw	a5,0(a4)
                TCB::setActive(TCB::getActive()+1);
    80002644:	0017879b          	addiw	a5,a5,1
    static void setActive(int value) { active = value; }
    80002648:	00f72023          	sw	a5,0(a4)
                Scheduler::put(handle);
    8000264c:	00048513          	mv	a0,s1
    80002650:	00000097          	auipc	ra,0x0
    80002654:	4a0080e7          	jalr	1184(ra) # 80002af0 <_ZN9Scheduler3putEP3TCB>
    80002658:	ec9ff06f          	j	80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            TCB::thread_dispatch();
    8000265c:	fffff097          	auipc	ra,0xfffff
    80002660:	2ac080e7          	jalr	684(ra) # 80001908 <_ZN3TCB15thread_dispatchEv>
    80002664:	ebdff06f          	j	80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            int res = TCB::thread_exit();
    80002668:	fffff097          	auipc	ra,0xfffff
    8000266c:	39c080e7          	jalr	924(ra) # 80001a04 <_ZN3TCB11thread_exitEv>
            __asm__ volatile("sd %0, 80(x8)" : : "r"(res));
    80002670:	04a43823          	sd	a0,80(s0)
    80002674:	eadff06f          	j	80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            int res = TCB::getThreadId();
    80002678:	fffff097          	auipc	ra,0xfffff
    8000267c:	3ec080e7          	jalr	1004(ra) # 80001a64 <_ZN3TCB11getThreadIdEv>
            __asm__ volatile("sd %0, 80(x8)" : : "r"(res));
    80002680:	04a43823          	sd	a0,80(s0)
            TCB::thread_dispatch();
    80002684:	fffff097          	auipc	ra,0xfffff
    80002688:	284080e7          	jalr	644(ra) # 80001908 <_ZN3TCB15thread_dispatchEv>
    8000268c:	e95ff06f          	j	80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            __asm__ volatile("mv %0, a1" : "=r" (max));
    80002690:	00058713          	mv	a4,a1
    static void SetMaximumThreads(int num_of_threads){ max = num_of_threads; };
    80002694:	00009797          	auipc	a5,0x9
    80002698:	1547b783          	ld	a5,340(a5) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000269c:	00e7a023          	sw	a4,0(a5)
    800026a0:	e81ff06f          	j	80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            __asm__ volatile("mv %0, a1" : "=r" (handle));
    800026a4:	00058513          	mv	a0,a1
            TCB::thread_join(handle);
    800026a8:	fffff097          	auipc	ra,0xfffff
    800026ac:	3e0080e7          	jalr	992(ra) # 80001a88 <_ZN3TCB11thread_joinEPS_>
    800026b0:	e71ff06f          	j	80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            __asm__ volatile("mv %0, a1" : "=r" (handle));
    800026b4:	00058793          	mv	a5,a1
            handle->barrier->open();
    800026b8:	0007b503          	ld	a0,0(a5)
    800026bc:	fffff097          	auipc	ra,0xfffff
    800026c0:	554080e7          	jalr	1364(ra) # 80001c10 <_ZN7Barrier4openEv>
    800026c4:	e5dff06f          	j	80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            __asm__ volatile("mv %0, a1" : "=r" (handle));
    800026c8:	00058793          	mv	a5,a1
            handle->barrier->pass();
    800026cc:	0007b783          	ld	a5,0(a5)
    void open();
    void close() {
        key = 0;
    };
    void pass() {
        if(owner->running==owner) {
    800026d0:	0007b703          	ld	a4,0(a5)
    800026d4:	00009697          	auipc	a3,0x9
    800026d8:	1246b683          	ld	a3,292(a3) # 8000b7f8 <_GLOBAL_OFFSET_TABLE_+0x38>
    800026dc:	0006b683          	ld	a3,0(a3)
    800026e0:	e4d710e3          	bne	a4,a3,80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            if(key==0) {
    800026e4:	0087a783          	lw	a5,8(a5)
    800026e8:	e2079ce3          	bnez	a5,80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
    void setBarriered(bool value) { barriered = value; }
    800026ec:	00100793          	li	a5,1
    800026f0:	02f709a3          	sb	a5,51(a4)
                owner->setBarriered(true);
                owner->thread_dispatch();
    800026f4:	fffff097          	auipc	ra,0xfffff
    800026f8:	214080e7          	jalr	532(ra) # 80001908 <_ZN3TCB15thread_dispatchEv>
    800026fc:	e25ff06f          	j	80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            __asm__ volatile("mv %0, a1" : "=r" (handle));
    80002700:	00058793          	mv	a5,a1
            handle->barrier->close();
    80002704:	0007b783          	ld	a5,0(a5)
        key = 0;
    80002708:	0007a423          	sw	zero,8(a5)
    };
    8000270c:	e15ff06f          	j	80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            __asm__ volatile("mv %0, a1" : "=r" (handle));
    80002710:	00058493          	mv	s1,a1
            __asm__ volatile("mv %0, a2" : "=r" (init));
    80002714:	00060513          	mv	a0,a2
            *handle = sem::sem_open(init);
    80002718:	0005051b          	sext.w	a0,a0
    8000271c:	00000097          	auipc	ra,0x0
    80002720:	090080e7          	jalr	144(ra) # 800027ac <_ZN3sem8sem_openEj>
    80002724:	00a4b023          	sd	a0,0(s1)
            __asm__ volatile("sd %0, 80(x8)" : : "r"(0));
    80002728:	00000793          	li	a5,0
    8000272c:	04f43823          	sd	a5,80(s0)
    80002730:	df1ff06f          	j	80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            __asm__ volatile("mv %0, a1" : "=r" (handle));
    80002734:	00058513          	mv	a0,a1
            int res = handle->sem_close();
    80002738:	00000097          	auipc	ra,0x0
    8000273c:	0bc080e7          	jalr	188(ra) # 800027f4 <_ZN3sem9sem_closeEv>
            __asm__ volatile("sd %0, 80(x8)" : : "r"(res));
    80002740:	04a43823          	sd	a0,80(s0)
    80002744:	dddff06f          	j	80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            __asm__ volatile("mv %0, a1" : "=r" (id));
    80002748:	00058513          	mv	a0,a1
            int res = id->sem_wait();
    8000274c:	00000097          	auipc	ra,0x0
    80002750:	144080e7          	jalr	324(ra) # 80002890 <_ZN3sem8sem_waitEv>
            __asm__ volatile("sd %0, 80(x8)" : : "r"(res));
    80002754:	04a43823          	sd	a0,80(s0)
    80002758:	dc9ff06f          	j	80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            __asm__ volatile("mv %0, a1" : "=r" (id));
    8000275c:	00058513          	mv	a0,a1
            int res = id->sem_signal();
    80002760:	00000097          	auipc	ra,0x0
    80002764:	1ec080e7          	jalr	492(ra) # 8000294c <_ZN3sem10sem_signalEv>
            __asm__ volatile("sd %0, 80(x8)" : : "r"(res));
    80002768:	04a43823          	sd	a0,80(s0)
    8000276c:	db5ff06f          	j	80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            __asm__ volatile("mv %0, a1" : "=r" (id));
    80002770:	00058513          	mv	a0,a1
            int res = id->sem_trywait();
    80002774:	00000097          	auipc	ra,0x0
    80002778:	274080e7          	jalr	628(ra) # 800029e8 <_ZN3sem11sem_trywaitEv>
            __asm__ volatile("sd %0, 80(x8)" : : "r"(res));
    8000277c:	04a43823          	sd	a0,80(s0)
    80002780:	da1ff06f          	j	80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            c = __getc();
    80002784:	00006097          	auipc	ra,0x6
    80002788:	dc4080e7          	jalr	-572(ra) # 80008548 <__getc>
            __asm__ volatile("sd %0, 80(x8)" : : "r"(c));
    8000278c:	04a43823          	sd	a0,80(s0)
    80002790:	d91ff06f          	j	80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002794:	00200793          	li	a5,2
    80002798:	1447b073          	csrc	sip,a5
}
    8000279c:	d95ff06f          	j	80002530 <_ZN5Riscv20handleSupervisorTrapEv+0x174>
        console_handler();
    800027a0:	00006097          	auipc	ra,0x6
    800027a4:	de0080e7          	jalr	-544(ra) # 80008580 <console_handler>
    800027a8:	d89ff06f          	j	80002530 <_ZN5Riscv20handleSupervisorTrapEv+0x174>

00000000800027ac <_ZN3sem8sem_openEj>:
#include "../h/tcb.hpp"
#include "../h/scheduler.hpp"
#include "../h/list.hpp"


sem* sem::sem_open(unsigned init) {
    800027ac:	fe010113          	addi	sp,sp,-32
    800027b0:	00113c23          	sd	ra,24(sp)
    800027b4:	00813823          	sd	s0,16(sp)
    800027b8:	00913423          	sd	s1,8(sp)
    800027bc:	02010413          	addi	s0,sp,32
    800027c0:	00050493          	mv	s1,a0
        return memoryAllocator::allocate(blocks);
    800027c4:	00100513          	li	a0,1
    800027c8:	fffff097          	auipc	ra,0xfffff
    800027cc:	534080e7          	jalr	1332(ra) # 80001cfc <_ZN15memoryAllocator8allocateEm>
    800027d0:	00050223          	sb	zero,4(a0)
    };

    Elem *head, *tail;


    List() : head(0), tail(0) {}
    800027d4:	00053423          	sd	zero,8(a0)
    800027d8:	00053823          	sd	zero,16(a0)
    sem* newSem = new sem();

    newSem->val = init;
    800027dc:	00952023          	sw	s1,0(a0)
    newSem->setClosed(false);

    return newSem;

}
    800027e0:	01813083          	ld	ra,24(sp)
    800027e4:	01013403          	ld	s0,16(sp)
    800027e8:	00813483          	ld	s1,8(sp)
    800027ec:	02010113          	addi	sp,sp,32
    800027f0:	00008067          	ret

00000000800027f4 <_ZN3sem9sem_closeEv>:
        memoryAllocator::deallocate(ptr);
    }

    void setClosed(bool value) { closed = value; }

    bool isClosed() const { return closed; }
    800027f4:	00454783          	lbu	a5,4(a0)

int sem::sem_close(){

    if(isClosed()) {
    800027f8:	06079663          	bnez	a5,80002864 <_ZN3sem9sem_closeEv+0x70>
int sem::sem_close(){
    800027fc:	fe010113          	addi	sp,sp,-32
    80002800:	00113c23          	sd	ra,24(sp)
    80002804:	00813823          	sd	s0,16(sp)
    80002808:	00913423          	sd	s1,8(sp)
    8000280c:	01213023          	sd	s2,0(sp)
    80002810:	02010413          	addi	s0,sp,32
    80002814:	00050493          	mv	s1,a0
    void setClosed(bool value) { closed = value; }
    80002818:	00100793          	li	a5,1
    8000281c:	00f50223          	sb	a5,4(a0)
    80002820:	0240006f          	j	80002844 <_ZN3sem9sem_closeEv+0x50>
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }
    80002824:	0004b823          	sd	zero,16(s1)

        T *ret = elem->data;
    80002828:	00053903          	ld	s2,0(a0)
            memoryAllocator::deallocate(ptr);
    8000282c:	fffff097          	auipc	ra,0xfffff
    80002830:	590080e7          	jalr	1424(ra) # 80001dbc <_ZN15memoryAllocator10deallocateEPv>

    bool isBarriered() const { return barriered; }

    void setFinished(bool value) { finished = value; }

    void setBlocked(bool value) { blocked = value; }
    80002834:	020908a3          	sb	zero,49(s2)

    while(blocked.peekFirst()) {

        TCB* unblocked = blocked.removeFirst();
        unblocked->setBlocked(false);
        Scheduler::put(unblocked);
    80002838:	00090513          	mv	a0,s2
    8000283c:	00000097          	auipc	ra,0x0
    80002840:	2b4080e7          	jalr	692(ra) # 80002af0 <_ZN9Scheduler3putEP3TCB>
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80002844:	0084b503          	ld	a0,8(s1)
    80002848:	02050263          	beqz	a0,8000286c <_ZN3sem9sem_closeEv+0x78>
        return head->data;
    8000284c:	00053783          	ld	a5,0(a0)
    while(blocked.peekFirst()) {
    80002850:	02078c63          	beqz	a5,80002888 <_ZN3sem9sem_closeEv+0x94>
        head = head->next;
    80002854:	00853783          	ld	a5,8(a0)
    80002858:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    8000285c:	fc0796e3          	bnez	a5,80002828 <_ZN3sem9sem_closeEv+0x34>
    80002860:	fc5ff06f          	j	80002824 <_ZN3sem9sem_closeEv+0x30>
        return -1;
    80002864:	fff00513          	li	a0,-1

    }

    return 0;

}
    80002868:	00008067          	ret
    return 0;
    8000286c:	00000513          	li	a0,0
}
    80002870:	01813083          	ld	ra,24(sp)
    80002874:	01013403          	ld	s0,16(sp)
    80002878:	00813483          	ld	s1,8(sp)
    8000287c:	00013903          	ld	s2,0(sp)
    80002880:	02010113          	addi	sp,sp,32
    80002884:	00008067          	ret
    return 0;
    80002888:	00000513          	li	a0,0
    8000288c:	fe5ff06f          	j	80002870 <_ZN3sem9sem_closeEv+0x7c>

0000000080002890 <_ZN3sem8sem_waitEv>:
    bool isClosed() const { return closed; }
    80002890:	00454783          	lbu	a5,4(a0)

int sem::sem_wait() {

    if(isClosed()) {
    80002894:	0a079463          	bnez	a5,8000293c <_ZN3sem8sem_waitEv+0xac>
int sem::sem_wait() {
    80002898:	fe010113          	addi	sp,sp,-32
    8000289c:	00113c23          	sd	ra,24(sp)
    800028a0:	00813823          	sd	s0,16(sp)
    800028a4:	00913423          	sd	s1,8(sp)
    800028a8:	01213023          	sd	s2,0(sp)
    800028ac:	02010413          	addi	s0,sp,32
    800028b0:	00050493          	mv	s1,a0
        return -1;
    }

    if (--val < 0) {
    800028b4:	00052783          	lw	a5,0(a0)
    800028b8:	fff7879b          	addiw	a5,a5,-1
    800028bc:	00f52023          	sw	a5,0(a0)
    800028c0:	02079713          	slli	a4,a5,0x20
    800028c4:	02074463          	bltz	a4,800028ec <_ZN3sem8sem_waitEv+0x5c>
    800028c8:	0044c783          	lbu	a5,4(s1)
        TCB::running->setBlocked(true);
        blocked.addLast(TCB::running);
        TCB::thread_dispatch();
    }

    if(isClosed()) {
    800028cc:	06079c63          	bnez	a5,80002944 <_ZN3sem8sem_waitEv+0xb4>
        return -1;
    }

    return 0;
    800028d0:	00000513          	li	a0,0
}
    800028d4:	01813083          	ld	ra,24(sp)
    800028d8:	01013403          	ld	s0,16(sp)
    800028dc:	00813483          	ld	s1,8(sp)
    800028e0:	00013903          	ld	s2,0(sp)
    800028e4:	02010113          	addi	sp,sp,32
    800028e8:	00008067          	ret
        TCB::running->setBlocked(true);
    800028ec:	00009797          	auipc	a5,0x9
    800028f0:	f0c7b783          	ld	a5,-244(a5) # 8000b7f8 <_GLOBAL_OFFSET_TABLE_+0x38>
    800028f4:	0007b903          	ld	s2,0(a5)
    800028f8:	00100793          	li	a5,1
    800028fc:	02f908a3          	sb	a5,49(s2)
            return memoryAllocator::allocate(blocks);
    80002900:	00100513          	li	a0,1
    80002904:	fffff097          	auipc	ra,0xfffff
    80002908:	3f8080e7          	jalr	1016(ra) # 80001cfc <_ZN15memoryAllocator8allocateEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000290c:	01253023          	sd	s2,0(a0)
    80002910:	00053423          	sd	zero,8(a0)
        if (tail) {
    80002914:	0104b783          	ld	a5,16(s1)
    80002918:	00078c63          	beqz	a5,80002930 <_ZN3sem8sem_waitEv+0xa0>
            tail->next = elem;
    8000291c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002920:	00a4b823          	sd	a0,16(s1)
        TCB::thread_dispatch();
    80002924:	fffff097          	auipc	ra,0xfffff
    80002928:	fe4080e7          	jalr	-28(ra) # 80001908 <_ZN3TCB15thread_dispatchEv>
    8000292c:	f9dff06f          	j	800028c8 <_ZN3sem8sem_waitEv+0x38>
            head = tail = elem;
    80002930:	00a4b823          	sd	a0,16(s1)
    80002934:	00a4b423          	sd	a0,8(s1)
    80002938:	fedff06f          	j	80002924 <_ZN3sem8sem_waitEv+0x94>
        return -1;
    8000293c:	fff00513          	li	a0,-1
}
    80002940:	00008067          	ret
        return -1;
    80002944:	fff00513          	li	a0,-1
    80002948:	f8dff06f          	j	800028d4 <_ZN3sem8sem_waitEv+0x44>

000000008000294c <_ZN3sem10sem_signalEv>:
    8000294c:	00454703          	lbu	a4,4(a0)

int sem::sem_signal() {

    if(isClosed()) {
    80002950:	08071863          	bnez	a4,800029e0 <_ZN3sem10sem_signalEv+0x94>
    80002954:	00050793          	mv	a5,a0
        return -1;
    }

    if (++val <= 0) {
    80002958:	00052703          	lw	a4,0(a0)
    8000295c:	0017071b          	addiw	a4,a4,1
    80002960:	0007069b          	sext.w	a3,a4
    80002964:	00e52023          	sw	a4,0(a0)
    80002968:	00d05663          	blez	a3,80002974 <_ZN3sem10sem_signalEv+0x28>
        unblocked->setBlocked(false);
        Scheduler::put(unblocked);

    }

    return 0;
    8000296c:	00000513          	li	a0,0
}
    80002970:	00008067          	ret
int sem::sem_signal() {
    80002974:	fe010113          	addi	sp,sp,-32
    80002978:	00113c23          	sd	ra,24(sp)
    8000297c:	00813823          	sd	s0,16(sp)
    80002980:	00913423          	sd	s1,8(sp)
    80002984:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002988:	00853503          	ld	a0,8(a0)
    8000298c:	04050663          	beqz	a0,800029d8 <_ZN3sem10sem_signalEv+0x8c>
        head = head->next;
    80002990:	00853703          	ld	a4,8(a0)
    80002994:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    80002998:	02070c63          	beqz	a4,800029d0 <_ZN3sem10sem_signalEv+0x84>
        T *ret = elem->data;
    8000299c:	00053483          	ld	s1,0(a0)
            memoryAllocator::deallocate(ptr);
    800029a0:	fffff097          	auipc	ra,0xfffff
    800029a4:	41c080e7          	jalr	1052(ra) # 80001dbc <_ZN15memoryAllocator10deallocateEPv>
    800029a8:	020488a3          	sb	zero,49(s1)
        Scheduler::put(unblocked);
    800029ac:	00048513          	mv	a0,s1
    800029b0:	00000097          	auipc	ra,0x0
    800029b4:	140080e7          	jalr	320(ra) # 80002af0 <_ZN9Scheduler3putEP3TCB>
    return 0;
    800029b8:	00000513          	li	a0,0
}
    800029bc:	01813083          	ld	ra,24(sp)
    800029c0:	01013403          	ld	s0,16(sp)
    800029c4:	00813483          	ld	s1,8(sp)
    800029c8:	02010113          	addi	sp,sp,32
    800029cc:	00008067          	ret
        if (!head) { tail = 0; }
    800029d0:	0007b823          	sd	zero,16(a5)
    800029d4:	fc9ff06f          	j	8000299c <_ZN3sem10sem_signalEv+0x50>
        if (!head) { return 0; }
    800029d8:	00050493          	mv	s1,a0
    800029dc:	fcdff06f          	j	800029a8 <_ZN3sem10sem_signalEv+0x5c>
        return -1;
    800029e0:	fff00513          	li	a0,-1
    800029e4:	00008067          	ret

00000000800029e8 <_ZN3sem11sem_trywaitEv>:

int sem::sem_trywait(){
    800029e8:	ff010113          	addi	sp,sp,-16
    800029ec:	00813423          	sd	s0,8(sp)
    800029f0:	01010413          	addi	s0,sp,16
    800029f4:	00454703          	lbu	a4,4(a0)

    if(isClosed()) {
    800029f8:	02071463          	bnez	a4,80002a20 <_ZN3sem11sem_trywaitEv+0x38>
    800029fc:	00050793          	mv	a5,a0
        return -1;
    }

    if(val>0){
    80002a00:	00052703          	lw	a4,0(a0)
    80002a04:	02e05663          	blez	a4,80002a30 <_ZN3sem11sem_trywaitEv+0x48>
        val--;
    80002a08:	fff7071b          	addiw	a4,a4,-1
    80002a0c:	0007051b          	sext.w	a0,a4
    80002a10:	00e7a023          	sw	a4,0(a5)

        if(val==0) {
    80002a14:	00050863          	beqz	a0,80002a24 <_ZN3sem11sem_trywaitEv+0x3c>
            return 0;
        }

        return 1;
    80002a18:	00100513          	li	a0,1
    80002a1c:	0080006f          	j	80002a24 <_ZN3sem11sem_trywaitEv+0x3c>
        return -1;
    80002a20:	fff00513          	li	a0,-1
    //semafor je zauzet

    return -1;


    80002a24:	00813403          	ld	s0,8(sp)
    80002a28:	01010113          	addi	sp,sp,16
    80002a2c:	00008067          	ret
    return -1;
    80002a30:	fff00513          	li	a0,-1
    80002a34:	ff1ff06f          	j	80002a24 <_ZN3sem11sem_trywaitEv+0x3c>

0000000080002a38 <_Z41__static_initialization_and_destruction_0ii>:
{

    threadcnt= threadcnt+1;

    readyCoroutineQueue.addLast(tcb);
    80002a38:	ff010113          	addi	sp,sp,-16
    80002a3c:	00813423          	sd	s0,8(sp)
    80002a40:	01010413          	addi	s0,sp,16
    80002a44:	00100793          	li	a5,1
    80002a48:	00f50863          	beq	a0,a5,80002a58 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002a4c:	00813403          	ld	s0,8(sp)
    80002a50:	01010113          	addi	sp,sp,16
    80002a54:	00008067          	ret
    80002a58:	000107b7          	lui	a5,0x10
    80002a5c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002a60:	fef596e3          	bne	a1,a5,80002a4c <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002a64:	00009797          	auipc	a5,0x9
    80002a68:	e2c78793          	addi	a5,a5,-468 # 8000b890 <_ZN9Scheduler19readyCoroutineQueueE>
    80002a6c:	0007b023          	sd	zero,0(a5)
    80002a70:	0007b423          	sd	zero,8(a5)
    80002a74:	fd9ff06f          	j	80002a4c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002a78 <_ZN9Scheduler3getEv>:
{
    80002a78:	fe010113          	addi	sp,sp,-32
    80002a7c:	00113c23          	sd	ra,24(sp)
    80002a80:	00813823          	sd	s0,16(sp)
    80002a84:	00913423          	sd	s1,8(sp)
    80002a88:	02010413          	addi	s0,sp,32
    threadcnt= threadcnt-1;
    80002a8c:	00009797          	auipc	a5,0x9
    80002a90:	e0478793          	addi	a5,a5,-508 # 8000b890 <_ZN9Scheduler19readyCoroutineQueueE>
    80002a94:	0107a703          	lw	a4,16(a5)
    80002a98:	fff7071b          	addiw	a4,a4,-1
    80002a9c:	00e7a823          	sw	a4,16(a5)
        if (!head) { return 0; }
    80002aa0:	0007b503          	ld	a0,0(a5)
    80002aa4:	04050263          	beqz	a0,80002ae8 <_ZN9Scheduler3getEv+0x70>
        head = head->next;
    80002aa8:	00853783          	ld	a5,8(a0)
    80002aac:	00009717          	auipc	a4,0x9
    80002ab0:	def73223          	sd	a5,-540(a4) # 8000b890 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    80002ab4:	02078463          	beqz	a5,80002adc <_ZN9Scheduler3getEv+0x64>
        T *ret = elem->data;
    80002ab8:	00053483          	ld	s1,0(a0)
            memoryAllocator::deallocate(ptr);
    80002abc:	fffff097          	auipc	ra,0xfffff
    80002ac0:	300080e7          	jalr	768(ra) # 80001dbc <_ZN15memoryAllocator10deallocateEPv>
}
    80002ac4:	00048513          	mv	a0,s1
    80002ac8:	01813083          	ld	ra,24(sp)
    80002acc:	01013403          	ld	s0,16(sp)
    80002ad0:	00813483          	ld	s1,8(sp)
    80002ad4:	02010113          	addi	sp,sp,32
    80002ad8:	00008067          	ret
        if (!head) { tail = 0; }
    80002adc:	00009797          	auipc	a5,0x9
    80002ae0:	da07be23          	sd	zero,-580(a5) # 8000b898 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002ae4:	fd5ff06f          	j	80002ab8 <_ZN9Scheduler3getEv+0x40>
        if (!head) { return 0; }
    80002ae8:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80002aec:	fd9ff06f          	j	80002ac4 <_ZN9Scheduler3getEv+0x4c>

0000000080002af0 <_ZN9Scheduler3putEP3TCB>:
{
    80002af0:	fe010113          	addi	sp,sp,-32
    80002af4:	00113c23          	sd	ra,24(sp)
    80002af8:	00813823          	sd	s0,16(sp)
    80002afc:	00913423          	sd	s1,8(sp)
    80002b00:	01213023          	sd	s2,0(sp)
    80002b04:	02010413          	addi	s0,sp,32
    80002b08:	00050913          	mv	s2,a0
    threadcnt= threadcnt+1;
    80002b0c:	00009497          	auipc	s1,0x9
    80002b10:	d8448493          	addi	s1,s1,-636 # 8000b890 <_ZN9Scheduler19readyCoroutineQueueE>
    80002b14:	0104a783          	lw	a5,16(s1)
    80002b18:	0017879b          	addiw	a5,a5,1
    80002b1c:	00f4a823          	sw	a5,16(s1)
            return memoryAllocator::allocate(blocks);
    80002b20:	00100513          	li	a0,1
    80002b24:	fffff097          	auipc	ra,0xfffff
    80002b28:	1d8080e7          	jalr	472(ra) # 80001cfc <_ZN15memoryAllocator8allocateEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002b2c:	01253023          	sd	s2,0(a0)
    80002b30:	00053423          	sd	zero,8(a0)
        if (tail) {
    80002b34:	0084b783          	ld	a5,8(s1)
    80002b38:	02078463          	beqz	a5,80002b60 <_ZN9Scheduler3putEP3TCB+0x70>
            tail->next = elem;
    80002b3c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002b40:	00009797          	auipc	a5,0x9
    80002b44:	d4a7bc23          	sd	a0,-680(a5) # 8000b898 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002b48:	01813083          	ld	ra,24(sp)
    80002b4c:	01013403          	ld	s0,16(sp)
    80002b50:	00813483          	ld	s1,8(sp)
    80002b54:	00013903          	ld	s2,0(sp)
    80002b58:	02010113          	addi	sp,sp,32
    80002b5c:	00008067          	ret
            head = tail = elem;
    80002b60:	00009797          	auipc	a5,0x9
    80002b64:	d3078793          	addi	a5,a5,-720 # 8000b890 <_ZN9Scheduler19readyCoroutineQueueE>
    80002b68:	00a7b423          	sd	a0,8(a5)
    80002b6c:	00a7b023          	sd	a0,0(a5)
    80002b70:	fd9ff06f          	j	80002b48 <_ZN9Scheduler3putEP3TCB+0x58>

0000000080002b74 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80002b74:	ff010113          	addi	sp,sp,-16
    80002b78:	00113423          	sd	ra,8(sp)
    80002b7c:	00813023          	sd	s0,0(sp)
    80002b80:	01010413          	addi	s0,sp,16
    80002b84:	000105b7          	lui	a1,0x10
    80002b88:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002b8c:	00100513          	li	a0,1
    80002b90:	00000097          	auipc	ra,0x0
    80002b94:	ea8080e7          	jalr	-344(ra) # 80002a38 <_Z41__static_initialization_and_destruction_0ii>
    80002b98:	00813083          	ld	ra,8(sp)
    80002b9c:	00013403          	ld	s0,0(sp)
    80002ba0:	01010113          	addi	sp,sp,16
    80002ba4:	00008067          	ret

0000000080002ba8 <_Z11mainWrapperPv>:
#include "../h/riscv.hpp"
#include "../h/scheduler.hpp"

void userMain();

void mainWrapper(void* arg) {
    80002ba8:	ff010113          	addi	sp,sp,-16
    80002bac:	00113423          	sd	ra,8(sp)
    80002bb0:	00813023          	sd	s0,0(sp)
    80002bb4:	01010413          	addi	s0,sp,16

    userMain();
    80002bb8:	fffff097          	auipc	ra,0xfffff
    80002bbc:	a08080e7          	jalr	-1528(ra) # 800015c0 <_Z8userMainv>

    printString1("userMain je gotov\n");
    80002bc0:	00006517          	auipc	a0,0x6
    80002bc4:	6f850513          	addi	a0,a0,1784 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80002bc8:	00000097          	auipc	ra,0x0
    80002bcc:	0e4080e7          	jalr	228(ra) # 80002cac <_Z12printString1PKc>

}
    80002bd0:	00813083          	ld	ra,8(sp)
    80002bd4:	00013403          	ld	s0,0(sp)
    80002bd8:	01010113          	addi	sp,sp,16
    80002bdc:	00008067          	ret

0000000080002be0 <main>:

int main(){
    80002be0:	fe010113          	addi	sp,sp,-32
    80002be4:	00113c23          	sd	ra,24(sp)
    80002be8:	00813823          	sd	s0,16(sp)
    80002bec:	02010413          	addi	s0,sp,32

    memoryAllocator::start();
    80002bf0:	fffff097          	auipc	ra,0xfffff
    80002bf4:	0c0080e7          	jalr	192(ra) # 80001cb0 <_ZN15memoryAllocator5startEv>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80002bf8:	00009797          	auipc	a5,0x9
    80002bfc:	be07b783          	ld	a5,-1056(a5) # 8000b7d8 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80002c00:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002c04:	00200793          	li	a5,2
    80002c08:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    TCB* main_thread = nullptr;
    80002c0c:	fe043423          	sd	zero,-24(s0)

    thread_create(&main_thread, nullptr, nullptr);
    80002c10:	00000613          	li	a2,0
    80002c14:	00000593          	li	a1,0
    80002c18:	fe840513          	addi	a0,s0,-24
    80002c1c:	ffffe097          	auipc	ra,0xffffe
    80002c20:	5a0080e7          	jalr	1440(ra) # 800011bc <_Z13thread_createPP3TCBPFvPvES2_>

    TCB::running = main_thread;
    80002c24:	00009797          	auipc	a5,0x9
    80002c28:	bd47b783          	ld	a5,-1068(a5) # 8000b7f8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002c2c:	fe843703          	ld	a4,-24(s0)
    80002c30:	00e7b023          	sd	a4,0(a5)
    static void SetMaximumThreads(int num_of_threads){ max = num_of_threads; };
    80002c34:	00009797          	auipc	a5,0x9
    80002c38:	bb47b783          	ld	a5,-1100(a5) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002c3c:	00a00713          	li	a4,10
    80002c40:	00e7a023          	sw	a4,0(a5)

    TCB::SetMaximumThreads(10);

    TCB* threadHandle1 = nullptr;
    80002c44:	fe043023          	sd	zero,-32(s0)


    thread_create(&threadHandle1, mainWrapper, nullptr);
    80002c48:	00000613          	li	a2,0
    80002c4c:	00000597          	auipc	a1,0x0
    80002c50:	f5c58593          	addi	a1,a1,-164 # 80002ba8 <_Z11mainWrapperPv>
    80002c54:	fe040513          	addi	a0,s0,-32
    80002c58:	ffffe097          	auipc	ra,0xffffe
    80002c5c:	564080e7          	jalr	1380(ra) # 800011bc <_Z13thread_createPP3TCBPFvPvES2_>



    printString1("Thread created successfully.\n");
    80002c60:	00006517          	auipc	a0,0x6
    80002c64:	67050513          	addi	a0,a0,1648 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80002c68:	00000097          	auipc	ra,0x0
    80002c6c:	044080e7          	jalr	68(ra) # 80002cac <_Z12printString1PKc>

    while(!threadHandle1->isFinished()) {
    80002c70:	fe043783          	ld	a5,-32(s0)
    bool isFinished() const { return finished; }
    80002c74:	0307c783          	lbu	a5,48(a5)
    80002c78:	00079863          	bnez	a5,80002c88 <main+0xa8>
        thread_dispatch();
    80002c7c:	ffffe097          	auipc	ra,0xffffe
    80002c80:	6b8080e7          	jalr	1720(ra) # 80001334 <_Z15thread_dispatchv>
    80002c84:	fedff06f          	j	80002c70 <main+0x90>
    }

    // Glavna nit se vraća nakon što se sve niti završe
    printString1("Main thread finished.\n");
    80002c88:	00006517          	auipc	a0,0x6
    80002c8c:	66850513          	addi	a0,a0,1640 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80002c90:	00000097          	auipc	ra,0x0
    80002c94:	01c080e7          	jalr	28(ra) # 80002cac <_Z12printString1PKc>



    return 0;
    80002c98:	00000513          	li	a0,0
    80002c9c:	01813083          	ld	ra,24(sp)
    80002ca0:	01013403          	ld	s0,16(sp)
    80002ca4:	02010113          	addi	sp,sp,32
    80002ca8:	00008067          	ret

0000000080002cac <_Z12printString1PKc>:

#include "../h/print.hpp"
#include "../lib/console.h"

void printString1(char const *string)
{
    80002cac:	fe010113          	addi	sp,sp,-32
    80002cb0:	00113c23          	sd	ra,24(sp)
    80002cb4:	00813823          	sd	s0,16(sp)
    80002cb8:	00913423          	sd	s1,8(sp)
    80002cbc:	02010413          	addi	s0,sp,32
    80002cc0:	00050493          	mv	s1,a0
    while (*string != '\0')
    80002cc4:	0004c503          	lbu	a0,0(s1)
    80002cc8:	00050a63          	beqz	a0,80002cdc <_Z12printString1PKc+0x30>
    {
        __putc(*string);
    80002ccc:	00006097          	auipc	ra,0x6
    80002cd0:	840080e7          	jalr	-1984(ra) # 8000850c <__putc>
        string++;
    80002cd4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002cd8:	fedff06f          	j	80002cc4 <_Z12printString1PKc+0x18>
    }
}
    80002cdc:	01813083          	ld	ra,24(sp)
    80002ce0:	01013403          	ld	s0,16(sp)
    80002ce4:	00813483          	ld	s1,8(sp)
    80002ce8:	02010113          	addi	sp,sp,32
    80002cec:	00008067          	ret

0000000080002cf0 <_Z13printInteger1m>:

void printInteger1(uint64 integer)
{
    80002cf0:	fd010113          	addi	sp,sp,-48
    80002cf4:	02113423          	sd	ra,40(sp)
    80002cf8:	02813023          	sd	s0,32(sp)
    80002cfc:	00913c23          	sd	s1,24(sp)
    80002d00:	03010413          	addi	s0,sp,48
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002d04:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002d08:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80002d0c:	00a00613          	li	a2,10
    80002d10:	02c5773b          	remuw	a4,a0,a2
    80002d14:	02071693          	slli	a3,a4,0x20
    80002d18:	0206d693          	srli	a3,a3,0x20
    80002d1c:	00006717          	auipc	a4,0x6
    80002d20:	5ec70713          	addi	a4,a4,1516 # 80009308 <_ZZ13printInteger1mE6digits>
    80002d24:	00d70733          	add	a4,a4,a3
    80002d28:	00074703          	lbu	a4,0(a4)
    80002d2c:	fe040693          	addi	a3,s0,-32
    80002d30:	009687b3          	add	a5,a3,s1
    80002d34:	0014849b          	addiw	s1,s1,1
    80002d38:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80002d3c:	0005071b          	sext.w	a4,a0
    80002d40:	02c5553b          	divuw	a0,a0,a2
    80002d44:	00900793          	li	a5,9
    80002d48:	fce7e2e3          	bltu	a5,a4,80002d0c <_Z13printInteger1m+0x1c>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0)
    80002d4c:	fff4849b          	addiw	s1,s1,-1
    80002d50:	0004ce63          	bltz	s1,80002d6c <_Z13printInteger1m+0x7c>
        __putc(buf[i]);
    80002d54:	fe040793          	addi	a5,s0,-32
    80002d58:	009787b3          	add	a5,a5,s1
    80002d5c:	ff07c503          	lbu	a0,-16(a5)
    80002d60:	00005097          	auipc	ra,0x5
    80002d64:	7ac080e7          	jalr	1964(ra) # 8000850c <__putc>
    80002d68:	fe5ff06f          	j	80002d4c <_Z13printInteger1m+0x5c>
    80002d6c:	02813083          	ld	ra,40(sp)
    80002d70:	02013403          	ld	s0,32(sp)
    80002d74:	01813483          	ld	s1,24(sp)
    80002d78:	03010113          	addi	sp,sp,48
    80002d7c:	00008067          	ret

0000000080002d80 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002d80:	fd010113          	addi	sp,sp,-48
    80002d84:	02113423          	sd	ra,40(sp)
    80002d88:	02813023          	sd	s0,32(sp)
    80002d8c:	00913c23          	sd	s1,24(sp)
    80002d90:	01213823          	sd	s2,16(sp)
    80002d94:	01313423          	sd	s3,8(sp)
    80002d98:	03010413          	addi	s0,sp,48
    80002d9c:	00050993          	mv	s3,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002da0:	00000913          	li	s2,0
    80002da4:	00c0006f          	j	80002db0 <_ZL16producerKeyboardPv+0x30>
        printString("MOj PRoducer = ");
        printInt(i);
        printString("\n");

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002da8:	ffffe097          	auipc	ra,0xffffe
    80002dac:	58c080e7          	jalr	1420(ra) # 80001334 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002db0:	ffffe097          	auipc	ra,0xffffe
    80002db4:	7bc080e7          	jalr	1980(ra) # 8000156c <_Z4getcv>
    80002db8:	0005059b          	sext.w	a1,a0
    80002dbc:	01b00793          	li	a5,27
    80002dc0:	06f58463          	beq	a1,a5,80002e28 <_ZL16producerKeyboardPv+0xa8>
        data->buffer->put(key);
    80002dc4:	0089b503          	ld	a0,8(s3)
    80002dc8:	00003097          	auipc	ra,0x3
    80002dcc:	404080e7          	jalr	1028(ra) # 800061cc <_ZN6Buffer3putEi>
        i++;
    80002dd0:	0019049b          	addiw	s1,s2,1
    80002dd4:	0004891b          	sext.w	s2,s1
        printString("MOj PRoducer = ");
    80002dd8:	00006517          	auipc	a0,0x6
    80002ddc:	54050513          	addi	a0,a0,1344 # 80009318 <_ZZ13printInteger1mE6digits+0x10>
    80002de0:	00002097          	auipc	ra,0x2
    80002de4:	6a0080e7          	jalr	1696(ra) # 80005480 <_Z11printStringPKc>
        printInt(i);
    80002de8:	00000613          	li	a2,0
    80002dec:	00a00593          	li	a1,10
    80002df0:	00090513          	mv	a0,s2
    80002df4:	00003097          	auipc	ra,0x3
    80002df8:	83c080e7          	jalr	-1988(ra) # 80005630 <_Z8printIntiii>
        printString("\n");
    80002dfc:	00006517          	auipc	a0,0x6
    80002e00:	39450513          	addi	a0,a0,916 # 80009190 <CONSOLE_STATUS+0x180>
    80002e04:	00002097          	auipc	ra,0x2
    80002e08:	67c080e7          	jalr	1660(ra) # 80005480 <_Z11printStringPKc>
        if (i % (10 * data->id) == 0) {
    80002e0c:	0009a703          	lw	a4,0(s3)
    80002e10:	0027179b          	slliw	a5,a4,0x2
    80002e14:	00e787bb          	addw	a5,a5,a4
    80002e18:	0017979b          	slliw	a5,a5,0x1
    80002e1c:	02f4e7bb          	remw	a5,s1,a5
    80002e20:	f80798e3          	bnez	a5,80002db0 <_ZL16producerKeyboardPv+0x30>
    80002e24:	f85ff06f          	j	80002da8 <_ZL16producerKeyboardPv+0x28>
        }
    }

    threadEnd = 1;
    80002e28:	00100793          	li	a5,1
    80002e2c:	00009717          	auipc	a4,0x9
    80002e30:	a6f72e23          	sw	a5,-1412(a4) # 8000b8a8 <_ZL9threadEnd>
    data->buffer->put('!');
    80002e34:	02100593          	li	a1,33
    80002e38:	0089b503          	ld	a0,8(s3)
    80002e3c:	00003097          	auipc	ra,0x3
    80002e40:	390080e7          	jalr	912(ra) # 800061cc <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002e44:	0109b503          	ld	a0,16(s3)
    80002e48:	ffffe097          	auipc	ra,0xffffe
    80002e4c:	6c4080e7          	jalr	1732(ra) # 8000150c <_Z10sem_signalP3sem>
}
    80002e50:	02813083          	ld	ra,40(sp)
    80002e54:	02013403          	ld	s0,32(sp)
    80002e58:	01813483          	ld	s1,24(sp)
    80002e5c:	01013903          	ld	s2,16(sp)
    80002e60:	00813983          	ld	s3,8(sp)
    80002e64:	03010113          	addi	sp,sp,48
    80002e68:	00008067          	ret

0000000080002e6c <_ZL8producerPv>:

static void producer(void *arg) {
    80002e6c:	fe010113          	addi	sp,sp,-32
    80002e70:	00113c23          	sd	ra,24(sp)
    80002e74:	00813823          	sd	s0,16(sp)
    80002e78:	00913423          	sd	s1,8(sp)
    80002e7c:	01213023          	sd	s2,0(sp)
    80002e80:	02010413          	addi	s0,sp,32
    80002e84:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002e88:	00000913          	li	s2,0
    80002e8c:	00c0006f          	j	80002e98 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002e90:	ffffe097          	auipc	ra,0xffffe
    80002e94:	4a4080e7          	jalr	1188(ra) # 80001334 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002e98:	00009797          	auipc	a5,0x9
    80002e9c:	a107a783          	lw	a5,-1520(a5) # 8000b8a8 <_ZL9threadEnd>
    80002ea0:	02079e63          	bnez	a5,80002edc <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002ea4:	0004a583          	lw	a1,0(s1)
    80002ea8:	0305859b          	addiw	a1,a1,48
    80002eac:	0084b503          	ld	a0,8(s1)
    80002eb0:	00003097          	auipc	ra,0x3
    80002eb4:	31c080e7          	jalr	796(ra) # 800061cc <_ZN6Buffer3putEi>
        i++;
    80002eb8:	0019071b          	addiw	a4,s2,1
    80002ebc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002ec0:	0004a683          	lw	a3,0(s1)
    80002ec4:	0026979b          	slliw	a5,a3,0x2
    80002ec8:	00d787bb          	addw	a5,a5,a3
    80002ecc:	0017979b          	slliw	a5,a5,0x1
    80002ed0:	02f767bb          	remw	a5,a4,a5
    80002ed4:	fc0792e3          	bnez	a5,80002e98 <_ZL8producerPv+0x2c>
    80002ed8:	fb9ff06f          	j	80002e90 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002edc:	0104b503          	ld	a0,16(s1)
    80002ee0:	ffffe097          	auipc	ra,0xffffe
    80002ee4:	62c080e7          	jalr	1580(ra) # 8000150c <_Z10sem_signalP3sem>
}
    80002ee8:	01813083          	ld	ra,24(sp)
    80002eec:	01013403          	ld	s0,16(sp)
    80002ef0:	00813483          	ld	s1,8(sp)
    80002ef4:	00013903          	ld	s2,0(sp)
    80002ef8:	02010113          	addi	sp,sp,32
    80002efc:	00008067          	ret

0000000080002f00 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002f00:	fd010113          	addi	sp,sp,-48
    80002f04:	02113423          	sd	ra,40(sp)
    80002f08:	02813023          	sd	s0,32(sp)
    80002f0c:	00913c23          	sd	s1,24(sp)
    80002f10:	01213823          	sd	s2,16(sp)
    80002f14:	01313423          	sd	s3,8(sp)
    80002f18:	03010413          	addi	s0,sp,48
    80002f1c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002f20:	00000993          	li	s3,0
    80002f24:	01c0006f          	j	80002f40 <_ZL8consumerPv+0x40>
        printInt(i);
        printString("\n");


        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002f28:	ffffe097          	auipc	ra,0xffffe
    80002f2c:	40c080e7          	jalr	1036(ra) # 80001334 <_Z15thread_dispatchv>
    80002f30:	0840006f          	j	80002fb4 <_ZL8consumerPv+0xb4>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002f34:	00a00513          	li	a0,10
    80002f38:	ffffe097          	auipc	ra,0xffffe
    80002f3c:	660080e7          	jalr	1632(ra) # 80001598 <_Z4putcc>
    while (!threadEnd) {
    80002f40:	00009797          	auipc	a5,0x9
    80002f44:	9687a783          	lw	a5,-1688(a5) # 8000b8a8 <_ZL9threadEnd>
    80002f48:	08079a63          	bnez	a5,80002fdc <_ZL8consumerPv+0xdc>
        int key = data->buffer->get();
    80002f4c:	00893503          	ld	a0,8(s2)
    80002f50:	00003097          	auipc	ra,0x3
    80002f54:	30c080e7          	jalr	780(ra) # 8000625c <_ZN6Buffer3getEv>
        i++;
    80002f58:	0019849b          	addiw	s1,s3,1
    80002f5c:	0004899b          	sext.w	s3,s1
        putc(key);
    80002f60:	0ff57513          	andi	a0,a0,255
    80002f64:	ffffe097          	auipc	ra,0xffffe
    80002f68:	634080e7          	jalr	1588(ra) # 80001598 <_Z4putcc>
        printString("Consumer i = ");
    80002f6c:	00006517          	auipc	a0,0x6
    80002f70:	3bc50513          	addi	a0,a0,956 # 80009328 <_ZZ13printInteger1mE6digits+0x20>
    80002f74:	00002097          	auipc	ra,0x2
    80002f78:	50c080e7          	jalr	1292(ra) # 80005480 <_Z11printStringPKc>
        printInt(i);
    80002f7c:	00000613          	li	a2,0
    80002f80:	00a00593          	li	a1,10
    80002f84:	00098513          	mv	a0,s3
    80002f88:	00002097          	auipc	ra,0x2
    80002f8c:	6a8080e7          	jalr	1704(ra) # 80005630 <_Z8printIntiii>
        printString("\n");
    80002f90:	00006517          	auipc	a0,0x6
    80002f94:	20050513          	addi	a0,a0,512 # 80009190 <CONSOLE_STATUS+0x180>
    80002f98:	00002097          	auipc	ra,0x2
    80002f9c:	4e8080e7          	jalr	1256(ra) # 80005480 <_Z11printStringPKc>
        if (i % (5 * data->id) == 0) {
    80002fa0:	00092703          	lw	a4,0(s2)
    80002fa4:	0027179b          	slliw	a5,a4,0x2
    80002fa8:	00e787bb          	addw	a5,a5,a4
    80002fac:	02f4e7bb          	remw	a5,s1,a5
    80002fb0:	f6078ce3          	beqz	a5,80002f28 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002fb4:	05000793          	li	a5,80
    80002fb8:	02f4e4bb          	remw	s1,s1,a5
    80002fbc:	f80492e3          	bnez	s1,80002f40 <_ZL8consumerPv+0x40>
    80002fc0:	f75ff06f          	j	80002f34 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002fc4:	00893503          	ld	a0,8(s2)
    80002fc8:	00003097          	auipc	ra,0x3
    80002fcc:	294080e7          	jalr	660(ra) # 8000625c <_ZN6Buffer3getEv>
        putc(key);
    80002fd0:	0ff57513          	andi	a0,a0,255
    80002fd4:	ffffe097          	auipc	ra,0xffffe
    80002fd8:	5c4080e7          	jalr	1476(ra) # 80001598 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002fdc:	00893503          	ld	a0,8(s2)
    80002fe0:	00003097          	auipc	ra,0x3
    80002fe4:	308080e7          	jalr	776(ra) # 800062e8 <_ZN6Buffer6getCntEv>
    80002fe8:	fca04ee3          	bgtz	a0,80002fc4 <_ZL8consumerPv+0xc4>
    }

    sem_signal(data->wait);
    80002fec:	01093503          	ld	a0,16(s2)
    80002ff0:	ffffe097          	auipc	ra,0xffffe
    80002ff4:	51c080e7          	jalr	1308(ra) # 8000150c <_Z10sem_signalP3sem>
}
    80002ff8:	02813083          	ld	ra,40(sp)
    80002ffc:	02013403          	ld	s0,32(sp)
    80003000:	01813483          	ld	s1,24(sp)
    80003004:	01013903          	ld	s2,16(sp)
    80003008:	00813983          	ld	s3,8(sp)
    8000300c:	03010113          	addi	sp,sp,48
    80003010:	00008067          	ret

0000000080003014 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003014:	f9010113          	addi	sp,sp,-112
    80003018:	06113423          	sd	ra,104(sp)
    8000301c:	06813023          	sd	s0,96(sp)
    80003020:	04913c23          	sd	s1,88(sp)
    80003024:	05213823          	sd	s2,80(sp)
    80003028:	05313423          	sd	s3,72(sp)
    8000302c:	05413023          	sd	s4,64(sp)
    80003030:	03513c23          	sd	s5,56(sp)
    80003034:	03613823          	sd	s6,48(sp)
    80003038:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    8000303c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003040:	00006517          	auipc	a0,0x6
    80003044:	2f850513          	addi	a0,a0,760 # 80009338 <_ZZ13printInteger1mE6digits+0x30>
    80003048:	00002097          	auipc	ra,0x2
    8000304c:	438080e7          	jalr	1080(ra) # 80005480 <_Z11printStringPKc>
    getString(input, 30);
    80003050:	01e00593          	li	a1,30
    80003054:	fa040493          	addi	s1,s0,-96
    80003058:	00048513          	mv	a0,s1
    8000305c:	00002097          	auipc	ra,0x2
    80003060:	4ac080e7          	jalr	1196(ra) # 80005508 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003064:	00048513          	mv	a0,s1
    80003068:	00002097          	auipc	ra,0x2
    8000306c:	578080e7          	jalr	1400(ra) # 800055e0 <_Z11stringToIntPKc>
    80003070:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003074:	00006517          	auipc	a0,0x6
    80003078:	2e450513          	addi	a0,a0,740 # 80009358 <_ZZ13printInteger1mE6digits+0x50>
    8000307c:	00002097          	auipc	ra,0x2
    80003080:	404080e7          	jalr	1028(ra) # 80005480 <_Z11printStringPKc>
    getString(input, 30);
    80003084:	01e00593          	li	a1,30
    80003088:	00048513          	mv	a0,s1
    8000308c:	00002097          	auipc	ra,0x2
    80003090:	47c080e7          	jalr	1148(ra) # 80005508 <_Z9getStringPci>
    n = stringToInt(input);
    80003094:	00048513          	mv	a0,s1
    80003098:	00002097          	auipc	ra,0x2
    8000309c:	548080e7          	jalr	1352(ra) # 800055e0 <_Z11stringToIntPKc>
    800030a0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800030a4:	00006517          	auipc	a0,0x6
    800030a8:	2d450513          	addi	a0,a0,724 # 80009378 <_ZZ13printInteger1mE6digits+0x70>
    800030ac:	00002097          	auipc	ra,0x2
    800030b0:	3d4080e7          	jalr	980(ra) # 80005480 <_Z11printStringPKc>
    800030b4:	00000613          	li	a2,0
    800030b8:	00a00593          	li	a1,10
    800030bc:	00090513          	mv	a0,s2
    800030c0:	00002097          	auipc	ra,0x2
    800030c4:	570080e7          	jalr	1392(ra) # 80005630 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800030c8:	00006517          	auipc	a0,0x6
    800030cc:	2c850513          	addi	a0,a0,712 # 80009390 <_ZZ13printInteger1mE6digits+0x88>
    800030d0:	00002097          	auipc	ra,0x2
    800030d4:	3b0080e7          	jalr	944(ra) # 80005480 <_Z11printStringPKc>
    800030d8:	00000613          	li	a2,0
    800030dc:	00a00593          	li	a1,10
    800030e0:	00048513          	mv	a0,s1
    800030e4:	00002097          	auipc	ra,0x2
    800030e8:	54c080e7          	jalr	1356(ra) # 80005630 <_Z8printIntiii>
    printString(".\n");
    800030ec:	00006517          	auipc	a0,0x6
    800030f0:	2bc50513          	addi	a0,a0,700 # 800093a8 <_ZZ13printInteger1mE6digits+0xa0>
    800030f4:	00002097          	auipc	ra,0x2
    800030f8:	38c080e7          	jalr	908(ra) # 80005480 <_Z11printStringPKc>
    if(threadNum > n) {
    800030fc:	0324c463          	blt	s1,s2,80003124 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003100:	03205c63          	blez	s2,80003138 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003104:	03800513          	li	a0,56
    80003108:	fffff097          	auipc	ra,0xfffff
    8000310c:	db4080e7          	jalr	-588(ra) # 80001ebc <_Znwm>
    80003110:	00050a13          	mv	s4,a0
    80003114:	00048593          	mv	a1,s1
    80003118:	00003097          	auipc	ra,0x3
    8000311c:	018080e7          	jalr	24(ra) # 80006130 <_ZN6BufferC1Ei>
    80003120:	0300006f          	j	80003150 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003124:	00006517          	auipc	a0,0x6
    80003128:	28c50513          	addi	a0,a0,652 # 800093b0 <_ZZ13printInteger1mE6digits+0xa8>
    8000312c:	00002097          	auipc	ra,0x2
    80003130:	354080e7          	jalr	852(ra) # 80005480 <_Z11printStringPKc>
        return;
    80003134:	0140006f          	j	80003148 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003138:	00006517          	auipc	a0,0x6
    8000313c:	2b850513          	addi	a0,a0,696 # 800093f0 <_ZZ13printInteger1mE6digits+0xe8>
    80003140:	00002097          	auipc	ra,0x2
    80003144:	340080e7          	jalr	832(ra) # 80005480 <_Z11printStringPKc>
        return;
    80003148:	000b0113          	mv	sp,s6
    8000314c:	1500006f          	j	8000329c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003150:	00000593          	li	a1,0
    80003154:	00008517          	auipc	a0,0x8
    80003158:	75c50513          	addi	a0,a0,1884 # 8000b8b0 <_ZL10waitForAll>
    8000315c:	ffffe097          	auipc	ra,0xffffe
    80003160:	31c080e7          	jalr	796(ra) # 80001478 <_Z8sem_openPP3semj>
    thread_t threads[threadNum];
    80003164:	00391793          	slli	a5,s2,0x3
    80003168:	00f78793          	addi	a5,a5,15
    8000316c:	ff07f793          	andi	a5,a5,-16
    80003170:	40f10133          	sub	sp,sp,a5
    80003174:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003178:	0019071b          	addiw	a4,s2,1
    8000317c:	00171793          	slli	a5,a4,0x1
    80003180:	00e787b3          	add	a5,a5,a4
    80003184:	00379793          	slli	a5,a5,0x3
    80003188:	00f78793          	addi	a5,a5,15
    8000318c:	ff07f793          	andi	a5,a5,-16
    80003190:	40f10133          	sub	sp,sp,a5
    80003194:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003198:	00191613          	slli	a2,s2,0x1
    8000319c:	012607b3          	add	a5,a2,s2
    800031a0:	00379793          	slli	a5,a5,0x3
    800031a4:	00f987b3          	add	a5,s3,a5
    800031a8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800031ac:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800031b0:	00008717          	auipc	a4,0x8
    800031b4:	70073703          	ld	a4,1792(a4) # 8000b8b0 <_ZL10waitForAll>
    800031b8:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800031bc:	00078613          	mv	a2,a5
    800031c0:	00000597          	auipc	a1,0x0
    800031c4:	d4058593          	addi	a1,a1,-704 # 80002f00 <_ZL8consumerPv>
    800031c8:	f9840513          	addi	a0,s0,-104
    800031cc:	ffffe097          	auipc	ra,0xffffe
    800031d0:	ff0080e7          	jalr	-16(ra) # 800011bc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800031d4:	00000493          	li	s1,0
    800031d8:	0280006f          	j	80003200 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800031dc:	00000597          	auipc	a1,0x0
    800031e0:	ba458593          	addi	a1,a1,-1116 # 80002d80 <_ZL16producerKeyboardPv>
                      data + i);
    800031e4:	00179613          	slli	a2,a5,0x1
    800031e8:	00f60633          	add	a2,a2,a5
    800031ec:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800031f0:	00c98633          	add	a2,s3,a2
    800031f4:	ffffe097          	auipc	ra,0xffffe
    800031f8:	fc8080e7          	jalr	-56(ra) # 800011bc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800031fc:	0014849b          	addiw	s1,s1,1
    80003200:	0524d263          	bge	s1,s2,80003244 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003204:	00149793          	slli	a5,s1,0x1
    80003208:	009787b3          	add	a5,a5,s1
    8000320c:	00379793          	slli	a5,a5,0x3
    80003210:	00f987b3          	add	a5,s3,a5
    80003214:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003218:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    8000321c:	00008717          	auipc	a4,0x8
    80003220:	69473703          	ld	a4,1684(a4) # 8000b8b0 <_ZL10waitForAll>
    80003224:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003228:	00048793          	mv	a5,s1
    8000322c:	00349513          	slli	a0,s1,0x3
    80003230:	00aa8533          	add	a0,s5,a0
    80003234:	fa9054e3          	blez	s1,800031dc <_Z22producerConsumer_C_APIv+0x1c8>
    80003238:	00000597          	auipc	a1,0x0
    8000323c:	c3458593          	addi	a1,a1,-972 # 80002e6c <_ZL8producerPv>
    80003240:	fa5ff06f          	j	800031e4 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003244:	ffffe097          	auipc	ra,0xffffe
    80003248:	0f0080e7          	jalr	240(ra) # 80001334 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    8000324c:	00000493          	li	s1,0
    80003250:	00994e63          	blt	s2,s1,8000326c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003254:	00008517          	auipc	a0,0x8
    80003258:	65c53503          	ld	a0,1628(a0) # 8000b8b0 <_ZL10waitForAll>
    8000325c:	ffffe097          	auipc	ra,0xffffe
    80003260:	280080e7          	jalr	640(ra) # 800014dc <_Z8sem_waitP3sem>
    for (int i = 0; i <= threadNum; i++) {
    80003264:	0014849b          	addiw	s1,s1,1
    80003268:	fe9ff06f          	j	80003250 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    8000326c:	00008517          	auipc	a0,0x8
    80003270:	64453503          	ld	a0,1604(a0) # 8000b8b0 <_ZL10waitForAll>
    80003274:	ffffe097          	auipc	ra,0xffffe
    80003278:	238080e7          	jalr	568(ra) # 800014ac <_Z9sem_closeP3sem>
    delete buffer;
    8000327c:	000a0e63          	beqz	s4,80003298 <_Z22producerConsumer_C_APIv+0x284>
    80003280:	000a0513          	mv	a0,s4
    80003284:	00003097          	auipc	ra,0x3
    80003288:	0ec080e7          	jalr	236(ra) # 80006370 <_ZN6BufferD1Ev>
    8000328c:	000a0513          	mv	a0,s4
    80003290:	fffff097          	auipc	ra,0xfffff
    80003294:	c7c080e7          	jalr	-900(ra) # 80001f0c <_ZdlPv>
    80003298:	000b0113          	mv	sp,s6

}
    8000329c:	f9040113          	addi	sp,s0,-112
    800032a0:	06813083          	ld	ra,104(sp)
    800032a4:	06013403          	ld	s0,96(sp)
    800032a8:	05813483          	ld	s1,88(sp)
    800032ac:	05013903          	ld	s2,80(sp)
    800032b0:	04813983          	ld	s3,72(sp)
    800032b4:	04013a03          	ld	s4,64(sp)
    800032b8:	03813a83          	ld	s5,56(sp)
    800032bc:	03013b03          	ld	s6,48(sp)
    800032c0:	07010113          	addi	sp,sp,112
    800032c4:	00008067          	ret
    800032c8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800032cc:	000a0513          	mv	a0,s4
    800032d0:	fffff097          	auipc	ra,0xfffff
    800032d4:	c3c080e7          	jalr	-964(ra) # 80001f0c <_ZdlPv>
    800032d8:	00048513          	mv	a0,s1
    800032dc:	00009097          	auipc	ra,0x9
    800032e0:	6fc080e7          	jalr	1788(ra) # 8000c9d8 <_Unwind_Resume>

00000000800032e4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800032e4:	fe010113          	addi	sp,sp,-32
    800032e8:	00113c23          	sd	ra,24(sp)
    800032ec:	00813823          	sd	s0,16(sp)
    800032f0:	00913423          	sd	s1,8(sp)
    800032f4:	01213023          	sd	s2,0(sp)
    800032f8:	02010413          	addi	s0,sp,32
    800032fc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003300:	00100793          	li	a5,1
    80003304:	02a7f863          	bgeu	a5,a0,80003334 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003308:	00a00793          	li	a5,10
    8000330c:	02f577b3          	remu	a5,a0,a5
    80003310:	02078e63          	beqz	a5,8000334c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003314:	fff48513          	addi	a0,s1,-1
    80003318:	00000097          	auipc	ra,0x0
    8000331c:	fcc080e7          	jalr	-52(ra) # 800032e4 <_ZL9fibonaccim>
    80003320:	00050913          	mv	s2,a0
    80003324:	ffe48513          	addi	a0,s1,-2
    80003328:	00000097          	auipc	ra,0x0
    8000332c:	fbc080e7          	jalr	-68(ra) # 800032e4 <_ZL9fibonaccim>
    80003330:	00a90533          	add	a0,s2,a0
}
    80003334:	01813083          	ld	ra,24(sp)
    80003338:	01013403          	ld	s0,16(sp)
    8000333c:	00813483          	ld	s1,8(sp)
    80003340:	00013903          	ld	s2,0(sp)
    80003344:	02010113          	addi	sp,sp,32
    80003348:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000334c:	ffffe097          	auipc	ra,0xffffe
    80003350:	fe8080e7          	jalr	-24(ra) # 80001334 <_Z15thread_dispatchv>
    80003354:	fc1ff06f          	j	80003314 <_ZL9fibonaccim+0x30>

0000000080003358 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003358:	fe010113          	addi	sp,sp,-32
    8000335c:	00113c23          	sd	ra,24(sp)
    80003360:	00813823          	sd	s0,16(sp)
    80003364:	00913423          	sd	s1,8(sp)
    80003368:	01213023          	sd	s2,0(sp)
    8000336c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003370:	00000913          	li	s2,0
    80003374:	0380006f          	j	800033ac <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003378:	ffffe097          	auipc	ra,0xffffe
    8000337c:	fbc080e7          	jalr	-68(ra) # 80001334 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003380:	00148493          	addi	s1,s1,1
    80003384:	000027b7          	lui	a5,0x2
    80003388:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000338c:	0097ee63          	bltu	a5,s1,800033a8 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003390:	00000713          	li	a4,0
    80003394:	000077b7          	lui	a5,0x7
    80003398:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000339c:	fce7eee3          	bltu	a5,a4,80003378 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800033a0:	00170713          	addi	a4,a4,1
    800033a4:	ff1ff06f          	j	80003394 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800033a8:	00190913          	addi	s2,s2,1
    800033ac:	00900793          	li	a5,9
    800033b0:	0527e063          	bltu	a5,s2,800033f0 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800033b4:	00006517          	auipc	a0,0x6
    800033b8:	06c50513          	addi	a0,a0,108 # 80009420 <_ZZ13printInteger1mE6digits+0x118>
    800033bc:	00002097          	auipc	ra,0x2
    800033c0:	0c4080e7          	jalr	196(ra) # 80005480 <_Z11printStringPKc>
    800033c4:	00000613          	li	a2,0
    800033c8:	00a00593          	li	a1,10
    800033cc:	0009051b          	sext.w	a0,s2
    800033d0:	00002097          	auipc	ra,0x2
    800033d4:	260080e7          	jalr	608(ra) # 80005630 <_Z8printIntiii>
    800033d8:	00006517          	auipc	a0,0x6
    800033dc:	db850513          	addi	a0,a0,-584 # 80009190 <CONSOLE_STATUS+0x180>
    800033e0:	00002097          	auipc	ra,0x2
    800033e4:	0a0080e7          	jalr	160(ra) # 80005480 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800033e8:	00000493          	li	s1,0
    800033ec:	f99ff06f          	j	80003384 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800033f0:	00006517          	auipc	a0,0x6
    800033f4:	03850513          	addi	a0,a0,56 # 80009428 <_ZZ13printInteger1mE6digits+0x120>
    800033f8:	00002097          	auipc	ra,0x2
    800033fc:	088080e7          	jalr	136(ra) # 80005480 <_Z11printStringPKc>
    finishedA = true;
    80003400:	00100793          	li	a5,1
    80003404:	00008717          	auipc	a4,0x8
    80003408:	4af70a23          	sb	a5,1204(a4) # 8000b8b8 <_ZL9finishedA>
}
    8000340c:	01813083          	ld	ra,24(sp)
    80003410:	01013403          	ld	s0,16(sp)
    80003414:	00813483          	ld	s1,8(sp)
    80003418:	00013903          	ld	s2,0(sp)
    8000341c:	02010113          	addi	sp,sp,32
    80003420:	00008067          	ret

0000000080003424 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003424:	fe010113          	addi	sp,sp,-32
    80003428:	00113c23          	sd	ra,24(sp)
    8000342c:	00813823          	sd	s0,16(sp)
    80003430:	00913423          	sd	s1,8(sp)
    80003434:	01213023          	sd	s2,0(sp)
    80003438:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000343c:	00000913          	li	s2,0
    80003440:	0380006f          	j	80003478 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003444:	ffffe097          	auipc	ra,0xffffe
    80003448:	ef0080e7          	jalr	-272(ra) # 80001334 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000344c:	00148493          	addi	s1,s1,1
    80003450:	000027b7          	lui	a5,0x2
    80003454:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003458:	0097ee63          	bltu	a5,s1,80003474 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000345c:	00000713          	li	a4,0
    80003460:	000077b7          	lui	a5,0x7
    80003464:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003468:	fce7eee3          	bltu	a5,a4,80003444 <_ZN7WorkerB11workerBodyBEPv+0x20>
    8000346c:	00170713          	addi	a4,a4,1
    80003470:	ff1ff06f          	j	80003460 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003474:	00190913          	addi	s2,s2,1
    80003478:	00f00793          	li	a5,15
    8000347c:	0527e063          	bltu	a5,s2,800034bc <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003480:	00006517          	auipc	a0,0x6
    80003484:	fb850513          	addi	a0,a0,-72 # 80009438 <_ZZ13printInteger1mE6digits+0x130>
    80003488:	00002097          	auipc	ra,0x2
    8000348c:	ff8080e7          	jalr	-8(ra) # 80005480 <_Z11printStringPKc>
    80003490:	00000613          	li	a2,0
    80003494:	00a00593          	li	a1,10
    80003498:	0009051b          	sext.w	a0,s2
    8000349c:	00002097          	auipc	ra,0x2
    800034a0:	194080e7          	jalr	404(ra) # 80005630 <_Z8printIntiii>
    800034a4:	00006517          	auipc	a0,0x6
    800034a8:	cec50513          	addi	a0,a0,-788 # 80009190 <CONSOLE_STATUS+0x180>
    800034ac:	00002097          	auipc	ra,0x2
    800034b0:	fd4080e7          	jalr	-44(ra) # 80005480 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800034b4:	00000493          	li	s1,0
    800034b8:	f99ff06f          	j	80003450 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800034bc:	00006517          	auipc	a0,0x6
    800034c0:	f8450513          	addi	a0,a0,-124 # 80009440 <_ZZ13printInteger1mE6digits+0x138>
    800034c4:	00002097          	auipc	ra,0x2
    800034c8:	fbc080e7          	jalr	-68(ra) # 80005480 <_Z11printStringPKc>
    finishedB = true;
    800034cc:	00100793          	li	a5,1
    800034d0:	00008717          	auipc	a4,0x8
    800034d4:	3ef704a3          	sb	a5,1001(a4) # 8000b8b9 <_ZL9finishedB>
    thread_dispatch();
    800034d8:	ffffe097          	auipc	ra,0xffffe
    800034dc:	e5c080e7          	jalr	-420(ra) # 80001334 <_Z15thread_dispatchv>
}
    800034e0:	01813083          	ld	ra,24(sp)
    800034e4:	01013403          	ld	s0,16(sp)
    800034e8:	00813483          	ld	s1,8(sp)
    800034ec:	00013903          	ld	s2,0(sp)
    800034f0:	02010113          	addi	sp,sp,32
    800034f4:	00008067          	ret

00000000800034f8 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800034f8:	fe010113          	addi	sp,sp,-32
    800034fc:	00113c23          	sd	ra,24(sp)
    80003500:	00813823          	sd	s0,16(sp)
    80003504:	00913423          	sd	s1,8(sp)
    80003508:	01213023          	sd	s2,0(sp)
    8000350c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003510:	00000493          	li	s1,0
    80003514:	0400006f          	j	80003554 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003518:	00006517          	auipc	a0,0x6
    8000351c:	f3850513          	addi	a0,a0,-200 # 80009450 <_ZZ13printInteger1mE6digits+0x148>
    80003520:	00002097          	auipc	ra,0x2
    80003524:	f60080e7          	jalr	-160(ra) # 80005480 <_Z11printStringPKc>
    80003528:	00000613          	li	a2,0
    8000352c:	00a00593          	li	a1,10
    80003530:	00048513          	mv	a0,s1
    80003534:	00002097          	auipc	ra,0x2
    80003538:	0fc080e7          	jalr	252(ra) # 80005630 <_Z8printIntiii>
    8000353c:	00006517          	auipc	a0,0x6
    80003540:	c5450513          	addi	a0,a0,-940 # 80009190 <CONSOLE_STATUS+0x180>
    80003544:	00002097          	auipc	ra,0x2
    80003548:	f3c080e7          	jalr	-196(ra) # 80005480 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000354c:	0014849b          	addiw	s1,s1,1
    80003550:	0ff4f493          	andi	s1,s1,255
    80003554:	00200793          	li	a5,2
    80003558:	fc97f0e3          	bgeu	a5,s1,80003518 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    8000355c:	00006517          	auipc	a0,0x6
    80003560:	efc50513          	addi	a0,a0,-260 # 80009458 <_ZZ13printInteger1mE6digits+0x150>
    80003564:	00002097          	auipc	ra,0x2
    80003568:	f1c080e7          	jalr	-228(ra) # 80005480 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000356c:	00700313          	li	t1,7
    thread_dispatch();
    80003570:	ffffe097          	auipc	ra,0xffffe
    80003574:	dc4080e7          	jalr	-572(ra) # 80001334 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003578:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000357c:	00006517          	auipc	a0,0x6
    80003580:	eec50513          	addi	a0,a0,-276 # 80009468 <_ZZ13printInteger1mE6digits+0x160>
    80003584:	00002097          	auipc	ra,0x2
    80003588:	efc080e7          	jalr	-260(ra) # 80005480 <_Z11printStringPKc>
    8000358c:	00000613          	li	a2,0
    80003590:	00a00593          	li	a1,10
    80003594:	0009051b          	sext.w	a0,s2
    80003598:	00002097          	auipc	ra,0x2
    8000359c:	098080e7          	jalr	152(ra) # 80005630 <_Z8printIntiii>
    800035a0:	00006517          	auipc	a0,0x6
    800035a4:	bf050513          	addi	a0,a0,-1040 # 80009190 <CONSOLE_STATUS+0x180>
    800035a8:	00002097          	auipc	ra,0x2
    800035ac:	ed8080e7          	jalr	-296(ra) # 80005480 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800035b0:	00c00513          	li	a0,12
    800035b4:	00000097          	auipc	ra,0x0
    800035b8:	d30080e7          	jalr	-720(ra) # 800032e4 <_ZL9fibonaccim>
    800035bc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800035c0:	00006517          	auipc	a0,0x6
    800035c4:	eb050513          	addi	a0,a0,-336 # 80009470 <_ZZ13printInteger1mE6digits+0x168>
    800035c8:	00002097          	auipc	ra,0x2
    800035cc:	eb8080e7          	jalr	-328(ra) # 80005480 <_Z11printStringPKc>
    800035d0:	00000613          	li	a2,0
    800035d4:	00a00593          	li	a1,10
    800035d8:	0009051b          	sext.w	a0,s2
    800035dc:	00002097          	auipc	ra,0x2
    800035e0:	054080e7          	jalr	84(ra) # 80005630 <_Z8printIntiii>
    800035e4:	00006517          	auipc	a0,0x6
    800035e8:	bac50513          	addi	a0,a0,-1108 # 80009190 <CONSOLE_STATUS+0x180>
    800035ec:	00002097          	auipc	ra,0x2
    800035f0:	e94080e7          	jalr	-364(ra) # 80005480 <_Z11printStringPKc>
    800035f4:	0400006f          	j	80003634 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800035f8:	00006517          	auipc	a0,0x6
    800035fc:	e5850513          	addi	a0,a0,-424 # 80009450 <_ZZ13printInteger1mE6digits+0x148>
    80003600:	00002097          	auipc	ra,0x2
    80003604:	e80080e7          	jalr	-384(ra) # 80005480 <_Z11printStringPKc>
    80003608:	00000613          	li	a2,0
    8000360c:	00a00593          	li	a1,10
    80003610:	00048513          	mv	a0,s1
    80003614:	00002097          	auipc	ra,0x2
    80003618:	01c080e7          	jalr	28(ra) # 80005630 <_Z8printIntiii>
    8000361c:	00006517          	auipc	a0,0x6
    80003620:	b7450513          	addi	a0,a0,-1164 # 80009190 <CONSOLE_STATUS+0x180>
    80003624:	00002097          	auipc	ra,0x2
    80003628:	e5c080e7          	jalr	-420(ra) # 80005480 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000362c:	0014849b          	addiw	s1,s1,1
    80003630:	0ff4f493          	andi	s1,s1,255
    80003634:	00500793          	li	a5,5
    80003638:	fc97f0e3          	bgeu	a5,s1,800035f8 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("C finished!\n");
    8000363c:	00006517          	auipc	a0,0x6
    80003640:	e4450513          	addi	a0,a0,-444 # 80009480 <_ZZ13printInteger1mE6digits+0x178>
    80003644:	00002097          	auipc	ra,0x2
    80003648:	e3c080e7          	jalr	-452(ra) # 80005480 <_Z11printStringPKc>
    finishedC = true;
    8000364c:	00100793          	li	a5,1
    80003650:	00008717          	auipc	a4,0x8
    80003654:	26f70523          	sb	a5,618(a4) # 8000b8ba <_ZL9finishedC>
    thread_dispatch();
    80003658:	ffffe097          	auipc	ra,0xffffe
    8000365c:	cdc080e7          	jalr	-804(ra) # 80001334 <_Z15thread_dispatchv>
}
    80003660:	01813083          	ld	ra,24(sp)
    80003664:	01013403          	ld	s0,16(sp)
    80003668:	00813483          	ld	s1,8(sp)
    8000366c:	00013903          	ld	s2,0(sp)
    80003670:	02010113          	addi	sp,sp,32
    80003674:	00008067          	ret

0000000080003678 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003678:	fe010113          	addi	sp,sp,-32
    8000367c:	00113c23          	sd	ra,24(sp)
    80003680:	00813823          	sd	s0,16(sp)
    80003684:	00913423          	sd	s1,8(sp)
    80003688:	01213023          	sd	s2,0(sp)
    8000368c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003690:	00a00493          	li	s1,10
    80003694:	0400006f          	j	800036d4 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003698:	00006517          	auipc	a0,0x6
    8000369c:	df850513          	addi	a0,a0,-520 # 80009490 <_ZZ13printInteger1mE6digits+0x188>
    800036a0:	00002097          	auipc	ra,0x2
    800036a4:	de0080e7          	jalr	-544(ra) # 80005480 <_Z11printStringPKc>
    800036a8:	00000613          	li	a2,0
    800036ac:	00a00593          	li	a1,10
    800036b0:	00048513          	mv	a0,s1
    800036b4:	00002097          	auipc	ra,0x2
    800036b8:	f7c080e7          	jalr	-132(ra) # 80005630 <_Z8printIntiii>
    800036bc:	00006517          	auipc	a0,0x6
    800036c0:	ad450513          	addi	a0,a0,-1324 # 80009190 <CONSOLE_STATUS+0x180>
    800036c4:	00002097          	auipc	ra,0x2
    800036c8:	dbc080e7          	jalr	-580(ra) # 80005480 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800036cc:	0014849b          	addiw	s1,s1,1
    800036d0:	0ff4f493          	andi	s1,s1,255
    800036d4:	00c00793          	li	a5,12
    800036d8:	fc97f0e3          	bgeu	a5,s1,80003698 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800036dc:	00006517          	auipc	a0,0x6
    800036e0:	dbc50513          	addi	a0,a0,-580 # 80009498 <_ZZ13printInteger1mE6digits+0x190>
    800036e4:	00002097          	auipc	ra,0x2
    800036e8:	d9c080e7          	jalr	-612(ra) # 80005480 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800036ec:	00500313          	li	t1,5
    thread_dispatch();
    800036f0:	ffffe097          	auipc	ra,0xffffe
    800036f4:	c44080e7          	jalr	-956(ra) # 80001334 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800036f8:	01000513          	li	a0,16
    800036fc:	00000097          	auipc	ra,0x0
    80003700:	be8080e7          	jalr	-1048(ra) # 800032e4 <_ZL9fibonaccim>
    80003704:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003708:	00006517          	auipc	a0,0x6
    8000370c:	da050513          	addi	a0,a0,-608 # 800094a8 <_ZZ13printInteger1mE6digits+0x1a0>
    80003710:	00002097          	auipc	ra,0x2
    80003714:	d70080e7          	jalr	-656(ra) # 80005480 <_Z11printStringPKc>
    80003718:	00000613          	li	a2,0
    8000371c:	00a00593          	li	a1,10
    80003720:	0009051b          	sext.w	a0,s2
    80003724:	00002097          	auipc	ra,0x2
    80003728:	f0c080e7          	jalr	-244(ra) # 80005630 <_Z8printIntiii>
    8000372c:	00006517          	auipc	a0,0x6
    80003730:	a6450513          	addi	a0,a0,-1436 # 80009190 <CONSOLE_STATUS+0x180>
    80003734:	00002097          	auipc	ra,0x2
    80003738:	d4c080e7          	jalr	-692(ra) # 80005480 <_Z11printStringPKc>
    8000373c:	0400006f          	j	8000377c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003740:	00006517          	auipc	a0,0x6
    80003744:	d5050513          	addi	a0,a0,-688 # 80009490 <_ZZ13printInteger1mE6digits+0x188>
    80003748:	00002097          	auipc	ra,0x2
    8000374c:	d38080e7          	jalr	-712(ra) # 80005480 <_Z11printStringPKc>
    80003750:	00000613          	li	a2,0
    80003754:	00a00593          	li	a1,10
    80003758:	00048513          	mv	a0,s1
    8000375c:	00002097          	auipc	ra,0x2
    80003760:	ed4080e7          	jalr	-300(ra) # 80005630 <_Z8printIntiii>
    80003764:	00006517          	auipc	a0,0x6
    80003768:	a2c50513          	addi	a0,a0,-1492 # 80009190 <CONSOLE_STATUS+0x180>
    8000376c:	00002097          	auipc	ra,0x2
    80003770:	d14080e7          	jalr	-748(ra) # 80005480 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003774:	0014849b          	addiw	s1,s1,1
    80003778:	0ff4f493          	andi	s1,s1,255
    8000377c:	00f00793          	li	a5,15
    80003780:	fc97f0e3          	bgeu	a5,s1,80003740 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003784:	00006517          	auipc	a0,0x6
    80003788:	d3450513          	addi	a0,a0,-716 # 800094b8 <_ZZ13printInteger1mE6digits+0x1b0>
    8000378c:	00002097          	auipc	ra,0x2
    80003790:	cf4080e7          	jalr	-780(ra) # 80005480 <_Z11printStringPKc>
    finishedD = true;
    80003794:	00100793          	li	a5,1
    80003798:	00008717          	auipc	a4,0x8
    8000379c:	12f701a3          	sb	a5,291(a4) # 8000b8bb <_ZL9finishedD>
    thread_dispatch();
    800037a0:	ffffe097          	auipc	ra,0xffffe
    800037a4:	b94080e7          	jalr	-1132(ra) # 80001334 <_Z15thread_dispatchv>
}
    800037a8:	01813083          	ld	ra,24(sp)
    800037ac:	01013403          	ld	s0,16(sp)
    800037b0:	00813483          	ld	s1,8(sp)
    800037b4:	00013903          	ld	s2,0(sp)
    800037b8:	02010113          	addi	sp,sp,32
    800037bc:	00008067          	ret

00000000800037c0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800037c0:	fc010113          	addi	sp,sp,-64
    800037c4:	02113c23          	sd	ra,56(sp)
    800037c8:	02813823          	sd	s0,48(sp)
    800037cc:	02913423          	sd	s1,40(sp)
    800037d0:	03213023          	sd	s2,32(sp)
    800037d4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800037d8:	02000513          	li	a0,32
    800037dc:	ffffe097          	auipc	ra,0xffffe
    800037e0:	6e0080e7          	jalr	1760(ra) # 80001ebc <_Znwm>
    800037e4:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800037e8:	fffff097          	auipc	ra,0xfffff
    800037ec:	910080e7          	jalr	-1776(ra) # 800020f8 <_ZN6ThreadC1Ev>
    800037f0:	00008797          	auipc	a5,0x8
    800037f4:	e3878793          	addi	a5,a5,-456 # 8000b628 <_ZTV7WorkerA+0x10>
    800037f8:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800037fc:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003800:	00006517          	auipc	a0,0x6
    80003804:	cc850513          	addi	a0,a0,-824 # 800094c8 <_ZZ13printInteger1mE6digits+0x1c0>
    80003808:	00002097          	auipc	ra,0x2
    8000380c:	c78080e7          	jalr	-904(ra) # 80005480 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003810:	02000513          	li	a0,32
    80003814:	ffffe097          	auipc	ra,0xffffe
    80003818:	6a8080e7          	jalr	1704(ra) # 80001ebc <_Znwm>
    8000381c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003820:	fffff097          	auipc	ra,0xfffff
    80003824:	8d8080e7          	jalr	-1832(ra) # 800020f8 <_ZN6ThreadC1Ev>
    80003828:	00008797          	auipc	a5,0x8
    8000382c:	e2878793          	addi	a5,a5,-472 # 8000b650 <_ZTV7WorkerB+0x10>
    80003830:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003834:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003838:	00006517          	auipc	a0,0x6
    8000383c:	ca850513          	addi	a0,a0,-856 # 800094e0 <_ZZ13printInteger1mE6digits+0x1d8>
    80003840:	00002097          	auipc	ra,0x2
    80003844:	c40080e7          	jalr	-960(ra) # 80005480 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003848:	02000513          	li	a0,32
    8000384c:	ffffe097          	auipc	ra,0xffffe
    80003850:	670080e7          	jalr	1648(ra) # 80001ebc <_Znwm>
    80003854:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003858:	fffff097          	auipc	ra,0xfffff
    8000385c:	8a0080e7          	jalr	-1888(ra) # 800020f8 <_ZN6ThreadC1Ev>
    80003860:	00008797          	auipc	a5,0x8
    80003864:	e1878793          	addi	a5,a5,-488 # 8000b678 <_ZTV7WorkerC+0x10>
    80003868:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    8000386c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003870:	00006517          	auipc	a0,0x6
    80003874:	c8850513          	addi	a0,a0,-888 # 800094f8 <_ZZ13printInteger1mE6digits+0x1f0>
    80003878:	00002097          	auipc	ra,0x2
    8000387c:	c08080e7          	jalr	-1016(ra) # 80005480 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003880:	02000513          	li	a0,32
    80003884:	ffffe097          	auipc	ra,0xffffe
    80003888:	638080e7          	jalr	1592(ra) # 80001ebc <_Znwm>
    8000388c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003890:	fffff097          	auipc	ra,0xfffff
    80003894:	868080e7          	jalr	-1944(ra) # 800020f8 <_ZN6ThreadC1Ev>
    80003898:	00008797          	auipc	a5,0x8
    8000389c:	e0878793          	addi	a5,a5,-504 # 8000b6a0 <_ZTV7WorkerD+0x10>
    800038a0:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800038a4:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800038a8:	00006517          	auipc	a0,0x6
    800038ac:	c6850513          	addi	a0,a0,-920 # 80009510 <_ZZ13printInteger1mE6digits+0x208>
    800038b0:	00002097          	auipc	ra,0x2
    800038b4:	bd0080e7          	jalr	-1072(ra) # 80005480 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800038b8:	00000493          	li	s1,0
    800038bc:	00300793          	li	a5,3
    800038c0:	0297c663          	blt	a5,s1,800038ec <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800038c4:	00349793          	slli	a5,s1,0x3
    800038c8:	fe040713          	addi	a4,s0,-32
    800038cc:	00f707b3          	add	a5,a4,a5
    800038d0:	fe07b503          	ld	a0,-32(a5)
    800038d4:	ffffe097          	auipc	ra,0xffffe
    800038d8:	7f4080e7          	jalr	2036(ra) # 800020c8 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800038dc:	0014849b          	addiw	s1,s1,1
    800038e0:	fddff06f          	j	800038bc <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800038e4:	fffff097          	auipc	ra,0xfffff
    800038e8:	860080e7          	jalr	-1952(ra) # 80002144 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800038ec:	00008797          	auipc	a5,0x8
    800038f0:	fcc7c783          	lbu	a5,-52(a5) # 8000b8b8 <_ZL9finishedA>
    800038f4:	fe0788e3          	beqz	a5,800038e4 <_Z20Threads_CPP_API_testv+0x124>
    800038f8:	00008797          	auipc	a5,0x8
    800038fc:	fc17c783          	lbu	a5,-63(a5) # 8000b8b9 <_ZL9finishedB>
    80003900:	fe0782e3          	beqz	a5,800038e4 <_Z20Threads_CPP_API_testv+0x124>
    80003904:	00008797          	auipc	a5,0x8
    80003908:	fb67c783          	lbu	a5,-74(a5) # 8000b8ba <_ZL9finishedC>
    8000390c:	fc078ce3          	beqz	a5,800038e4 <_Z20Threads_CPP_API_testv+0x124>
    80003910:	00008797          	auipc	a5,0x8
    80003914:	fab7c783          	lbu	a5,-85(a5) # 8000b8bb <_ZL9finishedD>
    80003918:	fc0786e3          	beqz	a5,800038e4 <_Z20Threads_CPP_API_testv+0x124>
    8000391c:	fc040493          	addi	s1,s0,-64
    80003920:	0080006f          	j	80003928 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003924:	00848493          	addi	s1,s1,8
    80003928:	fe040793          	addi	a5,s0,-32
    8000392c:	08f48663          	beq	s1,a5,800039b8 <_Z20Threads_CPP_API_testv+0x1f8>
    80003930:	0004b503          	ld	a0,0(s1)
    80003934:	fe0508e3          	beqz	a0,80003924 <_Z20Threads_CPP_API_testv+0x164>
    80003938:	00053783          	ld	a5,0(a0)
    8000393c:	0087b783          	ld	a5,8(a5)
    80003940:	000780e7          	jalr	a5
    80003944:	fe1ff06f          	j	80003924 <_Z20Threads_CPP_API_testv+0x164>
    80003948:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    8000394c:	00048513          	mv	a0,s1
    80003950:	ffffe097          	auipc	ra,0xffffe
    80003954:	5bc080e7          	jalr	1468(ra) # 80001f0c <_ZdlPv>
    80003958:	00090513          	mv	a0,s2
    8000395c:	00009097          	auipc	ra,0x9
    80003960:	07c080e7          	jalr	124(ra) # 8000c9d8 <_Unwind_Resume>
    80003964:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003968:	00048513          	mv	a0,s1
    8000396c:	ffffe097          	auipc	ra,0xffffe
    80003970:	5a0080e7          	jalr	1440(ra) # 80001f0c <_ZdlPv>
    80003974:	00090513          	mv	a0,s2
    80003978:	00009097          	auipc	ra,0x9
    8000397c:	060080e7          	jalr	96(ra) # 8000c9d8 <_Unwind_Resume>
    80003980:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003984:	00048513          	mv	a0,s1
    80003988:	ffffe097          	auipc	ra,0xffffe
    8000398c:	584080e7          	jalr	1412(ra) # 80001f0c <_ZdlPv>
    80003990:	00090513          	mv	a0,s2
    80003994:	00009097          	auipc	ra,0x9
    80003998:	044080e7          	jalr	68(ra) # 8000c9d8 <_Unwind_Resume>
    8000399c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800039a0:	00048513          	mv	a0,s1
    800039a4:	ffffe097          	auipc	ra,0xffffe
    800039a8:	568080e7          	jalr	1384(ra) # 80001f0c <_ZdlPv>
    800039ac:	00090513          	mv	a0,s2
    800039b0:	00009097          	auipc	ra,0x9
    800039b4:	028080e7          	jalr	40(ra) # 8000c9d8 <_Unwind_Resume>
}
    800039b8:	03813083          	ld	ra,56(sp)
    800039bc:	03013403          	ld	s0,48(sp)
    800039c0:	02813483          	ld	s1,40(sp)
    800039c4:	02013903          	ld	s2,32(sp)
    800039c8:	04010113          	addi	sp,sp,64
    800039cc:	00008067          	ret

00000000800039d0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800039d0:	ff010113          	addi	sp,sp,-16
    800039d4:	00113423          	sd	ra,8(sp)
    800039d8:	00813023          	sd	s0,0(sp)
    800039dc:	01010413          	addi	s0,sp,16
    800039e0:	00008797          	auipc	a5,0x8
    800039e4:	c4878793          	addi	a5,a5,-952 # 8000b628 <_ZTV7WorkerA+0x10>
    800039e8:	00f53023          	sd	a5,0(a0)
    800039ec:	ffffe097          	auipc	ra,0xffffe
    800039f0:	59c080e7          	jalr	1436(ra) # 80001f88 <_ZN6ThreadD1Ev>
    800039f4:	00813083          	ld	ra,8(sp)
    800039f8:	00013403          	ld	s0,0(sp)
    800039fc:	01010113          	addi	sp,sp,16
    80003a00:	00008067          	ret

0000000080003a04 <_ZN7WorkerAD0Ev>:
    80003a04:	fe010113          	addi	sp,sp,-32
    80003a08:	00113c23          	sd	ra,24(sp)
    80003a0c:	00813823          	sd	s0,16(sp)
    80003a10:	00913423          	sd	s1,8(sp)
    80003a14:	02010413          	addi	s0,sp,32
    80003a18:	00050493          	mv	s1,a0
    80003a1c:	00008797          	auipc	a5,0x8
    80003a20:	c0c78793          	addi	a5,a5,-1012 # 8000b628 <_ZTV7WorkerA+0x10>
    80003a24:	00f53023          	sd	a5,0(a0)
    80003a28:	ffffe097          	auipc	ra,0xffffe
    80003a2c:	560080e7          	jalr	1376(ra) # 80001f88 <_ZN6ThreadD1Ev>
    80003a30:	00048513          	mv	a0,s1
    80003a34:	ffffe097          	auipc	ra,0xffffe
    80003a38:	4d8080e7          	jalr	1240(ra) # 80001f0c <_ZdlPv>
    80003a3c:	01813083          	ld	ra,24(sp)
    80003a40:	01013403          	ld	s0,16(sp)
    80003a44:	00813483          	ld	s1,8(sp)
    80003a48:	02010113          	addi	sp,sp,32
    80003a4c:	00008067          	ret

0000000080003a50 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003a50:	ff010113          	addi	sp,sp,-16
    80003a54:	00113423          	sd	ra,8(sp)
    80003a58:	00813023          	sd	s0,0(sp)
    80003a5c:	01010413          	addi	s0,sp,16
    80003a60:	00008797          	auipc	a5,0x8
    80003a64:	bf078793          	addi	a5,a5,-1040 # 8000b650 <_ZTV7WorkerB+0x10>
    80003a68:	00f53023          	sd	a5,0(a0)
    80003a6c:	ffffe097          	auipc	ra,0xffffe
    80003a70:	51c080e7          	jalr	1308(ra) # 80001f88 <_ZN6ThreadD1Ev>
    80003a74:	00813083          	ld	ra,8(sp)
    80003a78:	00013403          	ld	s0,0(sp)
    80003a7c:	01010113          	addi	sp,sp,16
    80003a80:	00008067          	ret

0000000080003a84 <_ZN7WorkerBD0Ev>:
    80003a84:	fe010113          	addi	sp,sp,-32
    80003a88:	00113c23          	sd	ra,24(sp)
    80003a8c:	00813823          	sd	s0,16(sp)
    80003a90:	00913423          	sd	s1,8(sp)
    80003a94:	02010413          	addi	s0,sp,32
    80003a98:	00050493          	mv	s1,a0
    80003a9c:	00008797          	auipc	a5,0x8
    80003aa0:	bb478793          	addi	a5,a5,-1100 # 8000b650 <_ZTV7WorkerB+0x10>
    80003aa4:	00f53023          	sd	a5,0(a0)
    80003aa8:	ffffe097          	auipc	ra,0xffffe
    80003aac:	4e0080e7          	jalr	1248(ra) # 80001f88 <_ZN6ThreadD1Ev>
    80003ab0:	00048513          	mv	a0,s1
    80003ab4:	ffffe097          	auipc	ra,0xffffe
    80003ab8:	458080e7          	jalr	1112(ra) # 80001f0c <_ZdlPv>
    80003abc:	01813083          	ld	ra,24(sp)
    80003ac0:	01013403          	ld	s0,16(sp)
    80003ac4:	00813483          	ld	s1,8(sp)
    80003ac8:	02010113          	addi	sp,sp,32
    80003acc:	00008067          	ret

0000000080003ad0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003ad0:	ff010113          	addi	sp,sp,-16
    80003ad4:	00113423          	sd	ra,8(sp)
    80003ad8:	00813023          	sd	s0,0(sp)
    80003adc:	01010413          	addi	s0,sp,16
    80003ae0:	00008797          	auipc	a5,0x8
    80003ae4:	b9878793          	addi	a5,a5,-1128 # 8000b678 <_ZTV7WorkerC+0x10>
    80003ae8:	00f53023          	sd	a5,0(a0)
    80003aec:	ffffe097          	auipc	ra,0xffffe
    80003af0:	49c080e7          	jalr	1180(ra) # 80001f88 <_ZN6ThreadD1Ev>
    80003af4:	00813083          	ld	ra,8(sp)
    80003af8:	00013403          	ld	s0,0(sp)
    80003afc:	01010113          	addi	sp,sp,16
    80003b00:	00008067          	ret

0000000080003b04 <_ZN7WorkerCD0Ev>:
    80003b04:	fe010113          	addi	sp,sp,-32
    80003b08:	00113c23          	sd	ra,24(sp)
    80003b0c:	00813823          	sd	s0,16(sp)
    80003b10:	00913423          	sd	s1,8(sp)
    80003b14:	02010413          	addi	s0,sp,32
    80003b18:	00050493          	mv	s1,a0
    80003b1c:	00008797          	auipc	a5,0x8
    80003b20:	b5c78793          	addi	a5,a5,-1188 # 8000b678 <_ZTV7WorkerC+0x10>
    80003b24:	00f53023          	sd	a5,0(a0)
    80003b28:	ffffe097          	auipc	ra,0xffffe
    80003b2c:	460080e7          	jalr	1120(ra) # 80001f88 <_ZN6ThreadD1Ev>
    80003b30:	00048513          	mv	a0,s1
    80003b34:	ffffe097          	auipc	ra,0xffffe
    80003b38:	3d8080e7          	jalr	984(ra) # 80001f0c <_ZdlPv>
    80003b3c:	01813083          	ld	ra,24(sp)
    80003b40:	01013403          	ld	s0,16(sp)
    80003b44:	00813483          	ld	s1,8(sp)
    80003b48:	02010113          	addi	sp,sp,32
    80003b4c:	00008067          	ret

0000000080003b50 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003b50:	ff010113          	addi	sp,sp,-16
    80003b54:	00113423          	sd	ra,8(sp)
    80003b58:	00813023          	sd	s0,0(sp)
    80003b5c:	01010413          	addi	s0,sp,16
    80003b60:	00008797          	auipc	a5,0x8
    80003b64:	b4078793          	addi	a5,a5,-1216 # 8000b6a0 <_ZTV7WorkerD+0x10>
    80003b68:	00f53023          	sd	a5,0(a0)
    80003b6c:	ffffe097          	auipc	ra,0xffffe
    80003b70:	41c080e7          	jalr	1052(ra) # 80001f88 <_ZN6ThreadD1Ev>
    80003b74:	00813083          	ld	ra,8(sp)
    80003b78:	00013403          	ld	s0,0(sp)
    80003b7c:	01010113          	addi	sp,sp,16
    80003b80:	00008067          	ret

0000000080003b84 <_ZN7WorkerDD0Ev>:
    80003b84:	fe010113          	addi	sp,sp,-32
    80003b88:	00113c23          	sd	ra,24(sp)
    80003b8c:	00813823          	sd	s0,16(sp)
    80003b90:	00913423          	sd	s1,8(sp)
    80003b94:	02010413          	addi	s0,sp,32
    80003b98:	00050493          	mv	s1,a0
    80003b9c:	00008797          	auipc	a5,0x8
    80003ba0:	b0478793          	addi	a5,a5,-1276 # 8000b6a0 <_ZTV7WorkerD+0x10>
    80003ba4:	00f53023          	sd	a5,0(a0)
    80003ba8:	ffffe097          	auipc	ra,0xffffe
    80003bac:	3e0080e7          	jalr	992(ra) # 80001f88 <_ZN6ThreadD1Ev>
    80003bb0:	00048513          	mv	a0,s1
    80003bb4:	ffffe097          	auipc	ra,0xffffe
    80003bb8:	358080e7          	jalr	856(ra) # 80001f0c <_ZdlPv>
    80003bbc:	01813083          	ld	ra,24(sp)
    80003bc0:	01013403          	ld	s0,16(sp)
    80003bc4:	00813483          	ld	s1,8(sp)
    80003bc8:	02010113          	addi	sp,sp,32
    80003bcc:	00008067          	ret

0000000080003bd0 <_ZN7WorkerA3runEv>:
    void run() override {
    80003bd0:	ff010113          	addi	sp,sp,-16
    80003bd4:	00113423          	sd	ra,8(sp)
    80003bd8:	00813023          	sd	s0,0(sp)
    80003bdc:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003be0:	00000593          	li	a1,0
    80003be4:	fffff097          	auipc	ra,0xfffff
    80003be8:	774080e7          	jalr	1908(ra) # 80003358 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003bec:	00813083          	ld	ra,8(sp)
    80003bf0:	00013403          	ld	s0,0(sp)
    80003bf4:	01010113          	addi	sp,sp,16
    80003bf8:	00008067          	ret

0000000080003bfc <_ZN7WorkerB3runEv>:
    void run() override {
    80003bfc:	ff010113          	addi	sp,sp,-16
    80003c00:	00113423          	sd	ra,8(sp)
    80003c04:	00813023          	sd	s0,0(sp)
    80003c08:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003c0c:	00000593          	li	a1,0
    80003c10:	00000097          	auipc	ra,0x0
    80003c14:	814080e7          	jalr	-2028(ra) # 80003424 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003c18:	00813083          	ld	ra,8(sp)
    80003c1c:	00013403          	ld	s0,0(sp)
    80003c20:	01010113          	addi	sp,sp,16
    80003c24:	00008067          	ret

0000000080003c28 <_ZN7WorkerC3runEv>:
    void run() override {
    80003c28:	ff010113          	addi	sp,sp,-16
    80003c2c:	00113423          	sd	ra,8(sp)
    80003c30:	00813023          	sd	s0,0(sp)
    80003c34:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003c38:	00000593          	li	a1,0
    80003c3c:	00000097          	auipc	ra,0x0
    80003c40:	8bc080e7          	jalr	-1860(ra) # 800034f8 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003c44:	00813083          	ld	ra,8(sp)
    80003c48:	00013403          	ld	s0,0(sp)
    80003c4c:	01010113          	addi	sp,sp,16
    80003c50:	00008067          	ret

0000000080003c54 <_ZN7WorkerD3runEv>:
    void run() override {
    80003c54:	ff010113          	addi	sp,sp,-16
    80003c58:	00113423          	sd	ra,8(sp)
    80003c5c:	00813023          	sd	s0,0(sp)
    80003c60:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003c64:	00000593          	li	a1,0
    80003c68:	00000097          	auipc	ra,0x0
    80003c6c:	a10080e7          	jalr	-1520(ra) # 80003678 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003c70:	00813083          	ld	ra,8(sp)
    80003c74:	00013403          	ld	s0,0(sp)
    80003c78:	01010113          	addi	sp,sp,16
    80003c7c:	00008067          	ret

0000000080003c80 <_ZN1A6BodyA1EPv>:
};




void A::BodyA1(void *arg) {
    80003c80:	fe010113          	addi	sp,sp,-32
    80003c84:	00113c23          	sd	ra,24(sp)
    80003c88:	00813823          	sd	s0,16(sp)
    80003c8c:	00913423          	sd	s1,8(sp)
    80003c90:	01213023          	sd	s2,0(sp)
    80003c94:	02010413          	addi	s0,sp,32

    for (uint64 i = 0; i < 10; i++)
    80003c98:	00000913          	li	s2,0
    80003c9c:	0380006f          	j	80003cd4 <_ZN1A6BodyA1EPv+0x54>
            for (uint64 k = 0; k < 30000; k++)
            {
                /* busy wait */
            }

            thread_dispatch();
    80003ca0:	ffffd097          	auipc	ra,0xffffd
    80003ca4:	694080e7          	jalr	1684(ra) # 80001334 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++)
    80003ca8:	00148493          	addi	s1,s1,1
    80003cac:	000027b7          	lui	a5,0x2
    80003cb0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003cb4:	0097ee63          	bltu	a5,s1,80003cd0 <_ZN1A6BodyA1EPv+0x50>
            for (uint64 k = 0; k < 30000; k++)
    80003cb8:	00000713          	li	a4,0
    80003cbc:	000077b7          	lui	a5,0x7
    80003cc0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003cc4:	fce7eee3          	bltu	a5,a4,80003ca0 <_ZN1A6BodyA1EPv+0x20>
    80003cc8:	00170713          	addi	a4,a4,1
    80003ccc:	ff1ff06f          	j	80003cbc <_ZN1A6BodyA1EPv+0x3c>
    for (uint64 i = 0; i < 10; i++)
    80003cd0:	00190913          	addi	s2,s2,1
    80003cd4:	00900793          	li	a5,9
    80003cd8:	0527e063          	bltu	a5,s2,80003d18 <_ZN1A6BodyA1EPv+0x98>
        printString("A: i=");
    80003cdc:	00005517          	auipc	a0,0x5
    80003ce0:	74450513          	addi	a0,a0,1860 # 80009420 <_ZZ13printInteger1mE6digits+0x118>
    80003ce4:	00001097          	auipc	ra,0x1
    80003ce8:	79c080e7          	jalr	1948(ra) # 80005480 <_Z11printStringPKc>
        printInt(i);
    80003cec:	00000613          	li	a2,0
    80003cf0:	00a00593          	li	a1,10
    80003cf4:	0009051b          	sext.w	a0,s2
    80003cf8:	00002097          	auipc	ra,0x2
    80003cfc:	938080e7          	jalr	-1736(ra) # 80005630 <_Z8printIntiii>
        printString("\n");
    80003d00:	00005517          	auipc	a0,0x5
    80003d04:	49050513          	addi	a0,a0,1168 # 80009190 <CONSOLE_STATUS+0x180>
    80003d08:	00001097          	auipc	ra,0x1
    80003d0c:	778080e7          	jalr	1912(ra) # 80005480 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80003d10:	00000493          	li	s1,0
    80003d14:	f99ff06f          	j	80003cac <_ZN1A6BodyA1EPv+0x2c>
        }
    }

    printString("A finished!\n");
    80003d18:	00005517          	auipc	a0,0x5
    80003d1c:	71050513          	addi	a0,a0,1808 # 80009428 <_ZZ13printInteger1mE6digits+0x120>
    80003d20:	00001097          	auipc	ra,0x1
    80003d24:	760080e7          	jalr	1888(ra) # 80005480 <_Z11printStringPKc>
    finishedA = true;
    80003d28:	00100793          	li	a5,1
    80003d2c:	00008717          	auipc	a4,0x8
    80003d30:	b8f70a23          	sb	a5,-1132(a4) # 8000b8c0 <_ZL9finishedA>

}
    80003d34:	01813083          	ld	ra,24(sp)
    80003d38:	01013403          	ld	s0,16(sp)
    80003d3c:	00813483          	ld	s1,8(sp)
    80003d40:	00013903          	ld	s2,0(sp)
    80003d44:	02010113          	addi	sp,sp,32
    80003d48:	00008067          	ret

0000000080003d4c <_ZN1B6BodyB1EPv>:

void B::BodyB1(void *arg) {
    80003d4c:	fe010113          	addi	sp,sp,-32
    80003d50:	00113c23          	sd	ra,24(sp)
    80003d54:	00813823          	sd	s0,16(sp)
    80003d58:	00913423          	sd	s1,8(sp)
    80003d5c:	01213023          	sd	s2,0(sp)
    80003d60:	02010413          	addi	s0,sp,32

    for (uint64 i = 0; i < 16; i++)
    80003d64:	00000913          	li	s2,0
    80003d68:	0380006f          	j	80003da0 <_ZN1B6BodyB1EPv+0x54>
            for (uint64 k = 0; k < 30000; k++)
            {
                /* busy wait */
            }

            thread_dispatch();
    80003d6c:	ffffd097          	auipc	ra,0xffffd
    80003d70:	5c8080e7          	jalr	1480(ra) # 80001334 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++)
    80003d74:	00148493          	addi	s1,s1,1
    80003d78:	000027b7          	lui	a5,0x2
    80003d7c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003d80:	0097ee63          	bltu	a5,s1,80003d9c <_ZN1B6BodyB1EPv+0x50>
            for (uint64 k = 0; k < 30000; k++)
    80003d84:	00000713          	li	a4,0
    80003d88:	000077b7          	lui	a5,0x7
    80003d8c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003d90:	fce7eee3          	bltu	a5,a4,80003d6c <_ZN1B6BodyB1EPv+0x20>
    80003d94:	00170713          	addi	a4,a4,1
    80003d98:	ff1ff06f          	j	80003d88 <_ZN1B6BodyB1EPv+0x3c>
    for (uint64 i = 0; i < 16; i++)
    80003d9c:	00190913          	addi	s2,s2,1
    80003da0:	00f00793          	li	a5,15
    80003da4:	0527e063          	bltu	a5,s2,80003de4 <_ZN1B6BodyB1EPv+0x98>
        printString("B: i=");
    80003da8:	00005517          	auipc	a0,0x5
    80003dac:	69050513          	addi	a0,a0,1680 # 80009438 <_ZZ13printInteger1mE6digits+0x130>
    80003db0:	00001097          	auipc	ra,0x1
    80003db4:	6d0080e7          	jalr	1744(ra) # 80005480 <_Z11printStringPKc>
        printInt(i);
    80003db8:	00000613          	li	a2,0
    80003dbc:	00a00593          	li	a1,10
    80003dc0:	0009051b          	sext.w	a0,s2
    80003dc4:	00002097          	auipc	ra,0x2
    80003dc8:	86c080e7          	jalr	-1940(ra) # 80005630 <_Z8printIntiii>
        printString("\n");
    80003dcc:	00005517          	auipc	a0,0x5
    80003dd0:	3c450513          	addi	a0,a0,964 # 80009190 <CONSOLE_STATUS+0x180>
    80003dd4:	00001097          	auipc	ra,0x1
    80003dd8:	6ac080e7          	jalr	1708(ra) # 80005480 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80003ddc:	00000493          	li	s1,0
    80003de0:	f99ff06f          	j	80003d78 <_ZN1B6BodyB1EPv+0x2c>
        }
    }

    printString("B finished!\n");
    80003de4:	00005517          	auipc	a0,0x5
    80003de8:	65c50513          	addi	a0,a0,1628 # 80009440 <_ZZ13printInteger1mE6digits+0x138>
    80003dec:	00001097          	auipc	ra,0x1
    80003df0:	694080e7          	jalr	1684(ra) # 80005480 <_Z11printStringPKc>
    finishedB = true;
    80003df4:	00100793          	li	a5,1
    80003df8:	00008717          	auipc	a4,0x8
    80003dfc:	acf704a3          	sb	a5,-1335(a4) # 8000b8c1 <_ZL9finishedB>
    thread_dispatch();
    80003e00:	ffffd097          	auipc	ra,0xffffd
    80003e04:	534080e7          	jalr	1332(ra) # 80001334 <_Z15thread_dispatchv>

}
    80003e08:	01813083          	ld	ra,24(sp)
    80003e0c:	01013403          	ld	s0,16(sp)
    80003e10:	00813483          	ld	s1,8(sp)
    80003e14:	00013903          	ld	s2,0(sp)
    80003e18:	02010113          	addi	sp,sp,32
    80003e1c:	00008067          	ret

0000000080003e20 <_ZN1C6BodyC1EPv>:

void C::BodyC1(void *arg) {
    80003e20:	ff010113          	addi	sp,sp,-16
    80003e24:	00813423          	sd	s0,8(sp)
    80003e28:	01010413          	addi	s0,sp,16


}
    80003e2c:	00813403          	ld	s0,8(sp)
    80003e30:	01010113          	addi	sp,sp,16
    80003e34:	00008067          	ret

0000000080003e38 <_Z11join_threadv>:




void join_thread() {
    80003e38:	fe010113          	addi	sp,sp,-32
    80003e3c:	00113c23          	sd	ra,24(sp)
    80003e40:	00813823          	sd	s0,16(sp)
    80003e44:	00913423          	sd	s1,8(sp)
    80003e48:	01213023          	sd	s2,0(sp)
    80003e4c:	02010413          	addi	s0,sp,32


    threads[0] = new A();
    80003e50:	02000513          	li	a0,32
    80003e54:	ffffe097          	auipc	ra,0xffffe
    80003e58:	068080e7          	jalr	104(ra) # 80001ebc <_Znwm>
    80003e5c:	00050493          	mv	s1,a0
    A():Thread() {}
    80003e60:	ffffe097          	auipc	ra,0xffffe
    80003e64:	298080e7          	jalr	664(ra) # 800020f8 <_ZN6ThreadC1Ev>
    80003e68:	00008797          	auipc	a5,0x8
    80003e6c:	86078793          	addi	a5,a5,-1952 # 8000b6c8 <_ZTV1A+0x10>
    80003e70:	00f4b023          	sd	a5,0(s1)
    threads[0] = new A();
    80003e74:	00008797          	auipc	a5,0x8
    80003e78:	a497ba23          	sd	s1,-1452(a5) # 8000b8c8 <threads>
    printString("ThreadA created\n");
    80003e7c:	00005517          	auipc	a0,0x5
    80003e80:	64c50513          	addi	a0,a0,1612 # 800094c8 <_ZZ13printInteger1mE6digits+0x1c0>
    80003e84:	00001097          	auipc	ra,0x1
    80003e88:	5fc080e7          	jalr	1532(ra) # 80005480 <_Z11printStringPKc>

    threads[1] = new B();
    80003e8c:	02000513          	li	a0,32
    80003e90:	ffffe097          	auipc	ra,0xffffe
    80003e94:	02c080e7          	jalr	44(ra) # 80001ebc <_Znwm>
    80003e98:	00050493          	mv	s1,a0
    B():Thread() {}
    80003e9c:	ffffe097          	auipc	ra,0xffffe
    80003ea0:	25c080e7          	jalr	604(ra) # 800020f8 <_ZN6ThreadC1Ev>
    80003ea4:	00008797          	auipc	a5,0x8
    80003ea8:	84c78793          	addi	a5,a5,-1972 # 8000b6f0 <_ZTV1B+0x10>
    80003eac:	00f4b023          	sd	a5,0(s1)
    threads[1] = new B();
    80003eb0:	00008797          	auipc	a5,0x8
    80003eb4:	a297b023          	sd	s1,-1504(a5) # 8000b8d0 <threads+0x8>
    printString("ThreadB created\n");
    80003eb8:	00005517          	auipc	a0,0x5
    80003ebc:	62850513          	addi	a0,a0,1576 # 800094e0 <_ZZ13printInteger1mE6digits+0x1d8>
    80003ec0:	00001097          	auipc	ra,0x1
    80003ec4:	5c0080e7          	jalr	1472(ra) # 80005480 <_Z11printStringPKc>

    for(int i=0; i<2; i++) {
    80003ec8:	00000493          	li	s1,0
    80003ecc:	0240006f          	j	80003ef0 <_Z11join_threadv+0xb8>
        threads[i]->start();
    80003ed0:	00349713          	slli	a4,s1,0x3
    80003ed4:	00008797          	auipc	a5,0x8
    80003ed8:	9ec78793          	addi	a5,a5,-1556 # 8000b8c0 <_ZL9finishedA>
    80003edc:	00e787b3          	add	a5,a5,a4
    80003ee0:	0087b503          	ld	a0,8(a5)
    80003ee4:	ffffe097          	auipc	ra,0xffffe
    80003ee8:	1e4080e7          	jalr	484(ra) # 800020c8 <_ZN6Thread5startEv>
    for(int i=0; i<2; i++) {
    80003eec:	0014849b          	addiw	s1,s1,1
    80003ef0:	00100793          	li	a5,1
    80003ef4:	fc97dee3          	bge	a5,s1,80003ed0 <_Z11join_threadv+0x98>
    }

    printString("Cekam A\n");
    80003ef8:	00005517          	auipc	a0,0x5
    80003efc:	63050513          	addi	a0,a0,1584 # 80009528 <_ZZ13printInteger1mE6digits+0x220>
    80003f00:	00001097          	auipc	ra,0x1
    80003f04:	580080e7          	jalr	1408(ra) # 80005480 <_Z11printStringPKc>
    threads[0]->join();
    80003f08:	00008497          	auipc	s1,0x8
    80003f0c:	9b848493          	addi	s1,s1,-1608 # 8000b8c0 <_ZL9finishedA>
    80003f10:	0084b503          	ld	a0,8(s1)
    80003f14:	ffffe097          	auipc	ra,0xffffe
    80003f18:	2a8080e7          	jalr	680(ra) # 800021bc <_ZN6Thread4joinEv>
    printString("Cekam B\n");
    80003f1c:	00005517          	auipc	a0,0x5
    80003f20:	61c50513          	addi	a0,a0,1564 # 80009538 <_ZZ13printInteger1mE6digits+0x230>
    80003f24:	00001097          	auipc	ra,0x1
    80003f28:	55c080e7          	jalr	1372(ra) # 80005480 <_Z11printStringPKc>
    threads[1]->join();
    80003f2c:	0104b503          	ld	a0,16(s1)
    80003f30:	ffffe097          	auipc	ra,0xffffe
    80003f34:	28c080e7          	jalr	652(ra) # 800021bc <_ZN6Thread4joinEv>


    80003f38:	01813083          	ld	ra,24(sp)
    80003f3c:	01013403          	ld	s0,16(sp)
    80003f40:	00813483          	ld	s1,8(sp)
    80003f44:	00013903          	ld	s2,0(sp)
    80003f48:	02010113          	addi	sp,sp,32
    80003f4c:	00008067          	ret
    80003f50:	00050913          	mv	s2,a0
    threads[0] = new A();
    80003f54:	00048513          	mv	a0,s1
    80003f58:	ffffe097          	auipc	ra,0xffffe
    80003f5c:	fb4080e7          	jalr	-76(ra) # 80001f0c <_ZdlPv>
    80003f60:	00090513          	mv	a0,s2
    80003f64:	00009097          	auipc	ra,0x9
    80003f68:	a74080e7          	jalr	-1420(ra) # 8000c9d8 <_Unwind_Resume>
    80003f6c:	00050913          	mv	s2,a0
    threads[1] = new B();
    80003f70:	00048513          	mv	a0,s1
    80003f74:	ffffe097          	auipc	ra,0xffffe
    80003f78:	f98080e7          	jalr	-104(ra) # 80001f0c <_ZdlPv>
    80003f7c:	00090513          	mv	a0,s2
    80003f80:	00009097          	auipc	ra,0x9
    80003f84:	a58080e7          	jalr	-1448(ra) # 8000c9d8 <_Unwind_Resume>

0000000080003f88 <_ZN1AD1Ev>:
class A: public Thread {
    80003f88:	ff010113          	addi	sp,sp,-16
    80003f8c:	00113423          	sd	ra,8(sp)
    80003f90:	00813023          	sd	s0,0(sp)
    80003f94:	01010413          	addi	s0,sp,16
    80003f98:	00007797          	auipc	a5,0x7
    80003f9c:	73078793          	addi	a5,a5,1840 # 8000b6c8 <_ZTV1A+0x10>
    80003fa0:	00f53023          	sd	a5,0(a0)
    80003fa4:	ffffe097          	auipc	ra,0xffffe
    80003fa8:	fe4080e7          	jalr	-28(ra) # 80001f88 <_ZN6ThreadD1Ev>
    80003fac:	00813083          	ld	ra,8(sp)
    80003fb0:	00013403          	ld	s0,0(sp)
    80003fb4:	01010113          	addi	sp,sp,16
    80003fb8:	00008067          	ret

0000000080003fbc <_ZN1AD0Ev>:
    80003fbc:	fe010113          	addi	sp,sp,-32
    80003fc0:	00113c23          	sd	ra,24(sp)
    80003fc4:	00813823          	sd	s0,16(sp)
    80003fc8:	00913423          	sd	s1,8(sp)
    80003fcc:	02010413          	addi	s0,sp,32
    80003fd0:	00050493          	mv	s1,a0
    80003fd4:	00007797          	auipc	a5,0x7
    80003fd8:	6f478793          	addi	a5,a5,1780 # 8000b6c8 <_ZTV1A+0x10>
    80003fdc:	00f53023          	sd	a5,0(a0)
    80003fe0:	ffffe097          	auipc	ra,0xffffe
    80003fe4:	fa8080e7          	jalr	-88(ra) # 80001f88 <_ZN6ThreadD1Ev>
    80003fe8:	00048513          	mv	a0,s1
    80003fec:	ffffe097          	auipc	ra,0xffffe
    80003ff0:	f20080e7          	jalr	-224(ra) # 80001f0c <_ZdlPv>
    80003ff4:	01813083          	ld	ra,24(sp)
    80003ff8:	01013403          	ld	s0,16(sp)
    80003ffc:	00813483          	ld	s1,8(sp)
    80004000:	02010113          	addi	sp,sp,32
    80004004:	00008067          	ret

0000000080004008 <_ZN1BD1Ev>:
class B: public Thread {
    80004008:	ff010113          	addi	sp,sp,-16
    8000400c:	00113423          	sd	ra,8(sp)
    80004010:	00813023          	sd	s0,0(sp)
    80004014:	01010413          	addi	s0,sp,16
    80004018:	00007797          	auipc	a5,0x7
    8000401c:	6d878793          	addi	a5,a5,1752 # 8000b6f0 <_ZTV1B+0x10>
    80004020:	00f53023          	sd	a5,0(a0)
    80004024:	ffffe097          	auipc	ra,0xffffe
    80004028:	f64080e7          	jalr	-156(ra) # 80001f88 <_ZN6ThreadD1Ev>
    8000402c:	00813083          	ld	ra,8(sp)
    80004030:	00013403          	ld	s0,0(sp)
    80004034:	01010113          	addi	sp,sp,16
    80004038:	00008067          	ret

000000008000403c <_ZN1BD0Ev>:
    8000403c:	fe010113          	addi	sp,sp,-32
    80004040:	00113c23          	sd	ra,24(sp)
    80004044:	00813823          	sd	s0,16(sp)
    80004048:	00913423          	sd	s1,8(sp)
    8000404c:	02010413          	addi	s0,sp,32
    80004050:	00050493          	mv	s1,a0
    80004054:	00007797          	auipc	a5,0x7
    80004058:	69c78793          	addi	a5,a5,1692 # 8000b6f0 <_ZTV1B+0x10>
    8000405c:	00f53023          	sd	a5,0(a0)
    80004060:	ffffe097          	auipc	ra,0xffffe
    80004064:	f28080e7          	jalr	-216(ra) # 80001f88 <_ZN6ThreadD1Ev>
    80004068:	00048513          	mv	a0,s1
    8000406c:	ffffe097          	auipc	ra,0xffffe
    80004070:	ea0080e7          	jalr	-352(ra) # 80001f0c <_ZdlPv>
    80004074:	01813083          	ld	ra,24(sp)
    80004078:	01013403          	ld	s0,16(sp)
    8000407c:	00813483          	ld	s1,8(sp)
    80004080:	02010113          	addi	sp,sp,32
    80004084:	00008067          	ret

0000000080004088 <_ZN1A3runEv>:
    void run() override {
    80004088:	ff010113          	addi	sp,sp,-16
    8000408c:	00113423          	sd	ra,8(sp)
    80004090:	00813023          	sd	s0,0(sp)
    80004094:	01010413          	addi	s0,sp,16
        BodyA1(nullptr);
    80004098:	00000593          	li	a1,0
    8000409c:	00000097          	auipc	ra,0x0
    800040a0:	be4080e7          	jalr	-1052(ra) # 80003c80 <_ZN1A6BodyA1EPv>
    }
    800040a4:	00813083          	ld	ra,8(sp)
    800040a8:	00013403          	ld	s0,0(sp)
    800040ac:	01010113          	addi	sp,sp,16
    800040b0:	00008067          	ret

00000000800040b4 <_ZN1B3runEv>:
    void run() override {
    800040b4:	ff010113          	addi	sp,sp,-16
    800040b8:	00113423          	sd	ra,8(sp)
    800040bc:	00813023          	sd	s0,0(sp)
    800040c0:	01010413          	addi	s0,sp,16
        BodyB1(nullptr);
    800040c4:	00000593          	li	a1,0
    800040c8:	00000097          	auipc	ra,0x0
    800040cc:	c84080e7          	jalr	-892(ra) # 80003d4c <_ZN1B6BodyB1EPv>
    }
    800040d0:	00813083          	ld	ra,8(sp)
    800040d4:	00013403          	ld	s0,0(sp)
    800040d8:	01010113          	addi	sp,sp,16
    800040dc:	00008067          	ret

00000000800040e0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800040e0:	fe010113          	addi	sp,sp,-32
    800040e4:	00113c23          	sd	ra,24(sp)
    800040e8:	00813823          	sd	s0,16(sp)
    800040ec:	00913423          	sd	s1,8(sp)
    800040f0:	01213023          	sd	s2,0(sp)
    800040f4:	02010413          	addi	s0,sp,32
    800040f8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800040fc:	00100793          	li	a5,1
    80004100:	02a7f863          	bgeu	a5,a0,80004130 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004104:	00a00793          	li	a5,10
    80004108:	02f577b3          	remu	a5,a0,a5
    8000410c:	02078e63          	beqz	a5,80004148 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004110:	fff48513          	addi	a0,s1,-1
    80004114:	00000097          	auipc	ra,0x0
    80004118:	fcc080e7          	jalr	-52(ra) # 800040e0 <_ZL9fibonaccim>
    8000411c:	00050913          	mv	s2,a0
    80004120:	ffe48513          	addi	a0,s1,-2
    80004124:	00000097          	auipc	ra,0x0
    80004128:	fbc080e7          	jalr	-68(ra) # 800040e0 <_ZL9fibonaccim>
    8000412c:	00a90533          	add	a0,s2,a0
}
    80004130:	01813083          	ld	ra,24(sp)
    80004134:	01013403          	ld	s0,16(sp)
    80004138:	00813483          	ld	s1,8(sp)
    8000413c:	00013903          	ld	s2,0(sp)
    80004140:	02010113          	addi	sp,sp,32
    80004144:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004148:	ffffd097          	auipc	ra,0xffffd
    8000414c:	1ec080e7          	jalr	492(ra) # 80001334 <_Z15thread_dispatchv>
    80004150:	fc1ff06f          	j	80004110 <_ZL9fibonaccim+0x30>

0000000080004154 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004154:	fe010113          	addi	sp,sp,-32
    80004158:	00113c23          	sd	ra,24(sp)
    8000415c:	00813823          	sd	s0,16(sp)
    80004160:	00913423          	sd	s1,8(sp)
    80004164:	01213023          	sd	s2,0(sp)
    80004168:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000416c:	00a00493          	li	s1,10
    80004170:	0400006f          	j	800041b0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004174:	00005517          	auipc	a0,0x5
    80004178:	31c50513          	addi	a0,a0,796 # 80009490 <_ZZ13printInteger1mE6digits+0x188>
    8000417c:	00001097          	auipc	ra,0x1
    80004180:	304080e7          	jalr	772(ra) # 80005480 <_Z11printStringPKc>
    80004184:	00000613          	li	a2,0
    80004188:	00a00593          	li	a1,10
    8000418c:	00048513          	mv	a0,s1
    80004190:	00001097          	auipc	ra,0x1
    80004194:	4a0080e7          	jalr	1184(ra) # 80005630 <_Z8printIntiii>
    80004198:	00005517          	auipc	a0,0x5
    8000419c:	ff850513          	addi	a0,a0,-8 # 80009190 <CONSOLE_STATUS+0x180>
    800041a0:	00001097          	auipc	ra,0x1
    800041a4:	2e0080e7          	jalr	736(ra) # 80005480 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800041a8:	0014849b          	addiw	s1,s1,1
    800041ac:	0ff4f493          	andi	s1,s1,255
    800041b0:	00c00793          	li	a5,12
    800041b4:	fc97f0e3          	bgeu	a5,s1,80004174 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800041b8:	00005517          	auipc	a0,0x5
    800041bc:	2e050513          	addi	a0,a0,736 # 80009498 <_ZZ13printInteger1mE6digits+0x190>
    800041c0:	00001097          	auipc	ra,0x1
    800041c4:	2c0080e7          	jalr	704(ra) # 80005480 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800041c8:	00500313          	li	t1,5
    thread_dispatch();
    800041cc:	ffffd097          	auipc	ra,0xffffd
    800041d0:	168080e7          	jalr	360(ra) # 80001334 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800041d4:	01000513          	li	a0,16
    800041d8:	00000097          	auipc	ra,0x0
    800041dc:	f08080e7          	jalr	-248(ra) # 800040e0 <_ZL9fibonaccim>
    800041e0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800041e4:	00005517          	auipc	a0,0x5
    800041e8:	2c450513          	addi	a0,a0,708 # 800094a8 <_ZZ13printInteger1mE6digits+0x1a0>
    800041ec:	00001097          	auipc	ra,0x1
    800041f0:	294080e7          	jalr	660(ra) # 80005480 <_Z11printStringPKc>
    800041f4:	00000613          	li	a2,0
    800041f8:	00a00593          	li	a1,10
    800041fc:	0009051b          	sext.w	a0,s2
    80004200:	00001097          	auipc	ra,0x1
    80004204:	430080e7          	jalr	1072(ra) # 80005630 <_Z8printIntiii>
    80004208:	00005517          	auipc	a0,0x5
    8000420c:	f8850513          	addi	a0,a0,-120 # 80009190 <CONSOLE_STATUS+0x180>
    80004210:	00001097          	auipc	ra,0x1
    80004214:	270080e7          	jalr	624(ra) # 80005480 <_Z11printStringPKc>
    80004218:	0400006f          	j	80004258 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000421c:	00005517          	auipc	a0,0x5
    80004220:	27450513          	addi	a0,a0,628 # 80009490 <_ZZ13printInteger1mE6digits+0x188>
    80004224:	00001097          	auipc	ra,0x1
    80004228:	25c080e7          	jalr	604(ra) # 80005480 <_Z11printStringPKc>
    8000422c:	00000613          	li	a2,0
    80004230:	00a00593          	li	a1,10
    80004234:	00048513          	mv	a0,s1
    80004238:	00001097          	auipc	ra,0x1
    8000423c:	3f8080e7          	jalr	1016(ra) # 80005630 <_Z8printIntiii>
    80004240:	00005517          	auipc	a0,0x5
    80004244:	f5050513          	addi	a0,a0,-176 # 80009190 <CONSOLE_STATUS+0x180>
    80004248:	00001097          	auipc	ra,0x1
    8000424c:	238080e7          	jalr	568(ra) # 80005480 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004250:	0014849b          	addiw	s1,s1,1
    80004254:	0ff4f493          	andi	s1,s1,255
    80004258:	00f00793          	li	a5,15
    8000425c:	fc97f0e3          	bgeu	a5,s1,8000421c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004260:	00005517          	auipc	a0,0x5
    80004264:	25850513          	addi	a0,a0,600 # 800094b8 <_ZZ13printInteger1mE6digits+0x1b0>
    80004268:	00001097          	auipc	ra,0x1
    8000426c:	218080e7          	jalr	536(ra) # 80005480 <_Z11printStringPKc>
    finishedD = true;
    80004270:	00100793          	li	a5,1
    80004274:	00007717          	auipc	a4,0x7
    80004278:	66f70323          	sb	a5,1638(a4) # 8000b8da <_ZL9finishedD>
    thread_dispatch();
    8000427c:	ffffd097          	auipc	ra,0xffffd
    80004280:	0b8080e7          	jalr	184(ra) # 80001334 <_Z15thread_dispatchv>
}
    80004284:	01813083          	ld	ra,24(sp)
    80004288:	01013403          	ld	s0,16(sp)
    8000428c:	00813483          	ld	s1,8(sp)
    80004290:	00013903          	ld	s2,0(sp)
    80004294:	02010113          	addi	sp,sp,32
    80004298:	00008067          	ret

000000008000429c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000429c:	fe010113          	addi	sp,sp,-32
    800042a0:	00113c23          	sd	ra,24(sp)
    800042a4:	00813823          	sd	s0,16(sp)
    800042a8:	00913423          	sd	s1,8(sp)
    800042ac:	01213023          	sd	s2,0(sp)
    800042b0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800042b4:	00000493          	li	s1,0
    800042b8:	0400006f          	j	800042f8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800042bc:	00005517          	auipc	a0,0x5
    800042c0:	19450513          	addi	a0,a0,404 # 80009450 <_ZZ13printInteger1mE6digits+0x148>
    800042c4:	00001097          	auipc	ra,0x1
    800042c8:	1bc080e7          	jalr	444(ra) # 80005480 <_Z11printStringPKc>
    800042cc:	00000613          	li	a2,0
    800042d0:	00a00593          	li	a1,10
    800042d4:	00048513          	mv	a0,s1
    800042d8:	00001097          	auipc	ra,0x1
    800042dc:	358080e7          	jalr	856(ra) # 80005630 <_Z8printIntiii>
    800042e0:	00005517          	auipc	a0,0x5
    800042e4:	eb050513          	addi	a0,a0,-336 # 80009190 <CONSOLE_STATUS+0x180>
    800042e8:	00001097          	auipc	ra,0x1
    800042ec:	198080e7          	jalr	408(ra) # 80005480 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800042f0:	0014849b          	addiw	s1,s1,1
    800042f4:	0ff4f493          	andi	s1,s1,255
    800042f8:	00200793          	li	a5,2
    800042fc:	fc97f0e3          	bgeu	a5,s1,800042bc <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004300:	00005517          	auipc	a0,0x5
    80004304:	15850513          	addi	a0,a0,344 # 80009458 <_ZZ13printInteger1mE6digits+0x150>
    80004308:	00001097          	auipc	ra,0x1
    8000430c:	178080e7          	jalr	376(ra) # 80005480 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004310:	00700313          	li	t1,7
    thread_dispatch();
    80004314:	ffffd097          	auipc	ra,0xffffd
    80004318:	020080e7          	jalr	32(ra) # 80001334 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000431c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004320:	00005517          	auipc	a0,0x5
    80004324:	14850513          	addi	a0,a0,328 # 80009468 <_ZZ13printInteger1mE6digits+0x160>
    80004328:	00001097          	auipc	ra,0x1
    8000432c:	158080e7          	jalr	344(ra) # 80005480 <_Z11printStringPKc>
    80004330:	00000613          	li	a2,0
    80004334:	00a00593          	li	a1,10
    80004338:	0009051b          	sext.w	a0,s2
    8000433c:	00001097          	auipc	ra,0x1
    80004340:	2f4080e7          	jalr	756(ra) # 80005630 <_Z8printIntiii>
    80004344:	00005517          	auipc	a0,0x5
    80004348:	e4c50513          	addi	a0,a0,-436 # 80009190 <CONSOLE_STATUS+0x180>
    8000434c:	00001097          	auipc	ra,0x1
    80004350:	134080e7          	jalr	308(ra) # 80005480 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004354:	00c00513          	li	a0,12
    80004358:	00000097          	auipc	ra,0x0
    8000435c:	d88080e7          	jalr	-632(ra) # 800040e0 <_ZL9fibonaccim>
    80004360:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004364:	00005517          	auipc	a0,0x5
    80004368:	10c50513          	addi	a0,a0,268 # 80009470 <_ZZ13printInteger1mE6digits+0x168>
    8000436c:	00001097          	auipc	ra,0x1
    80004370:	114080e7          	jalr	276(ra) # 80005480 <_Z11printStringPKc>
    80004374:	00000613          	li	a2,0
    80004378:	00a00593          	li	a1,10
    8000437c:	0009051b          	sext.w	a0,s2
    80004380:	00001097          	auipc	ra,0x1
    80004384:	2b0080e7          	jalr	688(ra) # 80005630 <_Z8printIntiii>
    80004388:	00005517          	auipc	a0,0x5
    8000438c:	e0850513          	addi	a0,a0,-504 # 80009190 <CONSOLE_STATUS+0x180>
    80004390:	00001097          	auipc	ra,0x1
    80004394:	0f0080e7          	jalr	240(ra) # 80005480 <_Z11printStringPKc>
    80004398:	0400006f          	j	800043d8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000439c:	00005517          	auipc	a0,0x5
    800043a0:	0b450513          	addi	a0,a0,180 # 80009450 <_ZZ13printInteger1mE6digits+0x148>
    800043a4:	00001097          	auipc	ra,0x1
    800043a8:	0dc080e7          	jalr	220(ra) # 80005480 <_Z11printStringPKc>
    800043ac:	00000613          	li	a2,0
    800043b0:	00a00593          	li	a1,10
    800043b4:	00048513          	mv	a0,s1
    800043b8:	00001097          	auipc	ra,0x1
    800043bc:	278080e7          	jalr	632(ra) # 80005630 <_Z8printIntiii>
    800043c0:	00005517          	auipc	a0,0x5
    800043c4:	dd050513          	addi	a0,a0,-560 # 80009190 <CONSOLE_STATUS+0x180>
    800043c8:	00001097          	auipc	ra,0x1
    800043cc:	0b8080e7          	jalr	184(ra) # 80005480 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800043d0:	0014849b          	addiw	s1,s1,1
    800043d4:	0ff4f493          	andi	s1,s1,255
    800043d8:	00500793          	li	a5,5
    800043dc:	fc97f0e3          	bgeu	a5,s1,8000439c <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    800043e0:	00005517          	auipc	a0,0x5
    800043e4:	0a050513          	addi	a0,a0,160 # 80009480 <_ZZ13printInteger1mE6digits+0x178>
    800043e8:	00001097          	auipc	ra,0x1
    800043ec:	098080e7          	jalr	152(ra) # 80005480 <_Z11printStringPKc>
    finishedC = true;
    800043f0:	00100793          	li	a5,1
    800043f4:	00007717          	auipc	a4,0x7
    800043f8:	4ef703a3          	sb	a5,1255(a4) # 8000b8db <_ZL9finishedC>
    thread_dispatch();
    800043fc:	ffffd097          	auipc	ra,0xffffd
    80004400:	f38080e7          	jalr	-200(ra) # 80001334 <_Z15thread_dispatchv>
}
    80004404:	01813083          	ld	ra,24(sp)
    80004408:	01013403          	ld	s0,16(sp)
    8000440c:	00813483          	ld	s1,8(sp)
    80004410:	00013903          	ld	s2,0(sp)
    80004414:	02010113          	addi	sp,sp,32
    80004418:	00008067          	ret

000000008000441c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000441c:	fe010113          	addi	sp,sp,-32
    80004420:	00113c23          	sd	ra,24(sp)
    80004424:	00813823          	sd	s0,16(sp)
    80004428:	00913423          	sd	s1,8(sp)
    8000442c:	01213023          	sd	s2,0(sp)
    80004430:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004434:	00000913          	li	s2,0
    80004438:	0380006f          	j	80004470 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    8000443c:	ffffd097          	auipc	ra,0xffffd
    80004440:	ef8080e7          	jalr	-264(ra) # 80001334 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004444:	00148493          	addi	s1,s1,1
    80004448:	000027b7          	lui	a5,0x2
    8000444c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004450:	0097ee63          	bltu	a5,s1,8000446c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004454:	00000713          	li	a4,0
    80004458:	000077b7          	lui	a5,0x7
    8000445c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004460:	fce7eee3          	bltu	a5,a4,8000443c <_ZL11workerBodyBPv+0x20>
    80004464:	00170713          	addi	a4,a4,1
    80004468:	ff1ff06f          	j	80004458 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000446c:	00190913          	addi	s2,s2,1
    80004470:	00f00793          	li	a5,15
    80004474:	0527e063          	bltu	a5,s2,800044b4 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004478:	00005517          	auipc	a0,0x5
    8000447c:	fc050513          	addi	a0,a0,-64 # 80009438 <_ZZ13printInteger1mE6digits+0x130>
    80004480:	00001097          	auipc	ra,0x1
    80004484:	000080e7          	jalr	ra # 80005480 <_Z11printStringPKc>
    80004488:	00000613          	li	a2,0
    8000448c:	00a00593          	li	a1,10
    80004490:	0009051b          	sext.w	a0,s2
    80004494:	00001097          	auipc	ra,0x1
    80004498:	19c080e7          	jalr	412(ra) # 80005630 <_Z8printIntiii>
    8000449c:	00005517          	auipc	a0,0x5
    800044a0:	cf450513          	addi	a0,a0,-780 # 80009190 <CONSOLE_STATUS+0x180>
    800044a4:	00001097          	auipc	ra,0x1
    800044a8:	fdc080e7          	jalr	-36(ra) # 80005480 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800044ac:	00000493          	li	s1,0
    800044b0:	f99ff06f          	j	80004448 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800044b4:	00005517          	auipc	a0,0x5
    800044b8:	f8c50513          	addi	a0,a0,-116 # 80009440 <_ZZ13printInteger1mE6digits+0x138>
    800044bc:	00001097          	auipc	ra,0x1
    800044c0:	fc4080e7          	jalr	-60(ra) # 80005480 <_Z11printStringPKc>
    finishedB = true;
    800044c4:	00100793          	li	a5,1
    800044c8:	00007717          	auipc	a4,0x7
    800044cc:	40f70a23          	sb	a5,1044(a4) # 8000b8dc <_ZL9finishedB>
    thread_dispatch();
    800044d0:	ffffd097          	auipc	ra,0xffffd
    800044d4:	e64080e7          	jalr	-412(ra) # 80001334 <_Z15thread_dispatchv>
}
    800044d8:	01813083          	ld	ra,24(sp)
    800044dc:	01013403          	ld	s0,16(sp)
    800044e0:	00813483          	ld	s1,8(sp)
    800044e4:	00013903          	ld	s2,0(sp)
    800044e8:	02010113          	addi	sp,sp,32
    800044ec:	00008067          	ret

00000000800044f0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800044f0:	fe010113          	addi	sp,sp,-32
    800044f4:	00113c23          	sd	ra,24(sp)
    800044f8:	00813823          	sd	s0,16(sp)
    800044fc:	00913423          	sd	s1,8(sp)
    80004500:	01213023          	sd	s2,0(sp)
    80004504:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004508:	00000913          	li	s2,0
    8000450c:	0380006f          	j	80004544 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004510:	ffffd097          	auipc	ra,0xffffd
    80004514:	e24080e7          	jalr	-476(ra) # 80001334 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004518:	00148493          	addi	s1,s1,1
    8000451c:	000027b7          	lui	a5,0x2
    80004520:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004524:	0097ee63          	bltu	a5,s1,80004540 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004528:	00000713          	li	a4,0
    8000452c:	000077b7          	lui	a5,0x7
    80004530:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004534:	fce7eee3          	bltu	a5,a4,80004510 <_ZL11workerBodyAPv+0x20>
    80004538:	00170713          	addi	a4,a4,1
    8000453c:	ff1ff06f          	j	8000452c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004540:	00190913          	addi	s2,s2,1
    80004544:	00900793          	li	a5,9
    80004548:	0527e063          	bltu	a5,s2,80004588 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000454c:	00005517          	auipc	a0,0x5
    80004550:	ed450513          	addi	a0,a0,-300 # 80009420 <_ZZ13printInteger1mE6digits+0x118>
    80004554:	00001097          	auipc	ra,0x1
    80004558:	f2c080e7          	jalr	-212(ra) # 80005480 <_Z11printStringPKc>
    8000455c:	00000613          	li	a2,0
    80004560:	00a00593          	li	a1,10
    80004564:	0009051b          	sext.w	a0,s2
    80004568:	00001097          	auipc	ra,0x1
    8000456c:	0c8080e7          	jalr	200(ra) # 80005630 <_Z8printIntiii>
    80004570:	00005517          	auipc	a0,0x5
    80004574:	c2050513          	addi	a0,a0,-992 # 80009190 <CONSOLE_STATUS+0x180>
    80004578:	00001097          	auipc	ra,0x1
    8000457c:	f08080e7          	jalr	-248(ra) # 80005480 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004580:	00000493          	li	s1,0
    80004584:	f99ff06f          	j	8000451c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004588:	00005517          	auipc	a0,0x5
    8000458c:	ea050513          	addi	a0,a0,-352 # 80009428 <_ZZ13printInteger1mE6digits+0x120>
    80004590:	00001097          	auipc	ra,0x1
    80004594:	ef0080e7          	jalr	-272(ra) # 80005480 <_Z11printStringPKc>
    finishedA = true;
    80004598:	00100793          	li	a5,1
    8000459c:	00007717          	auipc	a4,0x7
    800045a0:	34f700a3          	sb	a5,833(a4) # 8000b8dd <_ZL9finishedA>
}
    800045a4:	01813083          	ld	ra,24(sp)
    800045a8:	01013403          	ld	s0,16(sp)
    800045ac:	00813483          	ld	s1,8(sp)
    800045b0:	00013903          	ld	s2,0(sp)
    800045b4:	02010113          	addi	sp,sp,32
    800045b8:	00008067          	ret

00000000800045bc <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800045bc:	fd010113          	addi	sp,sp,-48
    800045c0:	02113423          	sd	ra,40(sp)
    800045c4:	02813023          	sd	s0,32(sp)
    800045c8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800045cc:	00000613          	li	a2,0
    800045d0:	00000597          	auipc	a1,0x0
    800045d4:	f2058593          	addi	a1,a1,-224 # 800044f0 <_ZL11workerBodyAPv>
    800045d8:	fd040513          	addi	a0,s0,-48
    800045dc:	ffffd097          	auipc	ra,0xffffd
    800045e0:	be0080e7          	jalr	-1056(ra) # 800011bc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800045e4:	00005517          	auipc	a0,0x5
    800045e8:	ee450513          	addi	a0,a0,-284 # 800094c8 <_ZZ13printInteger1mE6digits+0x1c0>
    800045ec:	00001097          	auipc	ra,0x1
    800045f0:	e94080e7          	jalr	-364(ra) # 80005480 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800045f4:	00000613          	li	a2,0
    800045f8:	00000597          	auipc	a1,0x0
    800045fc:	e2458593          	addi	a1,a1,-476 # 8000441c <_ZL11workerBodyBPv>
    80004600:	fd840513          	addi	a0,s0,-40
    80004604:	ffffd097          	auipc	ra,0xffffd
    80004608:	bb8080e7          	jalr	-1096(ra) # 800011bc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    8000460c:	00005517          	auipc	a0,0x5
    80004610:	ed450513          	addi	a0,a0,-300 # 800094e0 <_ZZ13printInteger1mE6digits+0x1d8>
    80004614:	00001097          	auipc	ra,0x1
    80004618:	e6c080e7          	jalr	-404(ra) # 80005480 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000461c:	00000613          	li	a2,0
    80004620:	00000597          	auipc	a1,0x0
    80004624:	c7c58593          	addi	a1,a1,-900 # 8000429c <_ZL11workerBodyCPv>
    80004628:	fe040513          	addi	a0,s0,-32
    8000462c:	ffffd097          	auipc	ra,0xffffd
    80004630:	b90080e7          	jalr	-1136(ra) # 800011bc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004634:	00005517          	auipc	a0,0x5
    80004638:	ec450513          	addi	a0,a0,-316 # 800094f8 <_ZZ13printInteger1mE6digits+0x1f0>
    8000463c:	00001097          	auipc	ra,0x1
    80004640:	e44080e7          	jalr	-444(ra) # 80005480 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004644:	00000613          	li	a2,0
    80004648:	00000597          	auipc	a1,0x0
    8000464c:	b0c58593          	addi	a1,a1,-1268 # 80004154 <_ZL11workerBodyDPv>
    80004650:	fe840513          	addi	a0,s0,-24
    80004654:	ffffd097          	auipc	ra,0xffffd
    80004658:	b68080e7          	jalr	-1176(ra) # 800011bc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    8000465c:	00005517          	auipc	a0,0x5
    80004660:	eb450513          	addi	a0,a0,-332 # 80009510 <_ZZ13printInteger1mE6digits+0x208>
    80004664:	00001097          	auipc	ra,0x1
    80004668:	e1c080e7          	jalr	-484(ra) # 80005480 <_Z11printStringPKc>
    8000466c:	00c0006f          	j	80004678 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004670:	ffffd097          	auipc	ra,0xffffd
    80004674:	cc4080e7          	jalr	-828(ra) # 80001334 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004678:	00007797          	auipc	a5,0x7
    8000467c:	2657c783          	lbu	a5,613(a5) # 8000b8dd <_ZL9finishedA>
    80004680:	fe0788e3          	beqz	a5,80004670 <_Z18Threads_C_API_testv+0xb4>
    80004684:	00007797          	auipc	a5,0x7
    80004688:	2587c783          	lbu	a5,600(a5) # 8000b8dc <_ZL9finishedB>
    8000468c:	fe0782e3          	beqz	a5,80004670 <_Z18Threads_C_API_testv+0xb4>
    80004690:	00007797          	auipc	a5,0x7
    80004694:	24b7c783          	lbu	a5,587(a5) # 8000b8db <_ZL9finishedC>
    80004698:	fc078ce3          	beqz	a5,80004670 <_Z18Threads_C_API_testv+0xb4>
    8000469c:	00007797          	auipc	a5,0x7
    800046a0:	23e7c783          	lbu	a5,574(a5) # 8000b8da <_ZL9finishedD>
    800046a4:	fc0786e3          	beqz	a5,80004670 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800046a8:	02813083          	ld	ra,40(sp)
    800046ac:	02013403          	ld	s0,32(sp)
    800046b0:	03010113          	addi	sp,sp,48
    800046b4:	00008067          	ret

00000000800046b8 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800046b8:	fd010113          	addi	sp,sp,-48
    800046bc:	02113423          	sd	ra,40(sp)
    800046c0:	02813023          	sd	s0,32(sp)
    800046c4:	00913c23          	sd	s1,24(sp)
    800046c8:	01213823          	sd	s2,16(sp)
    800046cc:	01313423          	sd	s3,8(sp)
    800046d0:	03010413          	addi	s0,sp,48
    800046d4:	00050993          	mv	s3,a0
    800046d8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800046dc:	00000913          	li	s2,0
    800046e0:	00c0006f          	j	800046ec <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) !='p') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800046e4:	ffffe097          	auipc	ra,0xffffe
    800046e8:	a60080e7          	jalr	-1440(ra) # 80002144 <_ZN6Thread8dispatchEv>
    while ((key = getc()) !='p') {
    800046ec:	ffffd097          	auipc	ra,0xffffd
    800046f0:	e80080e7          	jalr	-384(ra) # 8000156c <_Z4getcv>
    800046f4:	0005059b          	sext.w	a1,a0
    800046f8:	07000793          	li	a5,112
    800046fc:	02f58a63          	beq	a1,a5,80004730 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004700:	0084b503          	ld	a0,8(s1)
    80004704:	00001097          	auipc	ra,0x1
    80004708:	1a0080e7          	jalr	416(ra) # 800058a4 <_ZN9BufferCPP3putEi>
        i++;
    8000470c:	0019071b          	addiw	a4,s2,1
    80004710:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004714:	0004a683          	lw	a3,0(s1)
    80004718:	0026979b          	slliw	a5,a3,0x2
    8000471c:	00d787bb          	addw	a5,a5,a3
    80004720:	0017979b          	slliw	a5,a5,0x1
    80004724:	02f767bb          	remw	a5,a4,a5
    80004728:	fc0792e3          	bnez	a5,800046ec <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    8000472c:	fb9ff06f          	j	800046e4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004730:	00100793          	li	a5,1
    80004734:	00007717          	auipc	a4,0x7
    80004738:	1af72623          	sw	a5,428(a4) # 8000b8e0 <_ZL9threadEnd>
    td->buffer->put('!');
    8000473c:	0209b783          	ld	a5,32(s3)
    80004740:	02100593          	li	a1,33
    80004744:	0087b503          	ld	a0,8(a5)
    80004748:	00001097          	auipc	ra,0x1
    8000474c:	15c080e7          	jalr	348(ra) # 800058a4 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004750:	0104b503          	ld	a0,16(s1)
    80004754:	ffffe097          	auipc	ra,0xffffe
    80004758:	b7c080e7          	jalr	-1156(ra) # 800022d0 <_ZN9Semaphore6signalEv>
}
    8000475c:	02813083          	ld	ra,40(sp)
    80004760:	02013403          	ld	s0,32(sp)
    80004764:	01813483          	ld	s1,24(sp)
    80004768:	01013903          	ld	s2,16(sp)
    8000476c:	00813983          	ld	s3,8(sp)
    80004770:	03010113          	addi	sp,sp,48
    80004774:	00008067          	ret

0000000080004778 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004778:	fe010113          	addi	sp,sp,-32
    8000477c:	00113c23          	sd	ra,24(sp)
    80004780:	00813823          	sd	s0,16(sp)
    80004784:	00913423          	sd	s1,8(sp)
    80004788:	01213023          	sd	s2,0(sp)
    8000478c:	02010413          	addi	s0,sp,32
    80004790:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004794:	00000913          	li	s2,0
    80004798:	00c0006f          	j	800047a4 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    8000479c:	ffffe097          	auipc	ra,0xffffe
    800047a0:	9a8080e7          	jalr	-1624(ra) # 80002144 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800047a4:	00007797          	auipc	a5,0x7
    800047a8:	13c7a783          	lw	a5,316(a5) # 8000b8e0 <_ZL9threadEnd>
    800047ac:	02079e63          	bnez	a5,800047e8 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800047b0:	0004a583          	lw	a1,0(s1)
    800047b4:	0305859b          	addiw	a1,a1,48
    800047b8:	0084b503          	ld	a0,8(s1)
    800047bc:	00001097          	auipc	ra,0x1
    800047c0:	0e8080e7          	jalr	232(ra) # 800058a4 <_ZN9BufferCPP3putEi>
        i++;
    800047c4:	0019071b          	addiw	a4,s2,1
    800047c8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800047cc:	0004a683          	lw	a3,0(s1)
    800047d0:	0026979b          	slliw	a5,a3,0x2
    800047d4:	00d787bb          	addw	a5,a5,a3
    800047d8:	0017979b          	slliw	a5,a5,0x1
    800047dc:	02f767bb          	remw	a5,a4,a5
    800047e0:	fc0792e3          	bnez	a5,800047a4 <_ZN12ProducerSync8producerEPv+0x2c>
    800047e4:	fb9ff06f          	j	8000479c <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800047e8:	0104b503          	ld	a0,16(s1)
    800047ec:	ffffe097          	auipc	ra,0xffffe
    800047f0:	ae4080e7          	jalr	-1308(ra) # 800022d0 <_ZN9Semaphore6signalEv>
}
    800047f4:	01813083          	ld	ra,24(sp)
    800047f8:	01013403          	ld	s0,16(sp)
    800047fc:	00813483          	ld	s1,8(sp)
    80004800:	00013903          	ld	s2,0(sp)
    80004804:	02010113          	addi	sp,sp,32
    80004808:	00008067          	ret

000000008000480c <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    8000480c:	fd010113          	addi	sp,sp,-48
    80004810:	02113423          	sd	ra,40(sp)
    80004814:	02813023          	sd	s0,32(sp)
    80004818:	00913c23          	sd	s1,24(sp)
    8000481c:	01213823          	sd	s2,16(sp)
    80004820:	01313423          	sd	s3,8(sp)
    80004824:	01413023          	sd	s4,0(sp)
    80004828:	03010413          	addi	s0,sp,48
    8000482c:	00050993          	mv	s3,a0
    80004830:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004834:	00000a13          	li	s4,0
    80004838:	01c0006f          	j	80004854 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    8000483c:	ffffe097          	auipc	ra,0xffffe
    80004840:	908080e7          	jalr	-1784(ra) # 80002144 <_ZN6Thread8dispatchEv>
    80004844:	0500006f          	j	80004894 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004848:	00a00513          	li	a0,10
    8000484c:	ffffd097          	auipc	ra,0xffffd
    80004850:	d4c080e7          	jalr	-692(ra) # 80001598 <_Z4putcc>
    while (!threadEnd) {
    80004854:	00007797          	auipc	a5,0x7
    80004858:	08c7a783          	lw	a5,140(a5) # 8000b8e0 <_ZL9threadEnd>
    8000485c:	06079263          	bnez	a5,800048c0 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004860:	00893503          	ld	a0,8(s2)
    80004864:	00001097          	auipc	ra,0x1
    80004868:	0d0080e7          	jalr	208(ra) # 80005934 <_ZN9BufferCPP3getEv>
        i++;
    8000486c:	001a049b          	addiw	s1,s4,1
    80004870:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004874:	0ff57513          	andi	a0,a0,255
    80004878:	ffffd097          	auipc	ra,0xffffd
    8000487c:	d20080e7          	jalr	-736(ra) # 80001598 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004880:	00092703          	lw	a4,0(s2)
    80004884:	0027179b          	slliw	a5,a4,0x2
    80004888:	00e787bb          	addw	a5,a5,a4
    8000488c:	02f4e7bb          	remw	a5,s1,a5
    80004890:	fa0786e3          	beqz	a5,8000483c <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004894:	05000793          	li	a5,80
    80004898:	02f4e4bb          	remw	s1,s1,a5
    8000489c:	fa049ce3          	bnez	s1,80004854 <_ZN12ConsumerSync8consumerEPv+0x48>
    800048a0:	fa9ff06f          	j	80004848 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800048a4:	0209b783          	ld	a5,32(s3)
    800048a8:	0087b503          	ld	a0,8(a5)
    800048ac:	00001097          	auipc	ra,0x1
    800048b0:	088080e7          	jalr	136(ra) # 80005934 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800048b4:	0ff57513          	andi	a0,a0,255
    800048b8:	ffffe097          	auipc	ra,0xffffe
    800048bc:	a9c080e7          	jalr	-1380(ra) # 80002354 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800048c0:	0209b783          	ld	a5,32(s3)
    800048c4:	0087b503          	ld	a0,8(a5)
    800048c8:	00001097          	auipc	ra,0x1
    800048cc:	0f8080e7          	jalr	248(ra) # 800059c0 <_ZN9BufferCPP6getCntEv>
    800048d0:	fca04ae3          	bgtz	a0,800048a4 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800048d4:	01093503          	ld	a0,16(s2)
    800048d8:	ffffe097          	auipc	ra,0xffffe
    800048dc:	9f8080e7          	jalr	-1544(ra) # 800022d0 <_ZN9Semaphore6signalEv>
}
    800048e0:	02813083          	ld	ra,40(sp)
    800048e4:	02013403          	ld	s0,32(sp)
    800048e8:	01813483          	ld	s1,24(sp)
    800048ec:	01013903          	ld	s2,16(sp)
    800048f0:	00813983          	ld	s3,8(sp)
    800048f4:	00013a03          	ld	s4,0(sp)
    800048f8:	03010113          	addi	sp,sp,48
    800048fc:	00008067          	ret

0000000080004900 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004900:	f8010113          	addi	sp,sp,-128
    80004904:	06113c23          	sd	ra,120(sp)
    80004908:	06813823          	sd	s0,112(sp)
    8000490c:	06913423          	sd	s1,104(sp)
    80004910:	07213023          	sd	s2,96(sp)
    80004914:	05313c23          	sd	s3,88(sp)
    80004918:	05413823          	sd	s4,80(sp)
    8000491c:	05513423          	sd	s5,72(sp)
    80004920:	05613023          	sd	s6,64(sp)
    80004924:	03713c23          	sd	s7,56(sp)
    80004928:	03813823          	sd	s8,48(sp)
    8000492c:	03913423          	sd	s9,40(sp)
    80004930:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004934:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004938:	00005517          	auipc	a0,0x5
    8000493c:	a0050513          	addi	a0,a0,-1536 # 80009338 <_ZZ13printInteger1mE6digits+0x30>
    80004940:	00001097          	auipc	ra,0x1
    80004944:	b40080e7          	jalr	-1216(ra) # 80005480 <_Z11printStringPKc>
    getString(input, 30);
    80004948:	01e00593          	li	a1,30
    8000494c:	f8040493          	addi	s1,s0,-128
    80004950:	00048513          	mv	a0,s1
    80004954:	00001097          	auipc	ra,0x1
    80004958:	bb4080e7          	jalr	-1100(ra) # 80005508 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000495c:	00048513          	mv	a0,s1
    80004960:	00001097          	auipc	ra,0x1
    80004964:	c80080e7          	jalr	-896(ra) # 800055e0 <_Z11stringToIntPKc>
    80004968:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000496c:	00005517          	auipc	a0,0x5
    80004970:	9ec50513          	addi	a0,a0,-1556 # 80009358 <_ZZ13printInteger1mE6digits+0x50>
    80004974:	00001097          	auipc	ra,0x1
    80004978:	b0c080e7          	jalr	-1268(ra) # 80005480 <_Z11printStringPKc>
    getString(input, 30);
    8000497c:	01e00593          	li	a1,30
    80004980:	00048513          	mv	a0,s1
    80004984:	00001097          	auipc	ra,0x1
    80004988:	b84080e7          	jalr	-1148(ra) # 80005508 <_Z9getStringPci>
    n = stringToInt(input);
    8000498c:	00048513          	mv	a0,s1
    80004990:	00001097          	auipc	ra,0x1
    80004994:	c50080e7          	jalr	-944(ra) # 800055e0 <_Z11stringToIntPKc>
    80004998:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000499c:	00005517          	auipc	a0,0x5
    800049a0:	9dc50513          	addi	a0,a0,-1572 # 80009378 <_ZZ13printInteger1mE6digits+0x70>
    800049a4:	00001097          	auipc	ra,0x1
    800049a8:	adc080e7          	jalr	-1316(ra) # 80005480 <_Z11printStringPKc>
    800049ac:	00000613          	li	a2,0
    800049b0:	00a00593          	li	a1,10
    800049b4:	00090513          	mv	a0,s2
    800049b8:	00001097          	auipc	ra,0x1
    800049bc:	c78080e7          	jalr	-904(ra) # 80005630 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800049c0:	00005517          	auipc	a0,0x5
    800049c4:	9d050513          	addi	a0,a0,-1584 # 80009390 <_ZZ13printInteger1mE6digits+0x88>
    800049c8:	00001097          	auipc	ra,0x1
    800049cc:	ab8080e7          	jalr	-1352(ra) # 80005480 <_Z11printStringPKc>
    800049d0:	00000613          	li	a2,0
    800049d4:	00a00593          	li	a1,10
    800049d8:	00048513          	mv	a0,s1
    800049dc:	00001097          	auipc	ra,0x1
    800049e0:	c54080e7          	jalr	-940(ra) # 80005630 <_Z8printIntiii>
    printString(".\n");
    800049e4:	00005517          	auipc	a0,0x5
    800049e8:	9c450513          	addi	a0,a0,-1596 # 800093a8 <_ZZ13printInteger1mE6digits+0xa0>
    800049ec:	00001097          	auipc	ra,0x1
    800049f0:	a94080e7          	jalr	-1388(ra) # 80005480 <_Z11printStringPKc>
    if(threadNum > n) {
    800049f4:	0324c463          	blt	s1,s2,80004a1c <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800049f8:	03205c63          	blez	s2,80004a30 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800049fc:	03800513          	li	a0,56
    80004a00:	ffffd097          	auipc	ra,0xffffd
    80004a04:	4bc080e7          	jalr	1212(ra) # 80001ebc <_Znwm>
    80004a08:	00050a93          	mv	s5,a0
    80004a0c:	00048593          	mv	a1,s1
    80004a10:	00001097          	auipc	ra,0x1
    80004a14:	d40080e7          	jalr	-704(ra) # 80005750 <_ZN9BufferCPPC1Ei>
    80004a18:	0300006f          	j	80004a48 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004a1c:	00005517          	auipc	a0,0x5
    80004a20:	99450513          	addi	a0,a0,-1644 # 800093b0 <_ZZ13printInteger1mE6digits+0xa8>
    80004a24:	00001097          	auipc	ra,0x1
    80004a28:	a5c080e7          	jalr	-1444(ra) # 80005480 <_Z11printStringPKc>
        return;
    80004a2c:	0140006f          	j	80004a40 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004a30:	00005517          	auipc	a0,0x5
    80004a34:	9c050513          	addi	a0,a0,-1600 # 800093f0 <_ZZ13printInteger1mE6digits+0xe8>
    80004a38:	00001097          	auipc	ra,0x1
    80004a3c:	a48080e7          	jalr	-1464(ra) # 80005480 <_Z11printStringPKc>
        return;
    80004a40:	000b8113          	mv	sp,s7
    80004a44:	2380006f          	j	80004c7c <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004a48:	01000513          	li	a0,16
    80004a4c:	ffffd097          	auipc	ra,0xffffd
    80004a50:	470080e7          	jalr	1136(ra) # 80001ebc <_Znwm>
    80004a54:	00050493          	mv	s1,a0
    80004a58:	00000593          	li	a1,0
    80004a5c:	ffffe097          	auipc	ra,0xffffe
    80004a60:	810080e7          	jalr	-2032(ra) # 8000226c <_ZN9SemaphoreC1Ej>
    80004a64:	00007797          	auipc	a5,0x7
    80004a68:	e897b223          	sd	s1,-380(a5) # 8000b8e8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004a6c:	00391793          	slli	a5,s2,0x3
    80004a70:	00f78793          	addi	a5,a5,15
    80004a74:	ff07f793          	andi	a5,a5,-16
    80004a78:	40f10133          	sub	sp,sp,a5
    80004a7c:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004a80:	0019071b          	addiw	a4,s2,1
    80004a84:	00171793          	slli	a5,a4,0x1
    80004a88:	00e787b3          	add	a5,a5,a4
    80004a8c:	00379793          	slli	a5,a5,0x3
    80004a90:	00f78793          	addi	a5,a5,15
    80004a94:	ff07f793          	andi	a5,a5,-16
    80004a98:	40f10133          	sub	sp,sp,a5
    80004a9c:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004aa0:	00191c13          	slli	s8,s2,0x1
    80004aa4:	012c07b3          	add	a5,s8,s2
    80004aa8:	00379793          	slli	a5,a5,0x3
    80004aac:	00fa07b3          	add	a5,s4,a5
    80004ab0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004ab4:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004ab8:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004abc:	02800513          	li	a0,40
    80004ac0:	ffffd097          	auipc	ra,0xffffd
    80004ac4:	3fc080e7          	jalr	1020(ra) # 80001ebc <_Znwm>
    80004ac8:	00050b13          	mv	s6,a0
    80004acc:	012c0c33          	add	s8,s8,s2
    80004ad0:	003c1c13          	slli	s8,s8,0x3
    80004ad4:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004ad8:	ffffd097          	auipc	ra,0xffffd
    80004adc:	620080e7          	jalr	1568(ra) # 800020f8 <_ZN6ThreadC1Ev>
    80004ae0:	00007797          	auipc	a5,0x7
    80004ae4:	c8878793          	addi	a5,a5,-888 # 8000b768 <_ZTV12ConsumerSync+0x10>
    80004ae8:	00fb3023          	sd	a5,0(s6)
    80004aec:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004af0:	000b0513          	mv	a0,s6
    80004af4:	ffffd097          	auipc	ra,0xffffd
    80004af8:	5d4080e7          	jalr	1492(ra) # 800020c8 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004afc:	00000493          	li	s1,0
    80004b00:	0380006f          	j	80004b38 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004b04:	00007797          	auipc	a5,0x7
    80004b08:	c3c78793          	addi	a5,a5,-964 # 8000b740 <_ZTV12ProducerSync+0x10>
    80004b0c:	00fcb023          	sd	a5,0(s9)
    80004b10:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004b14:	00349793          	slli	a5,s1,0x3
    80004b18:	00f987b3          	add	a5,s3,a5
    80004b1c:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004b20:	00349793          	slli	a5,s1,0x3
    80004b24:	00f987b3          	add	a5,s3,a5
    80004b28:	0007b503          	ld	a0,0(a5)
    80004b2c:	ffffd097          	auipc	ra,0xffffd
    80004b30:	59c080e7          	jalr	1436(ra) # 800020c8 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004b34:	0014849b          	addiw	s1,s1,1
    80004b38:	0b24d063          	bge	s1,s2,80004bd8 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004b3c:	00149793          	slli	a5,s1,0x1
    80004b40:	009787b3          	add	a5,a5,s1
    80004b44:	00379793          	slli	a5,a5,0x3
    80004b48:	00fa07b3          	add	a5,s4,a5
    80004b4c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004b50:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004b54:	00007717          	auipc	a4,0x7
    80004b58:	d9473703          	ld	a4,-620(a4) # 8000b8e8 <_ZL10waitForAll>
    80004b5c:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004b60:	02905863          	blez	s1,80004b90 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004b64:	02800513          	li	a0,40
    80004b68:	ffffd097          	auipc	ra,0xffffd
    80004b6c:	354080e7          	jalr	852(ra) # 80001ebc <_Znwm>
    80004b70:	00050c93          	mv	s9,a0
    80004b74:	00149c13          	slli	s8,s1,0x1
    80004b78:	009c0c33          	add	s8,s8,s1
    80004b7c:	003c1c13          	slli	s8,s8,0x3
    80004b80:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004b84:	ffffd097          	auipc	ra,0xffffd
    80004b88:	574080e7          	jalr	1396(ra) # 800020f8 <_ZN6ThreadC1Ev>
    80004b8c:	f79ff06f          	j	80004b04 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004b90:	02800513          	li	a0,40
    80004b94:	ffffd097          	auipc	ra,0xffffd
    80004b98:	328080e7          	jalr	808(ra) # 80001ebc <_Znwm>
    80004b9c:	00050c93          	mv	s9,a0
    80004ba0:	00149c13          	slli	s8,s1,0x1
    80004ba4:	009c0c33          	add	s8,s8,s1
    80004ba8:	003c1c13          	slli	s8,s8,0x3
    80004bac:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004bb0:	ffffd097          	auipc	ra,0xffffd
    80004bb4:	548080e7          	jalr	1352(ra) # 800020f8 <_ZN6ThreadC1Ev>
    80004bb8:	00007797          	auipc	a5,0x7
    80004bbc:	b6078793          	addi	a5,a5,-1184 # 8000b718 <_ZTV16ProducerKeyboard+0x10>
    80004bc0:	00fcb023          	sd	a5,0(s9)
    80004bc4:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004bc8:	00349793          	slli	a5,s1,0x3
    80004bcc:	00f987b3          	add	a5,s3,a5
    80004bd0:	0197b023          	sd	s9,0(a5)
    80004bd4:	f4dff06f          	j	80004b20 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004bd8:	ffffd097          	auipc	ra,0xffffd
    80004bdc:	56c080e7          	jalr	1388(ra) # 80002144 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004be0:	00000493          	li	s1,0
    80004be4:	00994e63          	blt	s2,s1,80004c00 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004be8:	00007517          	auipc	a0,0x7
    80004bec:	d0053503          	ld	a0,-768(a0) # 8000b8e8 <_ZL10waitForAll>
    80004bf0:	ffffd097          	auipc	ra,0xffffd
    80004bf4:	6b4080e7          	jalr	1716(ra) # 800022a4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004bf8:	0014849b          	addiw	s1,s1,1
    80004bfc:	fe9ff06f          	j	80004be4 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004c00:	00000493          	li	s1,0
    80004c04:	0080006f          	j	80004c0c <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004c08:	0014849b          	addiw	s1,s1,1
    80004c0c:	0324d263          	bge	s1,s2,80004c30 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004c10:	00349793          	slli	a5,s1,0x3
    80004c14:	00f987b3          	add	a5,s3,a5
    80004c18:	0007b503          	ld	a0,0(a5)
    80004c1c:	fe0506e3          	beqz	a0,80004c08 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004c20:	00053783          	ld	a5,0(a0)
    80004c24:	0087b783          	ld	a5,8(a5)
    80004c28:	000780e7          	jalr	a5
    80004c2c:	fddff06f          	j	80004c08 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004c30:	000b0a63          	beqz	s6,80004c44 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004c34:	000b3783          	ld	a5,0(s6)
    80004c38:	0087b783          	ld	a5,8(a5)
    80004c3c:	000b0513          	mv	a0,s6
    80004c40:	000780e7          	jalr	a5
    delete waitForAll;
    80004c44:	00007517          	auipc	a0,0x7
    80004c48:	ca453503          	ld	a0,-860(a0) # 8000b8e8 <_ZL10waitForAll>
    80004c4c:	00050863          	beqz	a0,80004c5c <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004c50:	00053783          	ld	a5,0(a0)
    80004c54:	0087b783          	ld	a5,8(a5)
    80004c58:	000780e7          	jalr	a5
    delete buffer;
    80004c5c:	000a8e63          	beqz	s5,80004c78 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004c60:	000a8513          	mv	a0,s5
    80004c64:	00001097          	auipc	ra,0x1
    80004c68:	de4080e7          	jalr	-540(ra) # 80005a48 <_ZN9BufferCPPD1Ev>
    80004c6c:	000a8513          	mv	a0,s5
    80004c70:	ffffd097          	auipc	ra,0xffffd
    80004c74:	29c080e7          	jalr	668(ra) # 80001f0c <_ZdlPv>
    80004c78:	000b8113          	mv	sp,s7

}
    80004c7c:	f8040113          	addi	sp,s0,-128
    80004c80:	07813083          	ld	ra,120(sp)
    80004c84:	07013403          	ld	s0,112(sp)
    80004c88:	06813483          	ld	s1,104(sp)
    80004c8c:	06013903          	ld	s2,96(sp)
    80004c90:	05813983          	ld	s3,88(sp)
    80004c94:	05013a03          	ld	s4,80(sp)
    80004c98:	04813a83          	ld	s5,72(sp)
    80004c9c:	04013b03          	ld	s6,64(sp)
    80004ca0:	03813b83          	ld	s7,56(sp)
    80004ca4:	03013c03          	ld	s8,48(sp)
    80004ca8:	02813c83          	ld	s9,40(sp)
    80004cac:	08010113          	addi	sp,sp,128
    80004cb0:	00008067          	ret
    80004cb4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004cb8:	000a8513          	mv	a0,s5
    80004cbc:	ffffd097          	auipc	ra,0xffffd
    80004cc0:	250080e7          	jalr	592(ra) # 80001f0c <_ZdlPv>
    80004cc4:	00048513          	mv	a0,s1
    80004cc8:	00008097          	auipc	ra,0x8
    80004ccc:	d10080e7          	jalr	-752(ra) # 8000c9d8 <_Unwind_Resume>
    80004cd0:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004cd4:	00048513          	mv	a0,s1
    80004cd8:	ffffd097          	auipc	ra,0xffffd
    80004cdc:	234080e7          	jalr	564(ra) # 80001f0c <_ZdlPv>
    80004ce0:	00090513          	mv	a0,s2
    80004ce4:	00008097          	auipc	ra,0x8
    80004ce8:	cf4080e7          	jalr	-780(ra) # 8000c9d8 <_Unwind_Resume>
    80004cec:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004cf0:	000b0513          	mv	a0,s6
    80004cf4:	ffffd097          	auipc	ra,0xffffd
    80004cf8:	218080e7          	jalr	536(ra) # 80001f0c <_ZdlPv>
    80004cfc:	00048513          	mv	a0,s1
    80004d00:	00008097          	auipc	ra,0x8
    80004d04:	cd8080e7          	jalr	-808(ra) # 8000c9d8 <_Unwind_Resume>
    80004d08:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004d0c:	000c8513          	mv	a0,s9
    80004d10:	ffffd097          	auipc	ra,0xffffd
    80004d14:	1fc080e7          	jalr	508(ra) # 80001f0c <_ZdlPv>
    80004d18:	00048513          	mv	a0,s1
    80004d1c:	00008097          	auipc	ra,0x8
    80004d20:	cbc080e7          	jalr	-836(ra) # 8000c9d8 <_Unwind_Resume>
    80004d24:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004d28:	000c8513          	mv	a0,s9
    80004d2c:	ffffd097          	auipc	ra,0xffffd
    80004d30:	1e0080e7          	jalr	480(ra) # 80001f0c <_ZdlPv>
    80004d34:	00048513          	mv	a0,s1
    80004d38:	00008097          	auipc	ra,0x8
    80004d3c:	ca0080e7          	jalr	-864(ra) # 8000c9d8 <_Unwind_Resume>

0000000080004d40 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004d40:	ff010113          	addi	sp,sp,-16
    80004d44:	00113423          	sd	ra,8(sp)
    80004d48:	00813023          	sd	s0,0(sp)
    80004d4c:	01010413          	addi	s0,sp,16
    80004d50:	00007797          	auipc	a5,0x7
    80004d54:	a1878793          	addi	a5,a5,-1512 # 8000b768 <_ZTV12ConsumerSync+0x10>
    80004d58:	00f53023          	sd	a5,0(a0)
    80004d5c:	ffffd097          	auipc	ra,0xffffd
    80004d60:	22c080e7          	jalr	556(ra) # 80001f88 <_ZN6ThreadD1Ev>
    80004d64:	00813083          	ld	ra,8(sp)
    80004d68:	00013403          	ld	s0,0(sp)
    80004d6c:	01010113          	addi	sp,sp,16
    80004d70:	00008067          	ret

0000000080004d74 <_ZN12ConsumerSyncD0Ev>:
    80004d74:	fe010113          	addi	sp,sp,-32
    80004d78:	00113c23          	sd	ra,24(sp)
    80004d7c:	00813823          	sd	s0,16(sp)
    80004d80:	00913423          	sd	s1,8(sp)
    80004d84:	02010413          	addi	s0,sp,32
    80004d88:	00050493          	mv	s1,a0
    80004d8c:	00007797          	auipc	a5,0x7
    80004d90:	9dc78793          	addi	a5,a5,-1572 # 8000b768 <_ZTV12ConsumerSync+0x10>
    80004d94:	00f53023          	sd	a5,0(a0)
    80004d98:	ffffd097          	auipc	ra,0xffffd
    80004d9c:	1f0080e7          	jalr	496(ra) # 80001f88 <_ZN6ThreadD1Ev>
    80004da0:	00048513          	mv	a0,s1
    80004da4:	ffffd097          	auipc	ra,0xffffd
    80004da8:	168080e7          	jalr	360(ra) # 80001f0c <_ZdlPv>
    80004dac:	01813083          	ld	ra,24(sp)
    80004db0:	01013403          	ld	s0,16(sp)
    80004db4:	00813483          	ld	s1,8(sp)
    80004db8:	02010113          	addi	sp,sp,32
    80004dbc:	00008067          	ret

0000000080004dc0 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004dc0:	ff010113          	addi	sp,sp,-16
    80004dc4:	00113423          	sd	ra,8(sp)
    80004dc8:	00813023          	sd	s0,0(sp)
    80004dcc:	01010413          	addi	s0,sp,16
    80004dd0:	00007797          	auipc	a5,0x7
    80004dd4:	97078793          	addi	a5,a5,-1680 # 8000b740 <_ZTV12ProducerSync+0x10>
    80004dd8:	00f53023          	sd	a5,0(a0)
    80004ddc:	ffffd097          	auipc	ra,0xffffd
    80004de0:	1ac080e7          	jalr	428(ra) # 80001f88 <_ZN6ThreadD1Ev>
    80004de4:	00813083          	ld	ra,8(sp)
    80004de8:	00013403          	ld	s0,0(sp)
    80004dec:	01010113          	addi	sp,sp,16
    80004df0:	00008067          	ret

0000000080004df4 <_ZN12ProducerSyncD0Ev>:
    80004df4:	fe010113          	addi	sp,sp,-32
    80004df8:	00113c23          	sd	ra,24(sp)
    80004dfc:	00813823          	sd	s0,16(sp)
    80004e00:	00913423          	sd	s1,8(sp)
    80004e04:	02010413          	addi	s0,sp,32
    80004e08:	00050493          	mv	s1,a0
    80004e0c:	00007797          	auipc	a5,0x7
    80004e10:	93478793          	addi	a5,a5,-1740 # 8000b740 <_ZTV12ProducerSync+0x10>
    80004e14:	00f53023          	sd	a5,0(a0)
    80004e18:	ffffd097          	auipc	ra,0xffffd
    80004e1c:	170080e7          	jalr	368(ra) # 80001f88 <_ZN6ThreadD1Ev>
    80004e20:	00048513          	mv	a0,s1
    80004e24:	ffffd097          	auipc	ra,0xffffd
    80004e28:	0e8080e7          	jalr	232(ra) # 80001f0c <_ZdlPv>
    80004e2c:	01813083          	ld	ra,24(sp)
    80004e30:	01013403          	ld	s0,16(sp)
    80004e34:	00813483          	ld	s1,8(sp)
    80004e38:	02010113          	addi	sp,sp,32
    80004e3c:	00008067          	ret

0000000080004e40 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004e40:	ff010113          	addi	sp,sp,-16
    80004e44:	00113423          	sd	ra,8(sp)
    80004e48:	00813023          	sd	s0,0(sp)
    80004e4c:	01010413          	addi	s0,sp,16
    80004e50:	00007797          	auipc	a5,0x7
    80004e54:	8c878793          	addi	a5,a5,-1848 # 8000b718 <_ZTV16ProducerKeyboard+0x10>
    80004e58:	00f53023          	sd	a5,0(a0)
    80004e5c:	ffffd097          	auipc	ra,0xffffd
    80004e60:	12c080e7          	jalr	300(ra) # 80001f88 <_ZN6ThreadD1Ev>
    80004e64:	00813083          	ld	ra,8(sp)
    80004e68:	00013403          	ld	s0,0(sp)
    80004e6c:	01010113          	addi	sp,sp,16
    80004e70:	00008067          	ret

0000000080004e74 <_ZN16ProducerKeyboardD0Ev>:
    80004e74:	fe010113          	addi	sp,sp,-32
    80004e78:	00113c23          	sd	ra,24(sp)
    80004e7c:	00813823          	sd	s0,16(sp)
    80004e80:	00913423          	sd	s1,8(sp)
    80004e84:	02010413          	addi	s0,sp,32
    80004e88:	00050493          	mv	s1,a0
    80004e8c:	00007797          	auipc	a5,0x7
    80004e90:	88c78793          	addi	a5,a5,-1908 # 8000b718 <_ZTV16ProducerKeyboard+0x10>
    80004e94:	00f53023          	sd	a5,0(a0)
    80004e98:	ffffd097          	auipc	ra,0xffffd
    80004e9c:	0f0080e7          	jalr	240(ra) # 80001f88 <_ZN6ThreadD1Ev>
    80004ea0:	00048513          	mv	a0,s1
    80004ea4:	ffffd097          	auipc	ra,0xffffd
    80004ea8:	068080e7          	jalr	104(ra) # 80001f0c <_ZdlPv>
    80004eac:	01813083          	ld	ra,24(sp)
    80004eb0:	01013403          	ld	s0,16(sp)
    80004eb4:	00813483          	ld	s1,8(sp)
    80004eb8:	02010113          	addi	sp,sp,32
    80004ebc:	00008067          	ret

0000000080004ec0 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004ec0:	ff010113          	addi	sp,sp,-16
    80004ec4:	00113423          	sd	ra,8(sp)
    80004ec8:	00813023          	sd	s0,0(sp)
    80004ecc:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004ed0:	02053583          	ld	a1,32(a0)
    80004ed4:	fffff097          	auipc	ra,0xfffff
    80004ed8:	7e4080e7          	jalr	2020(ra) # 800046b8 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004edc:	00813083          	ld	ra,8(sp)
    80004ee0:	00013403          	ld	s0,0(sp)
    80004ee4:	01010113          	addi	sp,sp,16
    80004ee8:	00008067          	ret

0000000080004eec <_ZN12ProducerSync3runEv>:
    void run() override {
    80004eec:	ff010113          	addi	sp,sp,-16
    80004ef0:	00113423          	sd	ra,8(sp)
    80004ef4:	00813023          	sd	s0,0(sp)
    80004ef8:	01010413          	addi	s0,sp,16
        producer(td);
    80004efc:	02053583          	ld	a1,32(a0)
    80004f00:	00000097          	auipc	ra,0x0
    80004f04:	878080e7          	jalr	-1928(ra) # 80004778 <_ZN12ProducerSync8producerEPv>
    }
    80004f08:	00813083          	ld	ra,8(sp)
    80004f0c:	00013403          	ld	s0,0(sp)
    80004f10:	01010113          	addi	sp,sp,16
    80004f14:	00008067          	ret

0000000080004f18 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004f18:	ff010113          	addi	sp,sp,-16
    80004f1c:	00113423          	sd	ra,8(sp)
    80004f20:	00813023          	sd	s0,0(sp)
    80004f24:	01010413          	addi	s0,sp,16
        consumer(td);
    80004f28:	02053583          	ld	a1,32(a0)
    80004f2c:	00000097          	auipc	ra,0x0
    80004f30:	8e0080e7          	jalr	-1824(ra) # 8000480c <_ZN12ConsumerSync8consumerEPv>
    }
    80004f34:	00813083          	ld	ra,8(sp)
    80004f38:	00013403          	ld	s0,0(sp)
    80004f3c:	01010113          	addi	sp,sp,16
    80004f40:	00008067          	ret

0000000080004f44 <_ZN1A5BodyAEPv>:
int A::bra=0;
int B::brb=0;
int C::brc=0;


void A::BodyA(void *arg) {
    80004f44:	fd010113          	addi	sp,sp,-48
    80004f48:	02113423          	sd	ra,40(sp)
    80004f4c:	02813023          	sd	s0,32(sp)
    80004f50:	00913c23          	sd	s1,24(sp)
    80004f54:	01213823          	sd	s2,16(sp)
    80004f58:	01313423          	sd	s3,8(sp)
    80004f5c:	03010413          	addi	s0,sp,48

  int id= getId();
    80004f60:	ffffd097          	auipc	ra,0xffffd
    80004f64:	20c080e7          	jalr	524(ra) # 8000216c <_ZN6Thread5getIdEv>
    80004f68:	00050913          	mv	s2,a0

    printString("poceo ");
    80004f6c:	00004517          	auipc	a0,0x4
    80004f70:	5dc50513          	addi	a0,a0,1500 # 80009548 <_ZZ13printInteger1mE6digits+0x240>
    80004f74:	00000097          	auipc	ra,0x0
    80004f78:	50c080e7          	jalr	1292(ra) # 80005480 <_Z11printStringPKc>

  int br = bra++;
    80004f7c:	00007797          	auipc	a5,0x7
    80004f80:	97478793          	addi	a5,a5,-1676 # 8000b8f0 <_ZN1A3braE>
    80004f84:	0007a983          	lw	s3,0(a5)
    80004f88:	0019871b          	addiw	a4,s3,1
    80004f8c:	00e7a023          	sw	a4,0(a5)
  for(int i = 0; i<3; i++) {
    80004f90:	00000493          	li	s1,0
    80004f94:	0680006f          	j	80004ffc <_ZN1A5BodyAEPv+0xb8>
    printString("A");
    80004f98:	00004517          	auipc	a0,0x4
    80004f9c:	5b850513          	addi	a0,a0,1464 # 80009550 <_ZZ13printInteger1mE6digits+0x248>
    80004fa0:	00000097          	auipc	ra,0x0
    80004fa4:	4e0080e7          	jalr	1248(ra) # 80005480 <_Z11printStringPKc>
    printInt(br);
    80004fa8:	00000613          	li	a2,0
    80004fac:	00a00593          	li	a1,10
    80004fb0:	00098513          	mv	a0,s3
    80004fb4:	00000097          	auipc	ra,0x0
    80004fb8:	67c080e7          	jalr	1660(ra) # 80005630 <_Z8printIntiii>
    printString("\n");
    80004fbc:	00004517          	auipc	a0,0x4
    80004fc0:	1d450513          	addi	a0,a0,468 # 80009190 <CONSOLE_STATUS+0x180>
    80004fc4:	00000097          	auipc	ra,0x0
    80004fc8:	4bc080e7          	jalr	1212(ra) # 80005480 <_Z11printStringPKc>
    printInt(id);
    80004fcc:	00000613          	li	a2,0
    80004fd0:	00a00593          	li	a1,10
    80004fd4:	00090513          	mv	a0,s2
    80004fd8:	00000097          	auipc	ra,0x0
    80004fdc:	658080e7          	jalr	1624(ra) # 80005630 <_Z8printIntiii>
    printString("\n");
    80004fe0:	00004517          	auipc	a0,0x4
    80004fe4:	1b050513          	addi	a0,a0,432 # 80009190 <CONSOLE_STATUS+0x180>
    80004fe8:	00000097          	auipc	ra,0x0
    80004fec:	498080e7          	jalr	1176(ra) # 80005480 <_Z11printStringPKc>
    dispatch();
    80004ff0:	ffffd097          	auipc	ra,0xffffd
    80004ff4:	154080e7          	jalr	340(ra) # 80002144 <_ZN6Thread8dispatchEv>
  for(int i = 0; i<3; i++) {
    80004ff8:	0014849b          	addiw	s1,s1,1
    80004ffc:	00200793          	li	a5,2
    80005000:	f897dce3          	bge	a5,s1,80004f98 <_ZN1A5BodyAEPv+0x54>

  }

}
    80005004:	02813083          	ld	ra,40(sp)
    80005008:	02013403          	ld	s0,32(sp)
    8000500c:	01813483          	ld	s1,24(sp)
    80005010:	01013903          	ld	s2,16(sp)
    80005014:	00813983          	ld	s3,8(sp)
    80005018:	03010113          	addi	sp,sp,48
    8000501c:	00008067          	ret

0000000080005020 <_ZN1B5BodyBEPv>:

void B::BodyB(void *arg) {
    80005020:	fd010113          	addi	sp,sp,-48
    80005024:	02113423          	sd	ra,40(sp)
    80005028:	02813023          	sd	s0,32(sp)
    8000502c:	00913c23          	sd	s1,24(sp)
    80005030:	01213823          	sd	s2,16(sp)
    80005034:	01313423          	sd	s3,8(sp)
    80005038:	03010413          	addi	s0,sp,48

    int id= getId();
    8000503c:	ffffd097          	auipc	ra,0xffffd
    80005040:	130080e7          	jalr	304(ra) # 8000216c <_ZN6Thread5getIdEv>
    80005044:	00050913          	mv	s2,a0

    printString("poceo ");
    80005048:	00004517          	auipc	a0,0x4
    8000504c:	50050513          	addi	a0,a0,1280 # 80009548 <_ZZ13printInteger1mE6digits+0x240>
    80005050:	00000097          	auipc	ra,0x0
    80005054:	430080e7          	jalr	1072(ra) # 80005480 <_Z11printStringPKc>

    int br = brb++;
    80005058:	00007797          	auipc	a5,0x7
    8000505c:	89878793          	addi	a5,a5,-1896 # 8000b8f0 <_ZN1A3braE>
    80005060:	0047a983          	lw	s3,4(a5)
    80005064:	0019871b          	addiw	a4,s3,1
    80005068:	00e7a223          	sw	a4,4(a5)
    for(int i = 0; i<3; i++) {
    8000506c:	00000493          	li	s1,0
    80005070:	0680006f          	j	800050d8 <_ZN1B5BodyBEPv+0xb8>
        printString("B");
    80005074:	00004517          	auipc	a0,0x4
    80005078:	4e450513          	addi	a0,a0,1252 # 80009558 <_ZZ13printInteger1mE6digits+0x250>
    8000507c:	00000097          	auipc	ra,0x0
    80005080:	404080e7          	jalr	1028(ra) # 80005480 <_Z11printStringPKc>
        printInt(br);
    80005084:	00000613          	li	a2,0
    80005088:	00a00593          	li	a1,10
    8000508c:	00098513          	mv	a0,s3
    80005090:	00000097          	auipc	ra,0x0
    80005094:	5a0080e7          	jalr	1440(ra) # 80005630 <_Z8printIntiii>
        printString("\n");
    80005098:	00004517          	auipc	a0,0x4
    8000509c:	0f850513          	addi	a0,a0,248 # 80009190 <CONSOLE_STATUS+0x180>
    800050a0:	00000097          	auipc	ra,0x0
    800050a4:	3e0080e7          	jalr	992(ra) # 80005480 <_Z11printStringPKc>
        printInt(id);
    800050a8:	00000613          	li	a2,0
    800050ac:	00a00593          	li	a1,10
    800050b0:	00090513          	mv	a0,s2
    800050b4:	00000097          	auipc	ra,0x0
    800050b8:	57c080e7          	jalr	1404(ra) # 80005630 <_Z8printIntiii>
        printString("\n");
    800050bc:	00004517          	auipc	a0,0x4
    800050c0:	0d450513          	addi	a0,a0,212 # 80009190 <CONSOLE_STATUS+0x180>
    800050c4:	00000097          	auipc	ra,0x0
    800050c8:	3bc080e7          	jalr	956(ra) # 80005480 <_Z11printStringPKc>
        dispatch();
    800050cc:	ffffd097          	auipc	ra,0xffffd
    800050d0:	078080e7          	jalr	120(ra) # 80002144 <_ZN6Thread8dispatchEv>
    for(int i = 0; i<3; i++) {
    800050d4:	0014849b          	addiw	s1,s1,1
    800050d8:	00200793          	li	a5,2
    800050dc:	f897dce3          	bge	a5,s1,80005074 <_ZN1B5BodyBEPv+0x54>
    }
}
    800050e0:	02813083          	ld	ra,40(sp)
    800050e4:	02013403          	ld	s0,32(sp)
    800050e8:	01813483          	ld	s1,24(sp)
    800050ec:	01013903          	ld	s2,16(sp)
    800050f0:	00813983          	ld	s3,8(sp)
    800050f4:	03010113          	addi	sp,sp,48
    800050f8:	00008067          	ret

00000000800050fc <_ZN1C5BodyCEPv>:

void C::BodyC(void *arg) {
    800050fc:	fd010113          	addi	sp,sp,-48
    80005100:	02113423          	sd	ra,40(sp)
    80005104:	02813023          	sd	s0,32(sp)
    80005108:	00913c23          	sd	s1,24(sp)
    8000510c:	01213823          	sd	s2,16(sp)
    80005110:	01313423          	sd	s3,8(sp)
    80005114:	03010413          	addi	s0,sp,48



    int id= getId();
    80005118:	ffffd097          	auipc	ra,0xffffd
    8000511c:	054080e7          	jalr	84(ra) # 8000216c <_ZN6Thread5getIdEv>
    80005120:	00050913          	mv	s2,a0

    printString("poceo ");
    80005124:	00004517          	auipc	a0,0x4
    80005128:	42450513          	addi	a0,a0,1060 # 80009548 <_ZZ13printInteger1mE6digits+0x240>
    8000512c:	00000097          	auipc	ra,0x0
    80005130:	354080e7          	jalr	852(ra) # 80005480 <_Z11printStringPKc>

    int br = brc++;
    80005134:	00006797          	auipc	a5,0x6
    80005138:	7bc78793          	addi	a5,a5,1980 # 8000b8f0 <_ZN1A3braE>
    8000513c:	0087a983          	lw	s3,8(a5)
    80005140:	0019871b          	addiw	a4,s3,1
    80005144:	00e7a423          	sw	a4,8(a5)
    for(int i = 0; i<3; i++) {
    80005148:	00000493          	li	s1,0
    8000514c:	0680006f          	j	800051b4 <_ZN1C5BodyCEPv+0xb8>
        printString("C");
    80005150:	00004517          	auipc	a0,0x4
    80005154:	41050513          	addi	a0,a0,1040 # 80009560 <_ZZ13printInteger1mE6digits+0x258>
    80005158:	00000097          	auipc	ra,0x0
    8000515c:	328080e7          	jalr	808(ra) # 80005480 <_Z11printStringPKc>
        printInt(br);
    80005160:	00000613          	li	a2,0
    80005164:	00a00593          	li	a1,10
    80005168:	00098513          	mv	a0,s3
    8000516c:	00000097          	auipc	ra,0x0
    80005170:	4c4080e7          	jalr	1220(ra) # 80005630 <_Z8printIntiii>
        printString("\n");
    80005174:	00004517          	auipc	a0,0x4
    80005178:	01c50513          	addi	a0,a0,28 # 80009190 <CONSOLE_STATUS+0x180>
    8000517c:	00000097          	auipc	ra,0x0
    80005180:	304080e7          	jalr	772(ra) # 80005480 <_Z11printStringPKc>
        printInt(id);
    80005184:	00000613          	li	a2,0
    80005188:	00a00593          	li	a1,10
    8000518c:	00090513          	mv	a0,s2
    80005190:	00000097          	auipc	ra,0x0
    80005194:	4a0080e7          	jalr	1184(ra) # 80005630 <_Z8printIntiii>
        printString("\n");
    80005198:	00004517          	auipc	a0,0x4
    8000519c:	ff850513          	addi	a0,a0,-8 # 80009190 <CONSOLE_STATUS+0x180>
    800051a0:	00000097          	auipc	ra,0x0
    800051a4:	2e0080e7          	jalr	736(ra) # 80005480 <_Z11printStringPKc>
        dispatch();
    800051a8:	ffffd097          	auipc	ra,0xffffd
    800051ac:	f9c080e7          	jalr	-100(ra) # 80002144 <_ZN6Thread8dispatchEv>
    for(int i = 0; i<3; i++) {
    800051b0:	0014849b          	addiw	s1,s1,1
    800051b4:	00200793          	li	a5,2
    800051b8:	f897dce3          	bge	a5,s1,80005150 <_ZN1C5BodyCEPv+0x54>
    }
}
    800051bc:	02813083          	ld	ra,40(sp)
    800051c0:	02013403          	ld	s0,32(sp)
    800051c4:	01813483          	ld	s1,24(sp)
    800051c8:	01013903          	ld	s2,16(sp)
    800051cc:	00813983          	ld	s3,8(sp)
    800051d0:	03010113          	addi	sp,sp,48
    800051d4:	00008067          	ret

00000000800051d8 <_Z13get_thread_idv>:




void get_thread_id() {
    800051d8:	ef010113          	addi	sp,sp,-272
    800051dc:	10113423          	sd	ra,264(sp)
    800051e0:	10813023          	sd	s0,256(sp)
    800051e4:	0e913c23          	sd	s1,248(sp)
    800051e8:	0f213823          	sd	s2,240(sp)
    800051ec:	11010413          	addi	s0,sp,272



    Thread* threads[30];
    for(int i=0; i<30; i=i+3){
    800051f0:	00000493          	li	s1,0
    800051f4:	0c40006f          	j	800052b8 <_Z13get_thread_idv+0xe0>
    A():Thread() {}
    800051f8:	00006797          	auipc	a5,0x6
    800051fc:	4d078793          	addi	a5,a5,1232 # 8000b6c8 <_ZTV1A+0x10>
    80005200:	00f93023          	sd	a5,0(s2)
        threads[i] = new A();
    80005204:	00349793          	slli	a5,s1,0x3
    80005208:	fe040713          	addi	a4,s0,-32
    8000520c:	00f707b3          	add	a5,a4,a5
    80005210:	f127b823          	sd	s2,-240(a5)
        printString("ThreadA created\n");
    80005214:	00004517          	auipc	a0,0x4
    80005218:	2b450513          	addi	a0,a0,692 # 800094c8 <_ZZ13printInteger1mE6digits+0x1c0>
    8000521c:	00000097          	auipc	ra,0x0
    80005220:	264080e7          	jalr	612(ra) # 80005480 <_Z11printStringPKc>

        threads[i+1] = new B();
    80005224:	02000513          	li	a0,32
    80005228:	ffffd097          	auipc	ra,0xffffd
    8000522c:	c94080e7          	jalr	-876(ra) # 80001ebc <_Znwm>
    80005230:	00050913          	mv	s2,a0
    B():Thread() {}
    80005234:	ffffd097          	auipc	ra,0xffffd
    80005238:	ec4080e7          	jalr	-316(ra) # 800020f8 <_ZN6ThreadC1Ev>
    8000523c:	00006797          	auipc	a5,0x6
    80005240:	4b478793          	addi	a5,a5,1204 # 8000b6f0 <_ZTV1B+0x10>
    80005244:	00f93023          	sd	a5,0(s2)
        threads[i+1] = new B();
    80005248:	0014879b          	addiw	a5,s1,1
    8000524c:	00379793          	slli	a5,a5,0x3
    80005250:	fe040713          	addi	a4,s0,-32
    80005254:	00f707b3          	add	a5,a4,a5
    80005258:	f127b823          	sd	s2,-240(a5)
        printString("ThreadB created\n");
    8000525c:	00004517          	auipc	a0,0x4
    80005260:	28450513          	addi	a0,a0,644 # 800094e0 <_ZZ13printInteger1mE6digits+0x1d8>
    80005264:	00000097          	auipc	ra,0x0
    80005268:	21c080e7          	jalr	540(ra) # 80005480 <_Z11printStringPKc>

        threads[i+2] = new C();
    8000526c:	02000513          	li	a0,32
    80005270:	ffffd097          	auipc	ra,0xffffd
    80005274:	c4c080e7          	jalr	-948(ra) # 80001ebc <_Znwm>
    80005278:	00050913          	mv	s2,a0
    C():Thread() {}
    8000527c:	ffffd097          	auipc	ra,0xffffd
    80005280:	e7c080e7          	jalr	-388(ra) # 800020f8 <_ZN6ThreadC1Ev>
    80005284:	00006797          	auipc	a5,0x6
    80005288:	50c78793          	addi	a5,a5,1292 # 8000b790 <_ZTV1C+0x10>
    8000528c:	00f93023          	sd	a5,0(s2)
        threads[i+2] = new C();
    80005290:	0024879b          	addiw	a5,s1,2
    80005294:	00379793          	slli	a5,a5,0x3
    80005298:	fe040713          	addi	a4,s0,-32
    8000529c:	00f707b3          	add	a5,a4,a5
    800052a0:	f127b823          	sd	s2,-240(a5)
        printString("ThreadC created\n");
    800052a4:	00004517          	auipc	a0,0x4
    800052a8:	25450513          	addi	a0,a0,596 # 800094f8 <_ZZ13printInteger1mE6digits+0x1f0>
    800052ac:	00000097          	auipc	ra,0x0
    800052b0:	1d4080e7          	jalr	468(ra) # 80005480 <_Z11printStringPKc>
    for(int i=0; i<30; i=i+3){
    800052b4:	0034849b          	addiw	s1,s1,3
    800052b8:	01d00793          	li	a5,29
    800052bc:	0297c063          	blt	a5,s1,800052dc <_Z13get_thread_idv+0x104>
        threads[i] = new A();
    800052c0:	02000513          	li	a0,32
    800052c4:	ffffd097          	auipc	ra,0xffffd
    800052c8:	bf8080e7          	jalr	-1032(ra) # 80001ebc <_Znwm>
    800052cc:	00050913          	mv	s2,a0
    A():Thread() {}
    800052d0:	ffffd097          	auipc	ra,0xffffd
    800052d4:	e28080e7          	jalr	-472(ra) # 800020f8 <_ZN6ThreadC1Ev>
    800052d8:	f21ff06f          	j	800051f8 <_Z13get_thread_idv+0x20>
    }


    for(int i=0; i<30; i++) {
    800052dc:	00000493          	li	s1,0
    800052e0:	0200006f          	j	80005300 <_Z13get_thread_idv+0x128>
        threads[i]->start();
    800052e4:	00349793          	slli	a5,s1,0x3
    800052e8:	fe040713          	addi	a4,s0,-32
    800052ec:	00f707b3          	add	a5,a4,a5
    800052f0:	f107b503          	ld	a0,-240(a5)
    800052f4:	ffffd097          	auipc	ra,0xffffd
    800052f8:	dd4080e7          	jalr	-556(ra) # 800020c8 <_ZN6Thread5startEv>
    for(int i=0; i<30; i++) {
    800052fc:	0014849b          	addiw	s1,s1,1
    80005300:	01d00793          	li	a5,29
    80005304:	fe97d0e3          	bge	a5,s1,800052e4 <_Z13get_thread_idv+0x10c>
    80005308:	00c0006f          	j	80005314 <_Z13get_thread_idv+0x13c>
    }

    while (!(A::bra==10 && B::brb==10 && C::brc==10)) {
        Thread::dispatch();
    8000530c:	ffffd097          	auipc	ra,0xffffd
    80005310:	e38080e7          	jalr	-456(ra) # 80002144 <_ZN6Thread8dispatchEv>
    while (!(A::bra==10 && B::brb==10 && C::brc==10)) {
    80005314:	00006717          	auipc	a4,0x6
    80005318:	5dc72703          	lw	a4,1500(a4) # 8000b8f0 <_ZN1A3braE>
    8000531c:	00a00793          	li	a5,10
    80005320:	fef716e3          	bne	a4,a5,8000530c <_Z13get_thread_idv+0x134>
    80005324:	00006717          	auipc	a4,0x6
    80005328:	5d072703          	lw	a4,1488(a4) # 8000b8f4 <_ZN1B3brbE>
    8000532c:	fef710e3          	bne	a4,a5,8000530c <_Z13get_thread_idv+0x134>
    80005330:	00006717          	auipc	a4,0x6
    80005334:	5c872703          	lw	a4,1480(a4) # 8000b8f8 <_ZN1C3brcE>
    80005338:	fcf71ae3          	bne	a4,a5,8000530c <_Z13get_thread_idv+0x134>
    }

    for (auto thread: threads) { delete thread; }
    8000533c:	ef040493          	addi	s1,s0,-272
    80005340:	0080006f          	j	80005348 <_Z13get_thread_idv+0x170>
    80005344:	00848493          	addi	s1,s1,8
    80005348:	fe040793          	addi	a5,s0,-32
    8000534c:	06f48863          	beq	s1,a5,800053bc <_Z13get_thread_idv+0x1e4>
    80005350:	0004b503          	ld	a0,0(s1)
    80005354:	fe0508e3          	beqz	a0,80005344 <_Z13get_thread_idv+0x16c>
    80005358:	00053783          	ld	a5,0(a0)
    8000535c:	0087b783          	ld	a5,8(a5)
    80005360:	000780e7          	jalr	a5
    80005364:	fe1ff06f          	j	80005344 <_Z13get_thread_idv+0x16c>
    80005368:	00050493          	mv	s1,a0
        threads[i] = new A();
    8000536c:	00090513          	mv	a0,s2
    80005370:	ffffd097          	auipc	ra,0xffffd
    80005374:	b9c080e7          	jalr	-1124(ra) # 80001f0c <_ZdlPv>
    80005378:	00048513          	mv	a0,s1
    8000537c:	00007097          	auipc	ra,0x7
    80005380:	65c080e7          	jalr	1628(ra) # 8000c9d8 <_Unwind_Resume>
    80005384:	00050493          	mv	s1,a0
        threads[i+1] = new B();
    80005388:	00090513          	mv	a0,s2
    8000538c:	ffffd097          	auipc	ra,0xffffd
    80005390:	b80080e7          	jalr	-1152(ra) # 80001f0c <_ZdlPv>
    80005394:	00048513          	mv	a0,s1
    80005398:	00007097          	auipc	ra,0x7
    8000539c:	640080e7          	jalr	1600(ra) # 8000c9d8 <_Unwind_Resume>
    800053a0:	00050493          	mv	s1,a0
        threads[i+2] = new C();
    800053a4:	00090513          	mv	a0,s2
    800053a8:	ffffd097          	auipc	ra,0xffffd
    800053ac:	b64080e7          	jalr	-1180(ra) # 80001f0c <_ZdlPv>
    800053b0:	00048513          	mv	a0,s1
    800053b4:	00007097          	auipc	ra,0x7
    800053b8:	624080e7          	jalr	1572(ra) # 8000c9d8 <_Unwind_Resume>
    800053bc:	10813083          	ld	ra,264(sp)
    800053c0:	10013403          	ld	s0,256(sp)
    800053c4:	0f813483          	ld	s1,248(sp)
    800053c8:	0f013903          	ld	s2,240(sp)
    800053cc:	11010113          	addi	sp,sp,272
    800053d0:	00008067          	ret

00000000800053d4 <_ZN1CD1Ev>:
class C: public Thread {
    800053d4:	ff010113          	addi	sp,sp,-16
    800053d8:	00113423          	sd	ra,8(sp)
    800053dc:	00813023          	sd	s0,0(sp)
    800053e0:	01010413          	addi	s0,sp,16
    800053e4:	00006797          	auipc	a5,0x6
    800053e8:	3ac78793          	addi	a5,a5,940 # 8000b790 <_ZTV1C+0x10>
    800053ec:	00f53023          	sd	a5,0(a0)
    800053f0:	ffffd097          	auipc	ra,0xffffd
    800053f4:	b98080e7          	jalr	-1128(ra) # 80001f88 <_ZN6ThreadD1Ev>
    800053f8:	00813083          	ld	ra,8(sp)
    800053fc:	00013403          	ld	s0,0(sp)
    80005400:	01010113          	addi	sp,sp,16
    80005404:	00008067          	ret

0000000080005408 <_ZN1CD0Ev>:
    80005408:	fe010113          	addi	sp,sp,-32
    8000540c:	00113c23          	sd	ra,24(sp)
    80005410:	00813823          	sd	s0,16(sp)
    80005414:	00913423          	sd	s1,8(sp)
    80005418:	02010413          	addi	s0,sp,32
    8000541c:	00050493          	mv	s1,a0
    80005420:	00006797          	auipc	a5,0x6
    80005424:	37078793          	addi	a5,a5,880 # 8000b790 <_ZTV1C+0x10>
    80005428:	00f53023          	sd	a5,0(a0)
    8000542c:	ffffd097          	auipc	ra,0xffffd
    80005430:	b5c080e7          	jalr	-1188(ra) # 80001f88 <_ZN6ThreadD1Ev>
    80005434:	00048513          	mv	a0,s1
    80005438:	ffffd097          	auipc	ra,0xffffd
    8000543c:	ad4080e7          	jalr	-1324(ra) # 80001f0c <_ZdlPv>
    80005440:	01813083          	ld	ra,24(sp)
    80005444:	01013403          	ld	s0,16(sp)
    80005448:	00813483          	ld	s1,8(sp)
    8000544c:	02010113          	addi	sp,sp,32
    80005450:	00008067          	ret

0000000080005454 <_ZN1C3runEv>:
    void run() override {
    80005454:	ff010113          	addi	sp,sp,-16
    80005458:	00113423          	sd	ra,8(sp)
    8000545c:	00813023          	sd	s0,0(sp)
    80005460:	01010413          	addi	s0,sp,16
        BodyC(nullptr);
    80005464:	00000593          	li	a1,0
    80005468:	00000097          	auipc	ra,0x0
    8000546c:	c94080e7          	jalr	-876(ra) # 800050fc <_ZN1C5BodyCEPv>
    }
    80005470:	00813083          	ld	ra,8(sp)
    80005474:	00013403          	ld	s0,0(sp)
    80005478:	01010113          	addi	sp,sp,16
    8000547c:	00008067          	ret

0000000080005480 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005480:	fe010113          	addi	sp,sp,-32
    80005484:	00113c23          	sd	ra,24(sp)
    80005488:	00813823          	sd	s0,16(sp)
    8000548c:	00913423          	sd	s1,8(sp)
    80005490:	02010413          	addi	s0,sp,32
    80005494:	00050493          	mv	s1,a0
    LOCK();
    80005498:	00100613          	li	a2,1
    8000549c:	00000593          	li	a1,0
    800054a0:	00006517          	auipc	a0,0x6
    800054a4:	46050513          	addi	a0,a0,1120 # 8000b900 <lockPrint>
    800054a8:	ffffc097          	auipc	ra,0xffffc
    800054ac:	c7c080e7          	jalr	-900(ra) # 80001124 <copy_and_swap>
    800054b0:	00050863          	beqz	a0,800054c0 <_Z11printStringPKc+0x40>
    800054b4:	ffffc097          	auipc	ra,0xffffc
    800054b8:	e80080e7          	jalr	-384(ra) # 80001334 <_Z15thread_dispatchv>
    800054bc:	fddff06f          	j	80005498 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800054c0:	0004c503          	lbu	a0,0(s1)
    800054c4:	00050a63          	beqz	a0,800054d8 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800054c8:	ffffc097          	auipc	ra,0xffffc
    800054cc:	0d0080e7          	jalr	208(ra) # 80001598 <_Z4putcc>
        string++;
    800054d0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800054d4:	fedff06f          	j	800054c0 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800054d8:	00000613          	li	a2,0
    800054dc:	00100593          	li	a1,1
    800054e0:	00006517          	auipc	a0,0x6
    800054e4:	42050513          	addi	a0,a0,1056 # 8000b900 <lockPrint>
    800054e8:	ffffc097          	auipc	ra,0xffffc
    800054ec:	c3c080e7          	jalr	-964(ra) # 80001124 <copy_and_swap>
    800054f0:	fe0514e3          	bnez	a0,800054d8 <_Z11printStringPKc+0x58>
}
    800054f4:	01813083          	ld	ra,24(sp)
    800054f8:	01013403          	ld	s0,16(sp)
    800054fc:	00813483          	ld	s1,8(sp)
    80005500:	02010113          	addi	sp,sp,32
    80005504:	00008067          	ret

0000000080005508 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005508:	fd010113          	addi	sp,sp,-48
    8000550c:	02113423          	sd	ra,40(sp)
    80005510:	02813023          	sd	s0,32(sp)
    80005514:	00913c23          	sd	s1,24(sp)
    80005518:	01213823          	sd	s2,16(sp)
    8000551c:	01313423          	sd	s3,8(sp)
    80005520:	01413023          	sd	s4,0(sp)
    80005524:	03010413          	addi	s0,sp,48
    80005528:	00050993          	mv	s3,a0
    8000552c:	00058a13          	mv	s4,a1
    LOCK();
    80005530:	00100613          	li	a2,1
    80005534:	00000593          	li	a1,0
    80005538:	00006517          	auipc	a0,0x6
    8000553c:	3c850513          	addi	a0,a0,968 # 8000b900 <lockPrint>
    80005540:	ffffc097          	auipc	ra,0xffffc
    80005544:	be4080e7          	jalr	-1052(ra) # 80001124 <copy_and_swap>
    80005548:	00050863          	beqz	a0,80005558 <_Z9getStringPci+0x50>
    8000554c:	ffffc097          	auipc	ra,0xffffc
    80005550:	de8080e7          	jalr	-536(ra) # 80001334 <_Z15thread_dispatchv>
    80005554:	fddff06f          	j	80005530 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005558:	00000913          	li	s2,0
    8000555c:	00090493          	mv	s1,s2
    80005560:	0019091b          	addiw	s2,s2,1
    80005564:	03495a63          	bge	s2,s4,80005598 <_Z9getStringPci+0x90>
        cc = getc();
    80005568:	ffffc097          	auipc	ra,0xffffc
    8000556c:	004080e7          	jalr	4(ra) # 8000156c <_Z4getcv>
        if(cc < 1)
    80005570:	02050463          	beqz	a0,80005598 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005574:	009984b3          	add	s1,s3,s1
    80005578:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000557c:	00a00793          	li	a5,10
    80005580:	00f50a63          	beq	a0,a5,80005594 <_Z9getStringPci+0x8c>
    80005584:	00d00793          	li	a5,13
    80005588:	fcf51ae3          	bne	a0,a5,8000555c <_Z9getStringPci+0x54>
        buf[i++] = c;
    8000558c:	00090493          	mv	s1,s2
    80005590:	0080006f          	j	80005598 <_Z9getStringPci+0x90>
    80005594:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005598:	009984b3          	add	s1,s3,s1
    8000559c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800055a0:	00000613          	li	a2,0
    800055a4:	00100593          	li	a1,1
    800055a8:	00006517          	auipc	a0,0x6
    800055ac:	35850513          	addi	a0,a0,856 # 8000b900 <lockPrint>
    800055b0:	ffffc097          	auipc	ra,0xffffc
    800055b4:	b74080e7          	jalr	-1164(ra) # 80001124 <copy_and_swap>
    800055b8:	fe0514e3          	bnez	a0,800055a0 <_Z9getStringPci+0x98>
    return buf;
}
    800055bc:	00098513          	mv	a0,s3
    800055c0:	02813083          	ld	ra,40(sp)
    800055c4:	02013403          	ld	s0,32(sp)
    800055c8:	01813483          	ld	s1,24(sp)
    800055cc:	01013903          	ld	s2,16(sp)
    800055d0:	00813983          	ld	s3,8(sp)
    800055d4:	00013a03          	ld	s4,0(sp)
    800055d8:	03010113          	addi	sp,sp,48
    800055dc:	00008067          	ret

00000000800055e0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800055e0:	ff010113          	addi	sp,sp,-16
    800055e4:	00813423          	sd	s0,8(sp)
    800055e8:	01010413          	addi	s0,sp,16
    800055ec:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800055f0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800055f4:	0006c603          	lbu	a2,0(a3)
    800055f8:	fd06071b          	addiw	a4,a2,-48
    800055fc:	0ff77713          	andi	a4,a4,255
    80005600:	00900793          	li	a5,9
    80005604:	02e7e063          	bltu	a5,a4,80005624 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005608:	0025179b          	slliw	a5,a0,0x2
    8000560c:	00a787bb          	addw	a5,a5,a0
    80005610:	0017979b          	slliw	a5,a5,0x1
    80005614:	00168693          	addi	a3,a3,1
    80005618:	00c787bb          	addw	a5,a5,a2
    8000561c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005620:	fd5ff06f          	j	800055f4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005624:	00813403          	ld	s0,8(sp)
    80005628:	01010113          	addi	sp,sp,16
    8000562c:	00008067          	ret

0000000080005630 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005630:	fc010113          	addi	sp,sp,-64
    80005634:	02113c23          	sd	ra,56(sp)
    80005638:	02813823          	sd	s0,48(sp)
    8000563c:	02913423          	sd	s1,40(sp)
    80005640:	03213023          	sd	s2,32(sp)
    80005644:	01313c23          	sd	s3,24(sp)
    80005648:	04010413          	addi	s0,sp,64
    8000564c:	00050493          	mv	s1,a0
    80005650:	00058913          	mv	s2,a1
    80005654:	00060993          	mv	s3,a2
    LOCK();
    80005658:	00100613          	li	a2,1
    8000565c:	00000593          	li	a1,0
    80005660:	00006517          	auipc	a0,0x6
    80005664:	2a050513          	addi	a0,a0,672 # 8000b900 <lockPrint>
    80005668:	ffffc097          	auipc	ra,0xffffc
    8000566c:	abc080e7          	jalr	-1348(ra) # 80001124 <copy_and_swap>
    80005670:	00050863          	beqz	a0,80005680 <_Z8printIntiii+0x50>
    80005674:	ffffc097          	auipc	ra,0xffffc
    80005678:	cc0080e7          	jalr	-832(ra) # 80001334 <_Z15thread_dispatchv>
    8000567c:	fddff06f          	j	80005658 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005680:	00098463          	beqz	s3,80005688 <_Z8printIntiii+0x58>
    80005684:	0804c463          	bltz	s1,8000570c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005688:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000568c:	00000593          	li	a1,0
    }

    i = 0;
    80005690:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005694:	0009079b          	sext.w	a5,s2
    80005698:	0325773b          	remuw	a4,a0,s2
    8000569c:	00048613          	mv	a2,s1
    800056a0:	0014849b          	addiw	s1,s1,1
    800056a4:	02071693          	slli	a3,a4,0x20
    800056a8:	0206d693          	srli	a3,a3,0x20
    800056ac:	00006717          	auipc	a4,0x6
    800056b0:	0fc70713          	addi	a4,a4,252 # 8000b7a8 <digits>
    800056b4:	00d70733          	add	a4,a4,a3
    800056b8:	00074683          	lbu	a3,0(a4)
    800056bc:	fd040713          	addi	a4,s0,-48
    800056c0:	00c70733          	add	a4,a4,a2
    800056c4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800056c8:	0005071b          	sext.w	a4,a0
    800056cc:	0325553b          	divuw	a0,a0,s2
    800056d0:	fcf772e3          	bgeu	a4,a5,80005694 <_Z8printIntiii+0x64>
    if(neg)
    800056d4:	00058c63          	beqz	a1,800056ec <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800056d8:	fd040793          	addi	a5,s0,-48
    800056dc:	009784b3          	add	s1,a5,s1
    800056e0:	02d00793          	li	a5,45
    800056e4:	fef48823          	sb	a5,-16(s1)
    800056e8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800056ec:	fff4849b          	addiw	s1,s1,-1
    800056f0:	0204c463          	bltz	s1,80005718 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800056f4:	fd040793          	addi	a5,s0,-48
    800056f8:	009787b3          	add	a5,a5,s1
    800056fc:	ff07c503          	lbu	a0,-16(a5)
    80005700:	ffffc097          	auipc	ra,0xffffc
    80005704:	e98080e7          	jalr	-360(ra) # 80001598 <_Z4putcc>
    80005708:	fe5ff06f          	j	800056ec <_Z8printIntiii+0xbc>
        x = -xx;
    8000570c:	4090053b          	negw	a0,s1
        neg = 1;
    80005710:	00100593          	li	a1,1
        x = -xx;
    80005714:	f7dff06f          	j	80005690 <_Z8printIntiii+0x60>

    UNLOCK();
    80005718:	00000613          	li	a2,0
    8000571c:	00100593          	li	a1,1
    80005720:	00006517          	auipc	a0,0x6
    80005724:	1e050513          	addi	a0,a0,480 # 8000b900 <lockPrint>
    80005728:	ffffc097          	auipc	ra,0xffffc
    8000572c:	9fc080e7          	jalr	-1540(ra) # 80001124 <copy_and_swap>
    80005730:	fe0514e3          	bnez	a0,80005718 <_Z8printIntiii+0xe8>
    80005734:	03813083          	ld	ra,56(sp)
    80005738:	03013403          	ld	s0,48(sp)
    8000573c:	02813483          	ld	s1,40(sp)
    80005740:	02013903          	ld	s2,32(sp)
    80005744:	01813983          	ld	s3,24(sp)
    80005748:	04010113          	addi	sp,sp,64
    8000574c:	00008067          	ret

0000000080005750 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005750:	fd010113          	addi	sp,sp,-48
    80005754:	02113423          	sd	ra,40(sp)
    80005758:	02813023          	sd	s0,32(sp)
    8000575c:	00913c23          	sd	s1,24(sp)
    80005760:	01213823          	sd	s2,16(sp)
    80005764:	01313423          	sd	s3,8(sp)
    80005768:	03010413          	addi	s0,sp,48
    8000576c:	00050493          	mv	s1,a0
    80005770:	00058913          	mv	s2,a1
    80005774:	0015879b          	addiw	a5,a1,1
    80005778:	0007851b          	sext.w	a0,a5
    8000577c:	00f4a023          	sw	a5,0(s1)
    80005780:	0004a823          	sw	zero,16(s1)
    80005784:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005788:	00251513          	slli	a0,a0,0x2
    8000578c:	ffffc097          	auipc	ra,0xffffc
    80005790:	9b8080e7          	jalr	-1608(ra) # 80001144 <_Z9mem_allocm>
    80005794:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005798:	01000513          	li	a0,16
    8000579c:	ffffc097          	auipc	ra,0xffffc
    800057a0:	720080e7          	jalr	1824(ra) # 80001ebc <_Znwm>
    800057a4:	00050993          	mv	s3,a0
    800057a8:	00000593          	li	a1,0
    800057ac:	ffffd097          	auipc	ra,0xffffd
    800057b0:	ac0080e7          	jalr	-1344(ra) # 8000226c <_ZN9SemaphoreC1Ej>
    800057b4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800057b8:	01000513          	li	a0,16
    800057bc:	ffffc097          	auipc	ra,0xffffc
    800057c0:	700080e7          	jalr	1792(ra) # 80001ebc <_Znwm>
    800057c4:	00050993          	mv	s3,a0
    800057c8:	00090593          	mv	a1,s2
    800057cc:	ffffd097          	auipc	ra,0xffffd
    800057d0:	aa0080e7          	jalr	-1376(ra) # 8000226c <_ZN9SemaphoreC1Ej>
    800057d4:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800057d8:	01000513          	li	a0,16
    800057dc:	ffffc097          	auipc	ra,0xffffc
    800057e0:	6e0080e7          	jalr	1760(ra) # 80001ebc <_Znwm>
    800057e4:	00050913          	mv	s2,a0
    800057e8:	00100593          	li	a1,1
    800057ec:	ffffd097          	auipc	ra,0xffffd
    800057f0:	a80080e7          	jalr	-1408(ra) # 8000226c <_ZN9SemaphoreC1Ej>
    800057f4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800057f8:	01000513          	li	a0,16
    800057fc:	ffffc097          	auipc	ra,0xffffc
    80005800:	6c0080e7          	jalr	1728(ra) # 80001ebc <_Znwm>
    80005804:	00050913          	mv	s2,a0
    80005808:	00100593          	li	a1,1
    8000580c:	ffffd097          	auipc	ra,0xffffd
    80005810:	a60080e7          	jalr	-1440(ra) # 8000226c <_ZN9SemaphoreC1Ej>
    80005814:	0324b823          	sd	s2,48(s1)
}
    80005818:	02813083          	ld	ra,40(sp)
    8000581c:	02013403          	ld	s0,32(sp)
    80005820:	01813483          	ld	s1,24(sp)
    80005824:	01013903          	ld	s2,16(sp)
    80005828:	00813983          	ld	s3,8(sp)
    8000582c:	03010113          	addi	sp,sp,48
    80005830:	00008067          	ret
    80005834:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005838:	00098513          	mv	a0,s3
    8000583c:	ffffc097          	auipc	ra,0xffffc
    80005840:	6d0080e7          	jalr	1744(ra) # 80001f0c <_ZdlPv>
    80005844:	00048513          	mv	a0,s1
    80005848:	00007097          	auipc	ra,0x7
    8000584c:	190080e7          	jalr	400(ra) # 8000c9d8 <_Unwind_Resume>
    80005850:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005854:	00098513          	mv	a0,s3
    80005858:	ffffc097          	auipc	ra,0xffffc
    8000585c:	6b4080e7          	jalr	1716(ra) # 80001f0c <_ZdlPv>
    80005860:	00048513          	mv	a0,s1
    80005864:	00007097          	auipc	ra,0x7
    80005868:	174080e7          	jalr	372(ra) # 8000c9d8 <_Unwind_Resume>
    8000586c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005870:	00090513          	mv	a0,s2
    80005874:	ffffc097          	auipc	ra,0xffffc
    80005878:	698080e7          	jalr	1688(ra) # 80001f0c <_ZdlPv>
    8000587c:	00048513          	mv	a0,s1
    80005880:	00007097          	auipc	ra,0x7
    80005884:	158080e7          	jalr	344(ra) # 8000c9d8 <_Unwind_Resume>
    80005888:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000588c:	00090513          	mv	a0,s2
    80005890:	ffffc097          	auipc	ra,0xffffc
    80005894:	67c080e7          	jalr	1660(ra) # 80001f0c <_ZdlPv>
    80005898:	00048513          	mv	a0,s1
    8000589c:	00007097          	auipc	ra,0x7
    800058a0:	13c080e7          	jalr	316(ra) # 8000c9d8 <_Unwind_Resume>

00000000800058a4 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800058a4:	fe010113          	addi	sp,sp,-32
    800058a8:	00113c23          	sd	ra,24(sp)
    800058ac:	00813823          	sd	s0,16(sp)
    800058b0:	00913423          	sd	s1,8(sp)
    800058b4:	01213023          	sd	s2,0(sp)
    800058b8:	02010413          	addi	s0,sp,32
    800058bc:	00050493          	mv	s1,a0
    800058c0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800058c4:	01853503          	ld	a0,24(a0)
    800058c8:	ffffd097          	auipc	ra,0xffffd
    800058cc:	9dc080e7          	jalr	-1572(ra) # 800022a4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800058d0:	0304b503          	ld	a0,48(s1)
    800058d4:	ffffd097          	auipc	ra,0xffffd
    800058d8:	9d0080e7          	jalr	-1584(ra) # 800022a4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800058dc:	0084b783          	ld	a5,8(s1)
    800058e0:	0144a703          	lw	a4,20(s1)
    800058e4:	00271713          	slli	a4,a4,0x2
    800058e8:	00e787b3          	add	a5,a5,a4
    800058ec:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800058f0:	0144a783          	lw	a5,20(s1)
    800058f4:	0017879b          	addiw	a5,a5,1
    800058f8:	0004a703          	lw	a4,0(s1)
    800058fc:	02e7e7bb          	remw	a5,a5,a4
    80005900:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005904:	0304b503          	ld	a0,48(s1)
    80005908:	ffffd097          	auipc	ra,0xffffd
    8000590c:	9c8080e7          	jalr	-1592(ra) # 800022d0 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005910:	0204b503          	ld	a0,32(s1)
    80005914:	ffffd097          	auipc	ra,0xffffd
    80005918:	9bc080e7          	jalr	-1604(ra) # 800022d0 <_ZN9Semaphore6signalEv>

}
    8000591c:	01813083          	ld	ra,24(sp)
    80005920:	01013403          	ld	s0,16(sp)
    80005924:	00813483          	ld	s1,8(sp)
    80005928:	00013903          	ld	s2,0(sp)
    8000592c:	02010113          	addi	sp,sp,32
    80005930:	00008067          	ret

0000000080005934 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005934:	fe010113          	addi	sp,sp,-32
    80005938:	00113c23          	sd	ra,24(sp)
    8000593c:	00813823          	sd	s0,16(sp)
    80005940:	00913423          	sd	s1,8(sp)
    80005944:	01213023          	sd	s2,0(sp)
    80005948:	02010413          	addi	s0,sp,32
    8000594c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005950:	02053503          	ld	a0,32(a0)
    80005954:	ffffd097          	auipc	ra,0xffffd
    80005958:	950080e7          	jalr	-1712(ra) # 800022a4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000595c:	0284b503          	ld	a0,40(s1)
    80005960:	ffffd097          	auipc	ra,0xffffd
    80005964:	944080e7          	jalr	-1724(ra) # 800022a4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005968:	0084b703          	ld	a4,8(s1)
    8000596c:	0104a783          	lw	a5,16(s1)
    80005970:	00279693          	slli	a3,a5,0x2
    80005974:	00d70733          	add	a4,a4,a3
    80005978:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000597c:	0017879b          	addiw	a5,a5,1
    80005980:	0004a703          	lw	a4,0(s1)
    80005984:	02e7e7bb          	remw	a5,a5,a4
    80005988:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000598c:	0284b503          	ld	a0,40(s1)
    80005990:	ffffd097          	auipc	ra,0xffffd
    80005994:	940080e7          	jalr	-1728(ra) # 800022d0 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005998:	0184b503          	ld	a0,24(s1)
    8000599c:	ffffd097          	auipc	ra,0xffffd
    800059a0:	934080e7          	jalr	-1740(ra) # 800022d0 <_ZN9Semaphore6signalEv>

    return ret;
}
    800059a4:	00090513          	mv	a0,s2
    800059a8:	01813083          	ld	ra,24(sp)
    800059ac:	01013403          	ld	s0,16(sp)
    800059b0:	00813483          	ld	s1,8(sp)
    800059b4:	00013903          	ld	s2,0(sp)
    800059b8:	02010113          	addi	sp,sp,32
    800059bc:	00008067          	ret

00000000800059c0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800059c0:	fe010113          	addi	sp,sp,-32
    800059c4:	00113c23          	sd	ra,24(sp)
    800059c8:	00813823          	sd	s0,16(sp)
    800059cc:	00913423          	sd	s1,8(sp)
    800059d0:	01213023          	sd	s2,0(sp)
    800059d4:	02010413          	addi	s0,sp,32
    800059d8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800059dc:	02853503          	ld	a0,40(a0)
    800059e0:	ffffd097          	auipc	ra,0xffffd
    800059e4:	8c4080e7          	jalr	-1852(ra) # 800022a4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800059e8:	0304b503          	ld	a0,48(s1)
    800059ec:	ffffd097          	auipc	ra,0xffffd
    800059f0:	8b8080e7          	jalr	-1864(ra) # 800022a4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800059f4:	0144a783          	lw	a5,20(s1)
    800059f8:	0104a903          	lw	s2,16(s1)
    800059fc:	0327ce63          	blt	a5,s2,80005a38 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005a00:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005a04:	0304b503          	ld	a0,48(s1)
    80005a08:	ffffd097          	auipc	ra,0xffffd
    80005a0c:	8c8080e7          	jalr	-1848(ra) # 800022d0 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005a10:	0284b503          	ld	a0,40(s1)
    80005a14:	ffffd097          	auipc	ra,0xffffd
    80005a18:	8bc080e7          	jalr	-1860(ra) # 800022d0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005a1c:	00090513          	mv	a0,s2
    80005a20:	01813083          	ld	ra,24(sp)
    80005a24:	01013403          	ld	s0,16(sp)
    80005a28:	00813483          	ld	s1,8(sp)
    80005a2c:	00013903          	ld	s2,0(sp)
    80005a30:	02010113          	addi	sp,sp,32
    80005a34:	00008067          	ret
        ret = cap - head + tail;
    80005a38:	0004a703          	lw	a4,0(s1)
    80005a3c:	4127093b          	subw	s2,a4,s2
    80005a40:	00f9093b          	addw	s2,s2,a5
    80005a44:	fc1ff06f          	j	80005a04 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005a48 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005a48:	fe010113          	addi	sp,sp,-32
    80005a4c:	00113c23          	sd	ra,24(sp)
    80005a50:	00813823          	sd	s0,16(sp)
    80005a54:	00913423          	sd	s1,8(sp)
    80005a58:	02010413          	addi	s0,sp,32
    80005a5c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005a60:	00a00513          	li	a0,10
    80005a64:	ffffd097          	auipc	ra,0xffffd
    80005a68:	8f0080e7          	jalr	-1808(ra) # 80002354 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005a6c:	00004517          	auipc	a0,0x4
    80005a70:	afc50513          	addi	a0,a0,-1284 # 80009568 <_ZZ13printInteger1mE6digits+0x260>
    80005a74:	00000097          	auipc	ra,0x0
    80005a78:	a0c080e7          	jalr	-1524(ra) # 80005480 <_Z11printStringPKc>
    while (getCnt()) {
    80005a7c:	00048513          	mv	a0,s1
    80005a80:	00000097          	auipc	ra,0x0
    80005a84:	f40080e7          	jalr	-192(ra) # 800059c0 <_ZN9BufferCPP6getCntEv>
    80005a88:	02050c63          	beqz	a0,80005ac0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005a8c:	0084b783          	ld	a5,8(s1)
    80005a90:	0104a703          	lw	a4,16(s1)
    80005a94:	00271713          	slli	a4,a4,0x2
    80005a98:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005a9c:	0007c503          	lbu	a0,0(a5)
    80005aa0:	ffffd097          	auipc	ra,0xffffd
    80005aa4:	8b4080e7          	jalr	-1868(ra) # 80002354 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005aa8:	0104a783          	lw	a5,16(s1)
    80005aac:	0017879b          	addiw	a5,a5,1
    80005ab0:	0004a703          	lw	a4,0(s1)
    80005ab4:	02e7e7bb          	remw	a5,a5,a4
    80005ab8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005abc:	fc1ff06f          	j	80005a7c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005ac0:	02100513          	li	a0,33
    80005ac4:	ffffd097          	auipc	ra,0xffffd
    80005ac8:	890080e7          	jalr	-1904(ra) # 80002354 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005acc:	00a00513          	li	a0,10
    80005ad0:	ffffd097          	auipc	ra,0xffffd
    80005ad4:	884080e7          	jalr	-1916(ra) # 80002354 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005ad8:	0084b503          	ld	a0,8(s1)
    80005adc:	ffffb097          	auipc	ra,0xffffb
    80005ae0:	6b0080e7          	jalr	1712(ra) # 8000118c <_Z8mem_freePv>
    delete itemAvailable;
    80005ae4:	0204b503          	ld	a0,32(s1)
    80005ae8:	00050863          	beqz	a0,80005af8 <_ZN9BufferCPPD1Ev+0xb0>
    80005aec:	00053783          	ld	a5,0(a0)
    80005af0:	0087b783          	ld	a5,8(a5)
    80005af4:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005af8:	0184b503          	ld	a0,24(s1)
    80005afc:	00050863          	beqz	a0,80005b0c <_ZN9BufferCPPD1Ev+0xc4>
    80005b00:	00053783          	ld	a5,0(a0)
    80005b04:	0087b783          	ld	a5,8(a5)
    80005b08:	000780e7          	jalr	a5
    delete mutexTail;
    80005b0c:	0304b503          	ld	a0,48(s1)
    80005b10:	00050863          	beqz	a0,80005b20 <_ZN9BufferCPPD1Ev+0xd8>
    80005b14:	00053783          	ld	a5,0(a0)
    80005b18:	0087b783          	ld	a5,8(a5)
    80005b1c:	000780e7          	jalr	a5
    delete mutexHead;
    80005b20:	0284b503          	ld	a0,40(s1)
    80005b24:	00050863          	beqz	a0,80005b34 <_ZN9BufferCPPD1Ev+0xec>
    80005b28:	00053783          	ld	a5,0(a0)
    80005b2c:	0087b783          	ld	a5,8(a5)
    80005b30:	000780e7          	jalr	a5
}
    80005b34:	01813083          	ld	ra,24(sp)
    80005b38:	01013403          	ld	s0,16(sp)
    80005b3c:	00813483          	ld	s1,8(sp)
    80005b40:	02010113          	addi	sp,sp,32
    80005b44:	00008067          	ret

0000000080005b48 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005b48:	fe010113          	addi	sp,sp,-32
    80005b4c:	00113c23          	sd	ra,24(sp)
    80005b50:	00813823          	sd	s0,16(sp)
    80005b54:	00913423          	sd	s1,8(sp)
    80005b58:	01213023          	sd	s2,0(sp)
    80005b5c:	02010413          	addi	s0,sp,32
    80005b60:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005b64:	00100793          	li	a5,1
    80005b68:	02a7f863          	bgeu	a5,a0,80005b98 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005b6c:	00a00793          	li	a5,10
    80005b70:	02f577b3          	remu	a5,a0,a5
    80005b74:	02078e63          	beqz	a5,80005bb0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005b78:	fff48513          	addi	a0,s1,-1
    80005b7c:	00000097          	auipc	ra,0x0
    80005b80:	fcc080e7          	jalr	-52(ra) # 80005b48 <_ZL9fibonaccim>
    80005b84:	00050913          	mv	s2,a0
    80005b88:	ffe48513          	addi	a0,s1,-2
    80005b8c:	00000097          	auipc	ra,0x0
    80005b90:	fbc080e7          	jalr	-68(ra) # 80005b48 <_ZL9fibonaccim>
    80005b94:	00a90533          	add	a0,s2,a0
}
    80005b98:	01813083          	ld	ra,24(sp)
    80005b9c:	01013403          	ld	s0,16(sp)
    80005ba0:	00813483          	ld	s1,8(sp)
    80005ba4:	00013903          	ld	s2,0(sp)
    80005ba8:	02010113          	addi	sp,sp,32
    80005bac:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005bb0:	ffffb097          	auipc	ra,0xffffb
    80005bb4:	784080e7          	jalr	1924(ra) # 80001334 <_Z15thread_dispatchv>
    80005bb8:	fc1ff06f          	j	80005b78 <_ZL9fibonaccim+0x30>

0000000080005bbc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005bbc:	fe010113          	addi	sp,sp,-32
    80005bc0:	00113c23          	sd	ra,24(sp)
    80005bc4:	00813823          	sd	s0,16(sp)
    80005bc8:	00913423          	sd	s1,8(sp)
    80005bcc:	01213023          	sd	s2,0(sp)
    80005bd0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005bd4:	00a00493          	li	s1,10
    80005bd8:	0400006f          	j	80005c18 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005bdc:	00004517          	auipc	a0,0x4
    80005be0:	8b450513          	addi	a0,a0,-1868 # 80009490 <_ZZ13printInteger1mE6digits+0x188>
    80005be4:	00000097          	auipc	ra,0x0
    80005be8:	89c080e7          	jalr	-1892(ra) # 80005480 <_Z11printStringPKc>
    80005bec:	00000613          	li	a2,0
    80005bf0:	00a00593          	li	a1,10
    80005bf4:	00048513          	mv	a0,s1
    80005bf8:	00000097          	auipc	ra,0x0
    80005bfc:	a38080e7          	jalr	-1480(ra) # 80005630 <_Z8printIntiii>
    80005c00:	00003517          	auipc	a0,0x3
    80005c04:	59050513          	addi	a0,a0,1424 # 80009190 <CONSOLE_STATUS+0x180>
    80005c08:	00000097          	auipc	ra,0x0
    80005c0c:	878080e7          	jalr	-1928(ra) # 80005480 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005c10:	0014849b          	addiw	s1,s1,1
    80005c14:	0ff4f493          	andi	s1,s1,255
    80005c18:	00c00793          	li	a5,12
    80005c1c:	fc97f0e3          	bgeu	a5,s1,80005bdc <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005c20:	00004517          	auipc	a0,0x4
    80005c24:	87850513          	addi	a0,a0,-1928 # 80009498 <_ZZ13printInteger1mE6digits+0x190>
    80005c28:	00000097          	auipc	ra,0x0
    80005c2c:	858080e7          	jalr	-1960(ra) # 80005480 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005c30:	00500313          	li	t1,5
    thread_dispatch();
    80005c34:	ffffb097          	auipc	ra,0xffffb
    80005c38:	700080e7          	jalr	1792(ra) # 80001334 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005c3c:	01000513          	li	a0,16
    80005c40:	00000097          	auipc	ra,0x0
    80005c44:	f08080e7          	jalr	-248(ra) # 80005b48 <_ZL9fibonaccim>
    80005c48:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005c4c:	00004517          	auipc	a0,0x4
    80005c50:	85c50513          	addi	a0,a0,-1956 # 800094a8 <_ZZ13printInteger1mE6digits+0x1a0>
    80005c54:	00000097          	auipc	ra,0x0
    80005c58:	82c080e7          	jalr	-2004(ra) # 80005480 <_Z11printStringPKc>
    80005c5c:	00000613          	li	a2,0
    80005c60:	00a00593          	li	a1,10
    80005c64:	0009051b          	sext.w	a0,s2
    80005c68:	00000097          	auipc	ra,0x0
    80005c6c:	9c8080e7          	jalr	-1592(ra) # 80005630 <_Z8printIntiii>
    80005c70:	00003517          	auipc	a0,0x3
    80005c74:	52050513          	addi	a0,a0,1312 # 80009190 <CONSOLE_STATUS+0x180>
    80005c78:	00000097          	auipc	ra,0x0
    80005c7c:	808080e7          	jalr	-2040(ra) # 80005480 <_Z11printStringPKc>
    80005c80:	0400006f          	j	80005cc0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005c84:	00004517          	auipc	a0,0x4
    80005c88:	80c50513          	addi	a0,a0,-2036 # 80009490 <_ZZ13printInteger1mE6digits+0x188>
    80005c8c:	fffff097          	auipc	ra,0xfffff
    80005c90:	7f4080e7          	jalr	2036(ra) # 80005480 <_Z11printStringPKc>
    80005c94:	00000613          	li	a2,0
    80005c98:	00a00593          	li	a1,10
    80005c9c:	00048513          	mv	a0,s1
    80005ca0:	00000097          	auipc	ra,0x0
    80005ca4:	990080e7          	jalr	-1648(ra) # 80005630 <_Z8printIntiii>
    80005ca8:	00003517          	auipc	a0,0x3
    80005cac:	4e850513          	addi	a0,a0,1256 # 80009190 <CONSOLE_STATUS+0x180>
    80005cb0:	fffff097          	auipc	ra,0xfffff
    80005cb4:	7d0080e7          	jalr	2000(ra) # 80005480 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005cb8:	0014849b          	addiw	s1,s1,1
    80005cbc:	0ff4f493          	andi	s1,s1,255
    80005cc0:	00f00793          	li	a5,15
    80005cc4:	fc97f0e3          	bgeu	a5,s1,80005c84 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005cc8:	00003517          	auipc	a0,0x3
    80005ccc:	7f050513          	addi	a0,a0,2032 # 800094b8 <_ZZ13printInteger1mE6digits+0x1b0>
    80005cd0:	fffff097          	auipc	ra,0xfffff
    80005cd4:	7b0080e7          	jalr	1968(ra) # 80005480 <_Z11printStringPKc>
    finishedD = true;
    80005cd8:	00100793          	li	a5,1
    80005cdc:	00006717          	auipc	a4,0x6
    80005ce0:	c2f70623          	sb	a5,-980(a4) # 8000b908 <_ZL9finishedD>
    thread_dispatch();
    80005ce4:	ffffb097          	auipc	ra,0xffffb
    80005ce8:	650080e7          	jalr	1616(ra) # 80001334 <_Z15thread_dispatchv>
}
    80005cec:	01813083          	ld	ra,24(sp)
    80005cf0:	01013403          	ld	s0,16(sp)
    80005cf4:	00813483          	ld	s1,8(sp)
    80005cf8:	00013903          	ld	s2,0(sp)
    80005cfc:	02010113          	addi	sp,sp,32
    80005d00:	00008067          	ret

0000000080005d04 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005d04:	fe010113          	addi	sp,sp,-32
    80005d08:	00113c23          	sd	ra,24(sp)
    80005d0c:	00813823          	sd	s0,16(sp)
    80005d10:	00913423          	sd	s1,8(sp)
    80005d14:	01213023          	sd	s2,0(sp)
    80005d18:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005d1c:	00000493          	li	s1,0
    80005d20:	0400006f          	j	80005d60 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005d24:	00003517          	auipc	a0,0x3
    80005d28:	72c50513          	addi	a0,a0,1836 # 80009450 <_ZZ13printInteger1mE6digits+0x148>
    80005d2c:	fffff097          	auipc	ra,0xfffff
    80005d30:	754080e7          	jalr	1876(ra) # 80005480 <_Z11printStringPKc>
    80005d34:	00000613          	li	a2,0
    80005d38:	00a00593          	li	a1,10
    80005d3c:	00048513          	mv	a0,s1
    80005d40:	00000097          	auipc	ra,0x0
    80005d44:	8f0080e7          	jalr	-1808(ra) # 80005630 <_Z8printIntiii>
    80005d48:	00003517          	auipc	a0,0x3
    80005d4c:	44850513          	addi	a0,a0,1096 # 80009190 <CONSOLE_STATUS+0x180>
    80005d50:	fffff097          	auipc	ra,0xfffff
    80005d54:	730080e7          	jalr	1840(ra) # 80005480 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005d58:	0014849b          	addiw	s1,s1,1
    80005d5c:	0ff4f493          	andi	s1,s1,255
    80005d60:	00200793          	li	a5,2
    80005d64:	fc97f0e3          	bgeu	a5,s1,80005d24 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005d68:	00003517          	auipc	a0,0x3
    80005d6c:	6f050513          	addi	a0,a0,1776 # 80009458 <_ZZ13printInteger1mE6digits+0x150>
    80005d70:	fffff097          	auipc	ra,0xfffff
    80005d74:	710080e7          	jalr	1808(ra) # 80005480 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005d78:	00700313          	li	t1,7
    thread_dispatch();
    80005d7c:	ffffb097          	auipc	ra,0xffffb
    80005d80:	5b8080e7          	jalr	1464(ra) # 80001334 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005d84:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005d88:	00003517          	auipc	a0,0x3
    80005d8c:	6e050513          	addi	a0,a0,1760 # 80009468 <_ZZ13printInteger1mE6digits+0x160>
    80005d90:	fffff097          	auipc	ra,0xfffff
    80005d94:	6f0080e7          	jalr	1776(ra) # 80005480 <_Z11printStringPKc>
    80005d98:	00000613          	li	a2,0
    80005d9c:	00a00593          	li	a1,10
    80005da0:	0009051b          	sext.w	a0,s2
    80005da4:	00000097          	auipc	ra,0x0
    80005da8:	88c080e7          	jalr	-1908(ra) # 80005630 <_Z8printIntiii>
    80005dac:	00003517          	auipc	a0,0x3
    80005db0:	3e450513          	addi	a0,a0,996 # 80009190 <CONSOLE_STATUS+0x180>
    80005db4:	fffff097          	auipc	ra,0xfffff
    80005db8:	6cc080e7          	jalr	1740(ra) # 80005480 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005dbc:	00c00513          	li	a0,12
    80005dc0:	00000097          	auipc	ra,0x0
    80005dc4:	d88080e7          	jalr	-632(ra) # 80005b48 <_ZL9fibonaccim>
    80005dc8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005dcc:	00003517          	auipc	a0,0x3
    80005dd0:	6a450513          	addi	a0,a0,1700 # 80009470 <_ZZ13printInteger1mE6digits+0x168>
    80005dd4:	fffff097          	auipc	ra,0xfffff
    80005dd8:	6ac080e7          	jalr	1708(ra) # 80005480 <_Z11printStringPKc>
    80005ddc:	00000613          	li	a2,0
    80005de0:	00a00593          	li	a1,10
    80005de4:	0009051b          	sext.w	a0,s2
    80005de8:	00000097          	auipc	ra,0x0
    80005dec:	848080e7          	jalr	-1976(ra) # 80005630 <_Z8printIntiii>
    80005df0:	00003517          	auipc	a0,0x3
    80005df4:	3a050513          	addi	a0,a0,928 # 80009190 <CONSOLE_STATUS+0x180>
    80005df8:	fffff097          	auipc	ra,0xfffff
    80005dfc:	688080e7          	jalr	1672(ra) # 80005480 <_Z11printStringPKc>
    80005e00:	0400006f          	j	80005e40 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005e04:	00003517          	auipc	a0,0x3
    80005e08:	64c50513          	addi	a0,a0,1612 # 80009450 <_ZZ13printInteger1mE6digits+0x148>
    80005e0c:	fffff097          	auipc	ra,0xfffff
    80005e10:	674080e7          	jalr	1652(ra) # 80005480 <_Z11printStringPKc>
    80005e14:	00000613          	li	a2,0
    80005e18:	00a00593          	li	a1,10
    80005e1c:	00048513          	mv	a0,s1
    80005e20:	00000097          	auipc	ra,0x0
    80005e24:	810080e7          	jalr	-2032(ra) # 80005630 <_Z8printIntiii>
    80005e28:	00003517          	auipc	a0,0x3
    80005e2c:	36850513          	addi	a0,a0,872 # 80009190 <CONSOLE_STATUS+0x180>
    80005e30:	fffff097          	auipc	ra,0xfffff
    80005e34:	650080e7          	jalr	1616(ra) # 80005480 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005e38:	0014849b          	addiw	s1,s1,1
    80005e3c:	0ff4f493          	andi	s1,s1,255
    80005e40:	00500793          	li	a5,5
    80005e44:	fc97f0e3          	bgeu	a5,s1,80005e04 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005e48:	00003517          	auipc	a0,0x3
    80005e4c:	5e050513          	addi	a0,a0,1504 # 80009428 <_ZZ13printInteger1mE6digits+0x120>
    80005e50:	fffff097          	auipc	ra,0xfffff
    80005e54:	630080e7          	jalr	1584(ra) # 80005480 <_Z11printStringPKc>
    finishedC = true;
    80005e58:	00100793          	li	a5,1
    80005e5c:	00006717          	auipc	a4,0x6
    80005e60:	aaf706a3          	sb	a5,-1363(a4) # 8000b909 <_ZL9finishedC>
    thread_dispatch();
    80005e64:	ffffb097          	auipc	ra,0xffffb
    80005e68:	4d0080e7          	jalr	1232(ra) # 80001334 <_Z15thread_dispatchv>
}
    80005e6c:	01813083          	ld	ra,24(sp)
    80005e70:	01013403          	ld	s0,16(sp)
    80005e74:	00813483          	ld	s1,8(sp)
    80005e78:	00013903          	ld	s2,0(sp)
    80005e7c:	02010113          	addi	sp,sp,32
    80005e80:	00008067          	ret

0000000080005e84 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005e84:	fe010113          	addi	sp,sp,-32
    80005e88:	00113c23          	sd	ra,24(sp)
    80005e8c:	00813823          	sd	s0,16(sp)
    80005e90:	00913423          	sd	s1,8(sp)
    80005e94:	01213023          	sd	s2,0(sp)
    80005e98:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005e9c:	00000913          	li	s2,0
    80005ea0:	0400006f          	j	80005ee0 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005ea4:	ffffb097          	auipc	ra,0xffffb
    80005ea8:	490080e7          	jalr	1168(ra) # 80001334 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005eac:	00148493          	addi	s1,s1,1
    80005eb0:	000027b7          	lui	a5,0x2
    80005eb4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005eb8:	0097ee63          	bltu	a5,s1,80005ed4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005ebc:	00000713          	li	a4,0
    80005ec0:	000077b7          	lui	a5,0x7
    80005ec4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005ec8:	fce7eee3          	bltu	a5,a4,80005ea4 <_ZL11workerBodyBPv+0x20>
    80005ecc:	00170713          	addi	a4,a4,1
    80005ed0:	ff1ff06f          	j	80005ec0 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005ed4:	00a00793          	li	a5,10
    80005ed8:	04f90663          	beq	s2,a5,80005f24 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005edc:	00190913          	addi	s2,s2,1
    80005ee0:	00f00793          	li	a5,15
    80005ee4:	0527e463          	bltu	a5,s2,80005f2c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005ee8:	00003517          	auipc	a0,0x3
    80005eec:	55050513          	addi	a0,a0,1360 # 80009438 <_ZZ13printInteger1mE6digits+0x130>
    80005ef0:	fffff097          	auipc	ra,0xfffff
    80005ef4:	590080e7          	jalr	1424(ra) # 80005480 <_Z11printStringPKc>
    80005ef8:	00000613          	li	a2,0
    80005efc:	00a00593          	li	a1,10
    80005f00:	0009051b          	sext.w	a0,s2
    80005f04:	fffff097          	auipc	ra,0xfffff
    80005f08:	72c080e7          	jalr	1836(ra) # 80005630 <_Z8printIntiii>
    80005f0c:	00003517          	auipc	a0,0x3
    80005f10:	28450513          	addi	a0,a0,644 # 80009190 <CONSOLE_STATUS+0x180>
    80005f14:	fffff097          	auipc	ra,0xfffff
    80005f18:	56c080e7          	jalr	1388(ra) # 80005480 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005f1c:	00000493          	li	s1,0
    80005f20:	f91ff06f          	j	80005eb0 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005f24:	14102ff3          	csrr	t6,sepc
    80005f28:	fb5ff06f          	j	80005edc <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005f2c:	00003517          	auipc	a0,0x3
    80005f30:	51450513          	addi	a0,a0,1300 # 80009440 <_ZZ13printInteger1mE6digits+0x138>
    80005f34:	fffff097          	auipc	ra,0xfffff
    80005f38:	54c080e7          	jalr	1356(ra) # 80005480 <_Z11printStringPKc>
    finishedB = true;
    80005f3c:	00100793          	li	a5,1
    80005f40:	00006717          	auipc	a4,0x6
    80005f44:	9cf70523          	sb	a5,-1590(a4) # 8000b90a <_ZL9finishedB>
    thread_dispatch();
    80005f48:	ffffb097          	auipc	ra,0xffffb
    80005f4c:	3ec080e7          	jalr	1004(ra) # 80001334 <_Z15thread_dispatchv>
}
    80005f50:	01813083          	ld	ra,24(sp)
    80005f54:	01013403          	ld	s0,16(sp)
    80005f58:	00813483          	ld	s1,8(sp)
    80005f5c:	00013903          	ld	s2,0(sp)
    80005f60:	02010113          	addi	sp,sp,32
    80005f64:	00008067          	ret

0000000080005f68 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005f68:	fe010113          	addi	sp,sp,-32
    80005f6c:	00113c23          	sd	ra,24(sp)
    80005f70:	00813823          	sd	s0,16(sp)
    80005f74:	00913423          	sd	s1,8(sp)
    80005f78:	01213023          	sd	s2,0(sp)
    80005f7c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005f80:	00000913          	li	s2,0
    80005f84:	0380006f          	j	80005fbc <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005f88:	ffffb097          	auipc	ra,0xffffb
    80005f8c:	3ac080e7          	jalr	940(ra) # 80001334 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005f90:	00148493          	addi	s1,s1,1
    80005f94:	000027b7          	lui	a5,0x2
    80005f98:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005f9c:	0097ee63          	bltu	a5,s1,80005fb8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005fa0:	00000713          	li	a4,0
    80005fa4:	000077b7          	lui	a5,0x7
    80005fa8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005fac:	fce7eee3          	bltu	a5,a4,80005f88 <_ZL11workerBodyAPv+0x20>
    80005fb0:	00170713          	addi	a4,a4,1
    80005fb4:	ff1ff06f          	j	80005fa4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005fb8:	00190913          	addi	s2,s2,1
    80005fbc:	00900793          	li	a5,9
    80005fc0:	0527e063          	bltu	a5,s2,80006000 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005fc4:	00003517          	auipc	a0,0x3
    80005fc8:	45c50513          	addi	a0,a0,1116 # 80009420 <_ZZ13printInteger1mE6digits+0x118>
    80005fcc:	fffff097          	auipc	ra,0xfffff
    80005fd0:	4b4080e7          	jalr	1204(ra) # 80005480 <_Z11printStringPKc>
    80005fd4:	00000613          	li	a2,0
    80005fd8:	00a00593          	li	a1,10
    80005fdc:	0009051b          	sext.w	a0,s2
    80005fe0:	fffff097          	auipc	ra,0xfffff
    80005fe4:	650080e7          	jalr	1616(ra) # 80005630 <_Z8printIntiii>
    80005fe8:	00003517          	auipc	a0,0x3
    80005fec:	1a850513          	addi	a0,a0,424 # 80009190 <CONSOLE_STATUS+0x180>
    80005ff0:	fffff097          	auipc	ra,0xfffff
    80005ff4:	490080e7          	jalr	1168(ra) # 80005480 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005ff8:	00000493          	li	s1,0
    80005ffc:	f99ff06f          	j	80005f94 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006000:	00003517          	auipc	a0,0x3
    80006004:	42850513          	addi	a0,a0,1064 # 80009428 <_ZZ13printInteger1mE6digits+0x120>
    80006008:	fffff097          	auipc	ra,0xfffff
    8000600c:	478080e7          	jalr	1144(ra) # 80005480 <_Z11printStringPKc>
    finishedA = true;
    80006010:	00100793          	li	a5,1
    80006014:	00006717          	auipc	a4,0x6
    80006018:	8ef70ba3          	sb	a5,-1801(a4) # 8000b90b <_ZL9finishedA>
}
    8000601c:	01813083          	ld	ra,24(sp)
    80006020:	01013403          	ld	s0,16(sp)
    80006024:	00813483          	ld	s1,8(sp)
    80006028:	00013903          	ld	s2,0(sp)
    8000602c:	02010113          	addi	sp,sp,32
    80006030:	00008067          	ret

0000000080006034 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006034:	fd010113          	addi	sp,sp,-48
    80006038:	02113423          	sd	ra,40(sp)
    8000603c:	02813023          	sd	s0,32(sp)
    80006040:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006044:	00000613          	li	a2,0
    80006048:	00000597          	auipc	a1,0x0
    8000604c:	f2058593          	addi	a1,a1,-224 # 80005f68 <_ZL11workerBodyAPv>
    80006050:	fd040513          	addi	a0,s0,-48
    80006054:	ffffb097          	auipc	ra,0xffffb
    80006058:	168080e7          	jalr	360(ra) # 800011bc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000605c:	00003517          	auipc	a0,0x3
    80006060:	46c50513          	addi	a0,a0,1132 # 800094c8 <_ZZ13printInteger1mE6digits+0x1c0>
    80006064:	fffff097          	auipc	ra,0xfffff
    80006068:	41c080e7          	jalr	1052(ra) # 80005480 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000606c:	00000613          	li	a2,0
    80006070:	00000597          	auipc	a1,0x0
    80006074:	e1458593          	addi	a1,a1,-492 # 80005e84 <_ZL11workerBodyBPv>
    80006078:	fd840513          	addi	a0,s0,-40
    8000607c:	ffffb097          	auipc	ra,0xffffb
    80006080:	140080e7          	jalr	320(ra) # 800011bc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006084:	00003517          	auipc	a0,0x3
    80006088:	45c50513          	addi	a0,a0,1116 # 800094e0 <_ZZ13printInteger1mE6digits+0x1d8>
    8000608c:	fffff097          	auipc	ra,0xfffff
    80006090:	3f4080e7          	jalr	1012(ra) # 80005480 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006094:	00000613          	li	a2,0
    80006098:	00000597          	auipc	a1,0x0
    8000609c:	c6c58593          	addi	a1,a1,-916 # 80005d04 <_ZL11workerBodyCPv>
    800060a0:	fe040513          	addi	a0,s0,-32
    800060a4:	ffffb097          	auipc	ra,0xffffb
    800060a8:	118080e7          	jalr	280(ra) # 800011bc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800060ac:	00003517          	auipc	a0,0x3
    800060b0:	44c50513          	addi	a0,a0,1100 # 800094f8 <_ZZ13printInteger1mE6digits+0x1f0>
    800060b4:	fffff097          	auipc	ra,0xfffff
    800060b8:	3cc080e7          	jalr	972(ra) # 80005480 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800060bc:	00000613          	li	a2,0
    800060c0:	00000597          	auipc	a1,0x0
    800060c4:	afc58593          	addi	a1,a1,-1284 # 80005bbc <_ZL11workerBodyDPv>
    800060c8:	fe840513          	addi	a0,s0,-24
    800060cc:	ffffb097          	auipc	ra,0xffffb
    800060d0:	0f0080e7          	jalr	240(ra) # 800011bc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800060d4:	00003517          	auipc	a0,0x3
    800060d8:	43c50513          	addi	a0,a0,1084 # 80009510 <_ZZ13printInteger1mE6digits+0x208>
    800060dc:	fffff097          	auipc	ra,0xfffff
    800060e0:	3a4080e7          	jalr	932(ra) # 80005480 <_Z11printStringPKc>
    800060e4:	00c0006f          	j	800060f0 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800060e8:	ffffb097          	auipc	ra,0xffffb
    800060ec:	24c080e7          	jalr	588(ra) # 80001334 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800060f0:	00006797          	auipc	a5,0x6
    800060f4:	81b7c783          	lbu	a5,-2021(a5) # 8000b90b <_ZL9finishedA>
    800060f8:	fe0788e3          	beqz	a5,800060e8 <_Z16System_Mode_testv+0xb4>
    800060fc:	00006797          	auipc	a5,0x6
    80006100:	80e7c783          	lbu	a5,-2034(a5) # 8000b90a <_ZL9finishedB>
    80006104:	fe0782e3          	beqz	a5,800060e8 <_Z16System_Mode_testv+0xb4>
    80006108:	00006797          	auipc	a5,0x6
    8000610c:	8017c783          	lbu	a5,-2047(a5) # 8000b909 <_ZL9finishedC>
    80006110:	fc078ce3          	beqz	a5,800060e8 <_Z16System_Mode_testv+0xb4>
    80006114:	00005797          	auipc	a5,0x5
    80006118:	7f47c783          	lbu	a5,2036(a5) # 8000b908 <_ZL9finishedD>
    8000611c:	fc0786e3          	beqz	a5,800060e8 <_Z16System_Mode_testv+0xb4>
    }

}
    80006120:	02813083          	ld	ra,40(sp)
    80006124:	02013403          	ld	s0,32(sp)
    80006128:	03010113          	addi	sp,sp,48
    8000612c:	00008067          	ret

0000000080006130 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006130:	fe010113          	addi	sp,sp,-32
    80006134:	00113c23          	sd	ra,24(sp)
    80006138:	00813823          	sd	s0,16(sp)
    8000613c:	00913423          	sd	s1,8(sp)
    80006140:	01213023          	sd	s2,0(sp)
    80006144:	02010413          	addi	s0,sp,32
    80006148:	00050493          	mv	s1,a0
    8000614c:	00058913          	mv	s2,a1
    80006150:	0015879b          	addiw	a5,a1,1
    80006154:	0007851b          	sext.w	a0,a5
    80006158:	00f4a023          	sw	a5,0(s1)
    8000615c:	0004a823          	sw	zero,16(s1)
    80006160:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006164:	00251513          	slli	a0,a0,0x2
    80006168:	ffffb097          	auipc	ra,0xffffb
    8000616c:	fdc080e7          	jalr	-36(ra) # 80001144 <_Z9mem_allocm>
    80006170:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006174:	00000593          	li	a1,0
    80006178:	02048513          	addi	a0,s1,32
    8000617c:	ffffb097          	auipc	ra,0xffffb
    80006180:	2fc080e7          	jalr	764(ra) # 80001478 <_Z8sem_openPP3semj>
    sem_open(&spaceAvailable, _cap);
    80006184:	00090593          	mv	a1,s2
    80006188:	01848513          	addi	a0,s1,24
    8000618c:	ffffb097          	auipc	ra,0xffffb
    80006190:	2ec080e7          	jalr	748(ra) # 80001478 <_Z8sem_openPP3semj>
    sem_open(&mutexHead, 1);
    80006194:	00100593          	li	a1,1
    80006198:	02848513          	addi	a0,s1,40
    8000619c:	ffffb097          	auipc	ra,0xffffb
    800061a0:	2dc080e7          	jalr	732(ra) # 80001478 <_Z8sem_openPP3semj>
    sem_open(&mutexTail, 1);
    800061a4:	00100593          	li	a1,1
    800061a8:	03048513          	addi	a0,s1,48
    800061ac:	ffffb097          	auipc	ra,0xffffb
    800061b0:	2cc080e7          	jalr	716(ra) # 80001478 <_Z8sem_openPP3semj>
}
    800061b4:	01813083          	ld	ra,24(sp)
    800061b8:	01013403          	ld	s0,16(sp)
    800061bc:	00813483          	ld	s1,8(sp)
    800061c0:	00013903          	ld	s2,0(sp)
    800061c4:	02010113          	addi	sp,sp,32
    800061c8:	00008067          	ret

00000000800061cc <_ZN6Buffer3putEi>:
    sem_close(mutexTail);
    sem_close(mutexHead);

}

void Buffer::put(int val) {
    800061cc:	fe010113          	addi	sp,sp,-32
    800061d0:	00113c23          	sd	ra,24(sp)
    800061d4:	00813823          	sd	s0,16(sp)
    800061d8:	00913423          	sd	s1,8(sp)
    800061dc:	01213023          	sd	s2,0(sp)
    800061e0:	02010413          	addi	s0,sp,32
    800061e4:	00050493          	mv	s1,a0
    800061e8:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800061ec:	01853503          	ld	a0,24(a0)
    800061f0:	ffffb097          	auipc	ra,0xffffb
    800061f4:	2ec080e7          	jalr	748(ra) # 800014dc <_Z8sem_waitP3sem>

    sem_wait(mutexTail);
    800061f8:	0304b503          	ld	a0,48(s1)
    800061fc:	ffffb097          	auipc	ra,0xffffb
    80006200:	2e0080e7          	jalr	736(ra) # 800014dc <_Z8sem_waitP3sem>
    buffer[tail] = val;
    80006204:	0084b783          	ld	a5,8(s1)
    80006208:	0144a703          	lw	a4,20(s1)
    8000620c:	00271713          	slli	a4,a4,0x2
    80006210:	00e787b3          	add	a5,a5,a4
    80006214:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006218:	0144a783          	lw	a5,20(s1)
    8000621c:	0017879b          	addiw	a5,a5,1
    80006220:	0004a703          	lw	a4,0(s1)
    80006224:	02e7e7bb          	remw	a5,a5,a4
    80006228:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000622c:	0304b503          	ld	a0,48(s1)
    80006230:	ffffb097          	auipc	ra,0xffffb
    80006234:	2dc080e7          	jalr	732(ra) # 8000150c <_Z10sem_signalP3sem>

    sem_signal(itemAvailable);
    80006238:	0204b503          	ld	a0,32(s1)
    8000623c:	ffffb097          	auipc	ra,0xffffb
    80006240:	2d0080e7          	jalr	720(ra) # 8000150c <_Z10sem_signalP3sem>

}
    80006244:	01813083          	ld	ra,24(sp)
    80006248:	01013403          	ld	s0,16(sp)
    8000624c:	00813483          	ld	s1,8(sp)
    80006250:	00013903          	ld	s2,0(sp)
    80006254:	02010113          	addi	sp,sp,32
    80006258:	00008067          	ret

000000008000625c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000625c:	fe010113          	addi	sp,sp,-32
    80006260:	00113c23          	sd	ra,24(sp)
    80006264:	00813823          	sd	s0,16(sp)
    80006268:	00913423          	sd	s1,8(sp)
    8000626c:	01213023          	sd	s2,0(sp)
    80006270:	02010413          	addi	s0,sp,32
    80006274:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006278:	02053503          	ld	a0,32(a0)
    8000627c:	ffffb097          	auipc	ra,0xffffb
    80006280:	260080e7          	jalr	608(ra) # 800014dc <_Z8sem_waitP3sem>

    sem_wait(mutexHead);
    80006284:	0284b503          	ld	a0,40(s1)
    80006288:	ffffb097          	auipc	ra,0xffffb
    8000628c:	254080e7          	jalr	596(ra) # 800014dc <_Z8sem_waitP3sem>

    int ret = buffer[head];
    80006290:	0084b703          	ld	a4,8(s1)
    80006294:	0104a783          	lw	a5,16(s1)
    80006298:	00279693          	slli	a3,a5,0x2
    8000629c:	00d70733          	add	a4,a4,a3
    800062a0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800062a4:	0017879b          	addiw	a5,a5,1
    800062a8:	0004a703          	lw	a4,0(s1)
    800062ac:	02e7e7bb          	remw	a5,a5,a4
    800062b0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800062b4:	0284b503          	ld	a0,40(s1)
    800062b8:	ffffb097          	auipc	ra,0xffffb
    800062bc:	254080e7          	jalr	596(ra) # 8000150c <_Z10sem_signalP3sem>

    sem_signal(spaceAvailable);
    800062c0:	0184b503          	ld	a0,24(s1)
    800062c4:	ffffb097          	auipc	ra,0xffffb
    800062c8:	248080e7          	jalr	584(ra) # 8000150c <_Z10sem_signalP3sem>

    return ret;
}
    800062cc:	00090513          	mv	a0,s2
    800062d0:	01813083          	ld	ra,24(sp)
    800062d4:	01013403          	ld	s0,16(sp)
    800062d8:	00813483          	ld	s1,8(sp)
    800062dc:	00013903          	ld	s2,0(sp)
    800062e0:	02010113          	addi	sp,sp,32
    800062e4:	00008067          	ret

00000000800062e8 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800062e8:	fe010113          	addi	sp,sp,-32
    800062ec:	00113c23          	sd	ra,24(sp)
    800062f0:	00813823          	sd	s0,16(sp)
    800062f4:	00913423          	sd	s1,8(sp)
    800062f8:	01213023          	sd	s2,0(sp)
    800062fc:	02010413          	addi	s0,sp,32
    80006300:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006304:	02853503          	ld	a0,40(a0)
    80006308:	ffffb097          	auipc	ra,0xffffb
    8000630c:	1d4080e7          	jalr	468(ra) # 800014dc <_Z8sem_waitP3sem>
    sem_wait(mutexTail);
    80006310:	0304b503          	ld	a0,48(s1)
    80006314:	ffffb097          	auipc	ra,0xffffb
    80006318:	1c8080e7          	jalr	456(ra) # 800014dc <_Z8sem_waitP3sem>

    if (tail >= head) {
    8000631c:	0144a783          	lw	a5,20(s1)
    80006320:	0104a903          	lw	s2,16(s1)
    80006324:	0327ce63          	blt	a5,s2,80006360 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006328:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000632c:	0304b503          	ld	a0,48(s1)
    80006330:	ffffb097          	auipc	ra,0xffffb
    80006334:	1dc080e7          	jalr	476(ra) # 8000150c <_Z10sem_signalP3sem>
    sem_signal(mutexHead);
    80006338:	0284b503          	ld	a0,40(s1)
    8000633c:	ffffb097          	auipc	ra,0xffffb
    80006340:	1d0080e7          	jalr	464(ra) # 8000150c <_Z10sem_signalP3sem>

    return ret;
}
    80006344:	00090513          	mv	a0,s2
    80006348:	01813083          	ld	ra,24(sp)
    8000634c:	01013403          	ld	s0,16(sp)
    80006350:	00813483          	ld	s1,8(sp)
    80006354:	00013903          	ld	s2,0(sp)
    80006358:	02010113          	addi	sp,sp,32
    8000635c:	00008067          	ret
        ret = cap - head + tail;
    80006360:	0004a703          	lw	a4,0(s1)
    80006364:	4127093b          	subw	s2,a4,s2
    80006368:	00f9093b          	addw	s2,s2,a5
    8000636c:	fc1ff06f          	j	8000632c <_ZN6Buffer6getCntEv+0x44>

0000000080006370 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006370:	fe010113          	addi	sp,sp,-32
    80006374:	00113c23          	sd	ra,24(sp)
    80006378:	00813823          	sd	s0,16(sp)
    8000637c:	00913423          	sd	s1,8(sp)
    80006380:	02010413          	addi	s0,sp,32
    80006384:	00050493          	mv	s1,a0
    putc('\n');
    80006388:	00a00513          	li	a0,10
    8000638c:	ffffb097          	auipc	ra,0xffffb
    80006390:	20c080e7          	jalr	524(ra) # 80001598 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006394:	00003517          	auipc	a0,0x3
    80006398:	1d450513          	addi	a0,a0,468 # 80009568 <_ZZ13printInteger1mE6digits+0x260>
    8000639c:	fffff097          	auipc	ra,0xfffff
    800063a0:	0e4080e7          	jalr	228(ra) # 80005480 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800063a4:	00048513          	mv	a0,s1
    800063a8:	00000097          	auipc	ra,0x0
    800063ac:	f40080e7          	jalr	-192(ra) # 800062e8 <_ZN6Buffer6getCntEv>
    800063b0:	02a05c63          	blez	a0,800063e8 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800063b4:	0084b783          	ld	a5,8(s1)
    800063b8:	0104a703          	lw	a4,16(s1)
    800063bc:	00271713          	slli	a4,a4,0x2
    800063c0:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800063c4:	0007c503          	lbu	a0,0(a5)
    800063c8:	ffffb097          	auipc	ra,0xffffb
    800063cc:	1d0080e7          	jalr	464(ra) # 80001598 <_Z4putcc>
        head = (head + 1) % cap;
    800063d0:	0104a783          	lw	a5,16(s1)
    800063d4:	0017879b          	addiw	a5,a5,1
    800063d8:	0004a703          	lw	a4,0(s1)
    800063dc:	02e7e7bb          	remw	a5,a5,a4
    800063e0:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800063e4:	fc1ff06f          	j	800063a4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800063e8:	02100513          	li	a0,33
    800063ec:	ffffb097          	auipc	ra,0xffffb
    800063f0:	1ac080e7          	jalr	428(ra) # 80001598 <_Z4putcc>
    putc('\n');
    800063f4:	00a00513          	li	a0,10
    800063f8:	ffffb097          	auipc	ra,0xffffb
    800063fc:	1a0080e7          	jalr	416(ra) # 80001598 <_Z4putcc>
    mem_free(buffer);
    80006400:	0084b503          	ld	a0,8(s1)
    80006404:	ffffb097          	auipc	ra,0xffffb
    80006408:	d88080e7          	jalr	-632(ra) # 8000118c <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000640c:	0204b503          	ld	a0,32(s1)
    80006410:	ffffb097          	auipc	ra,0xffffb
    80006414:	09c080e7          	jalr	156(ra) # 800014ac <_Z9sem_closeP3sem>
    sem_close(spaceAvailable);
    80006418:	0184b503          	ld	a0,24(s1)
    8000641c:	ffffb097          	auipc	ra,0xffffb
    80006420:	090080e7          	jalr	144(ra) # 800014ac <_Z9sem_closeP3sem>
    sem_close(mutexTail);
    80006424:	0304b503          	ld	a0,48(s1)
    80006428:	ffffb097          	auipc	ra,0xffffb
    8000642c:	084080e7          	jalr	132(ra) # 800014ac <_Z9sem_closeP3sem>
    sem_close(mutexHead);
    80006430:	0284b503          	ld	a0,40(s1)
    80006434:	ffffb097          	auipc	ra,0xffffb
    80006438:	078080e7          	jalr	120(ra) # 800014ac <_Z9sem_closeP3sem>
}
    8000643c:	01813083          	ld	ra,24(sp)
    80006440:	01013403          	ld	s0,16(sp)
    80006444:	00813483          	ld	s1,8(sp)
    80006448:	02010113          	addi	sp,sp,32
    8000644c:	00008067          	ret

0000000080006450 <start>:
    80006450:	ff010113          	addi	sp,sp,-16
    80006454:	00813423          	sd	s0,8(sp)
    80006458:	01010413          	addi	s0,sp,16
    8000645c:	300027f3          	csrr	a5,mstatus
    80006460:	ffffe737          	lui	a4,0xffffe
    80006464:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1c8f>
    80006468:	00e7f7b3          	and	a5,a5,a4
    8000646c:	00001737          	lui	a4,0x1
    80006470:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006474:	00e7e7b3          	or	a5,a5,a4
    80006478:	30079073          	csrw	mstatus,a5
    8000647c:	00000797          	auipc	a5,0x0
    80006480:	16078793          	addi	a5,a5,352 # 800065dc <system_main>
    80006484:	34179073          	csrw	mepc,a5
    80006488:	00000793          	li	a5,0
    8000648c:	18079073          	csrw	satp,a5
    80006490:	000107b7          	lui	a5,0x10
    80006494:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006498:	30279073          	csrw	medeleg,a5
    8000649c:	30379073          	csrw	mideleg,a5
    800064a0:	104027f3          	csrr	a5,sie
    800064a4:	2227e793          	ori	a5,a5,546
    800064a8:	10479073          	csrw	sie,a5
    800064ac:	fff00793          	li	a5,-1
    800064b0:	00a7d793          	srli	a5,a5,0xa
    800064b4:	3b079073          	csrw	pmpaddr0,a5
    800064b8:	00f00793          	li	a5,15
    800064bc:	3a079073          	csrw	pmpcfg0,a5
    800064c0:	f14027f3          	csrr	a5,mhartid
    800064c4:	0200c737          	lui	a4,0x200c
    800064c8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800064cc:	0007869b          	sext.w	a3,a5
    800064d0:	00269713          	slli	a4,a3,0x2
    800064d4:	000f4637          	lui	a2,0xf4
    800064d8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800064dc:	00d70733          	add	a4,a4,a3
    800064e0:	0037979b          	slliw	a5,a5,0x3
    800064e4:	020046b7          	lui	a3,0x2004
    800064e8:	00d787b3          	add	a5,a5,a3
    800064ec:	00c585b3          	add	a1,a1,a2
    800064f0:	00371693          	slli	a3,a4,0x3
    800064f4:	00005717          	auipc	a4,0x5
    800064f8:	41c70713          	addi	a4,a4,1052 # 8000b910 <timer_scratch>
    800064fc:	00b7b023          	sd	a1,0(a5)
    80006500:	00d70733          	add	a4,a4,a3
    80006504:	00f73c23          	sd	a5,24(a4)
    80006508:	02c73023          	sd	a2,32(a4)
    8000650c:	34071073          	csrw	mscratch,a4
    80006510:	00000797          	auipc	a5,0x0
    80006514:	6e078793          	addi	a5,a5,1760 # 80006bf0 <timervec>
    80006518:	30579073          	csrw	mtvec,a5
    8000651c:	300027f3          	csrr	a5,mstatus
    80006520:	0087e793          	ori	a5,a5,8
    80006524:	30079073          	csrw	mstatus,a5
    80006528:	304027f3          	csrr	a5,mie
    8000652c:	0807e793          	ori	a5,a5,128
    80006530:	30479073          	csrw	mie,a5
    80006534:	f14027f3          	csrr	a5,mhartid
    80006538:	0007879b          	sext.w	a5,a5
    8000653c:	00078213          	mv	tp,a5
    80006540:	30200073          	mret
    80006544:	00813403          	ld	s0,8(sp)
    80006548:	01010113          	addi	sp,sp,16
    8000654c:	00008067          	ret

0000000080006550 <timerinit>:
    80006550:	ff010113          	addi	sp,sp,-16
    80006554:	00813423          	sd	s0,8(sp)
    80006558:	01010413          	addi	s0,sp,16
    8000655c:	f14027f3          	csrr	a5,mhartid
    80006560:	0200c737          	lui	a4,0x200c
    80006564:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006568:	0007869b          	sext.w	a3,a5
    8000656c:	00269713          	slli	a4,a3,0x2
    80006570:	000f4637          	lui	a2,0xf4
    80006574:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006578:	00d70733          	add	a4,a4,a3
    8000657c:	0037979b          	slliw	a5,a5,0x3
    80006580:	020046b7          	lui	a3,0x2004
    80006584:	00d787b3          	add	a5,a5,a3
    80006588:	00c585b3          	add	a1,a1,a2
    8000658c:	00371693          	slli	a3,a4,0x3
    80006590:	00005717          	auipc	a4,0x5
    80006594:	38070713          	addi	a4,a4,896 # 8000b910 <timer_scratch>
    80006598:	00b7b023          	sd	a1,0(a5)
    8000659c:	00d70733          	add	a4,a4,a3
    800065a0:	00f73c23          	sd	a5,24(a4)
    800065a4:	02c73023          	sd	a2,32(a4)
    800065a8:	34071073          	csrw	mscratch,a4
    800065ac:	00000797          	auipc	a5,0x0
    800065b0:	64478793          	addi	a5,a5,1604 # 80006bf0 <timervec>
    800065b4:	30579073          	csrw	mtvec,a5
    800065b8:	300027f3          	csrr	a5,mstatus
    800065bc:	0087e793          	ori	a5,a5,8
    800065c0:	30079073          	csrw	mstatus,a5
    800065c4:	304027f3          	csrr	a5,mie
    800065c8:	0807e793          	ori	a5,a5,128
    800065cc:	30479073          	csrw	mie,a5
    800065d0:	00813403          	ld	s0,8(sp)
    800065d4:	01010113          	addi	sp,sp,16
    800065d8:	00008067          	ret

00000000800065dc <system_main>:
    800065dc:	fe010113          	addi	sp,sp,-32
    800065e0:	00813823          	sd	s0,16(sp)
    800065e4:	00913423          	sd	s1,8(sp)
    800065e8:	00113c23          	sd	ra,24(sp)
    800065ec:	02010413          	addi	s0,sp,32
    800065f0:	00000097          	auipc	ra,0x0
    800065f4:	0c4080e7          	jalr	196(ra) # 800066b4 <cpuid>
    800065f8:	00005497          	auipc	s1,0x5
    800065fc:	23848493          	addi	s1,s1,568 # 8000b830 <started>
    80006600:	02050263          	beqz	a0,80006624 <system_main+0x48>
    80006604:	0004a783          	lw	a5,0(s1)
    80006608:	0007879b          	sext.w	a5,a5
    8000660c:	fe078ce3          	beqz	a5,80006604 <system_main+0x28>
    80006610:	0ff0000f          	fence
    80006614:	00003517          	auipc	a0,0x3
    80006618:	f9c50513          	addi	a0,a0,-100 # 800095b0 <_ZZ13printInteger1mE6digits+0x2a8>
    8000661c:	00001097          	auipc	ra,0x1
    80006620:	a70080e7          	jalr	-1424(ra) # 8000708c <panic>
    80006624:	00001097          	auipc	ra,0x1
    80006628:	9c4080e7          	jalr	-1596(ra) # 80006fe8 <consoleinit>
    8000662c:	00001097          	auipc	ra,0x1
    80006630:	150080e7          	jalr	336(ra) # 8000777c <printfinit>
    80006634:	00003517          	auipc	a0,0x3
    80006638:	b5c50513          	addi	a0,a0,-1188 # 80009190 <CONSOLE_STATUS+0x180>
    8000663c:	00001097          	auipc	ra,0x1
    80006640:	aac080e7          	jalr	-1364(ra) # 800070e8 <__printf>
    80006644:	00003517          	auipc	a0,0x3
    80006648:	f3c50513          	addi	a0,a0,-196 # 80009580 <_ZZ13printInteger1mE6digits+0x278>
    8000664c:	00001097          	auipc	ra,0x1
    80006650:	a9c080e7          	jalr	-1380(ra) # 800070e8 <__printf>
    80006654:	00003517          	auipc	a0,0x3
    80006658:	b3c50513          	addi	a0,a0,-1220 # 80009190 <CONSOLE_STATUS+0x180>
    8000665c:	00001097          	auipc	ra,0x1
    80006660:	a8c080e7          	jalr	-1396(ra) # 800070e8 <__printf>
    80006664:	00001097          	auipc	ra,0x1
    80006668:	4a4080e7          	jalr	1188(ra) # 80007b08 <kinit>
    8000666c:	00000097          	auipc	ra,0x0
    80006670:	148080e7          	jalr	328(ra) # 800067b4 <trapinit>
    80006674:	00000097          	auipc	ra,0x0
    80006678:	16c080e7          	jalr	364(ra) # 800067e0 <trapinithart>
    8000667c:	00000097          	auipc	ra,0x0
    80006680:	5b4080e7          	jalr	1460(ra) # 80006c30 <plicinit>
    80006684:	00000097          	auipc	ra,0x0
    80006688:	5d4080e7          	jalr	1492(ra) # 80006c58 <plicinithart>
    8000668c:	00000097          	auipc	ra,0x0
    80006690:	078080e7          	jalr	120(ra) # 80006704 <userinit>
    80006694:	0ff0000f          	fence
    80006698:	00100793          	li	a5,1
    8000669c:	00003517          	auipc	a0,0x3
    800066a0:	efc50513          	addi	a0,a0,-260 # 80009598 <_ZZ13printInteger1mE6digits+0x290>
    800066a4:	00f4a023          	sw	a5,0(s1)
    800066a8:	00001097          	auipc	ra,0x1
    800066ac:	a40080e7          	jalr	-1472(ra) # 800070e8 <__printf>
    800066b0:	0000006f          	j	800066b0 <system_main+0xd4>

00000000800066b4 <cpuid>:
    800066b4:	ff010113          	addi	sp,sp,-16
    800066b8:	00813423          	sd	s0,8(sp)
    800066bc:	01010413          	addi	s0,sp,16
    800066c0:	00020513          	mv	a0,tp
    800066c4:	00813403          	ld	s0,8(sp)
    800066c8:	0005051b          	sext.w	a0,a0
    800066cc:	01010113          	addi	sp,sp,16
    800066d0:	00008067          	ret

00000000800066d4 <mycpu>:
    800066d4:	ff010113          	addi	sp,sp,-16
    800066d8:	00813423          	sd	s0,8(sp)
    800066dc:	01010413          	addi	s0,sp,16
    800066e0:	00020793          	mv	a5,tp
    800066e4:	00813403          	ld	s0,8(sp)
    800066e8:	0007879b          	sext.w	a5,a5
    800066ec:	00779793          	slli	a5,a5,0x7
    800066f0:	00006517          	auipc	a0,0x6
    800066f4:	25050513          	addi	a0,a0,592 # 8000c940 <cpus>
    800066f8:	00f50533          	add	a0,a0,a5
    800066fc:	01010113          	addi	sp,sp,16
    80006700:	00008067          	ret

0000000080006704 <userinit>:
    80006704:	ff010113          	addi	sp,sp,-16
    80006708:	00813423          	sd	s0,8(sp)
    8000670c:	01010413          	addi	s0,sp,16
    80006710:	00813403          	ld	s0,8(sp)
    80006714:	01010113          	addi	sp,sp,16
    80006718:	ffffc317          	auipc	t1,0xffffc
    8000671c:	4c830067          	jr	1224(t1) # 80002be0 <main>

0000000080006720 <either_copyout>:
    80006720:	ff010113          	addi	sp,sp,-16
    80006724:	00813023          	sd	s0,0(sp)
    80006728:	00113423          	sd	ra,8(sp)
    8000672c:	01010413          	addi	s0,sp,16
    80006730:	02051663          	bnez	a0,8000675c <either_copyout+0x3c>
    80006734:	00058513          	mv	a0,a1
    80006738:	00060593          	mv	a1,a2
    8000673c:	0006861b          	sext.w	a2,a3
    80006740:	00002097          	auipc	ra,0x2
    80006744:	c54080e7          	jalr	-940(ra) # 80008394 <__memmove>
    80006748:	00813083          	ld	ra,8(sp)
    8000674c:	00013403          	ld	s0,0(sp)
    80006750:	00000513          	li	a0,0
    80006754:	01010113          	addi	sp,sp,16
    80006758:	00008067          	ret
    8000675c:	00003517          	auipc	a0,0x3
    80006760:	e7c50513          	addi	a0,a0,-388 # 800095d8 <_ZZ13printInteger1mE6digits+0x2d0>
    80006764:	00001097          	auipc	ra,0x1
    80006768:	928080e7          	jalr	-1752(ra) # 8000708c <panic>

000000008000676c <either_copyin>:
    8000676c:	ff010113          	addi	sp,sp,-16
    80006770:	00813023          	sd	s0,0(sp)
    80006774:	00113423          	sd	ra,8(sp)
    80006778:	01010413          	addi	s0,sp,16
    8000677c:	02059463          	bnez	a1,800067a4 <either_copyin+0x38>
    80006780:	00060593          	mv	a1,a2
    80006784:	0006861b          	sext.w	a2,a3
    80006788:	00002097          	auipc	ra,0x2
    8000678c:	c0c080e7          	jalr	-1012(ra) # 80008394 <__memmove>
    80006790:	00813083          	ld	ra,8(sp)
    80006794:	00013403          	ld	s0,0(sp)
    80006798:	00000513          	li	a0,0
    8000679c:	01010113          	addi	sp,sp,16
    800067a0:	00008067          	ret
    800067a4:	00003517          	auipc	a0,0x3
    800067a8:	e5c50513          	addi	a0,a0,-420 # 80009600 <_ZZ13printInteger1mE6digits+0x2f8>
    800067ac:	00001097          	auipc	ra,0x1
    800067b0:	8e0080e7          	jalr	-1824(ra) # 8000708c <panic>

00000000800067b4 <trapinit>:
    800067b4:	ff010113          	addi	sp,sp,-16
    800067b8:	00813423          	sd	s0,8(sp)
    800067bc:	01010413          	addi	s0,sp,16
    800067c0:	00813403          	ld	s0,8(sp)
    800067c4:	00003597          	auipc	a1,0x3
    800067c8:	e6458593          	addi	a1,a1,-412 # 80009628 <_ZZ13printInteger1mE6digits+0x320>
    800067cc:	00006517          	auipc	a0,0x6
    800067d0:	1f450513          	addi	a0,a0,500 # 8000c9c0 <tickslock>
    800067d4:	01010113          	addi	sp,sp,16
    800067d8:	00001317          	auipc	t1,0x1
    800067dc:	5c030067          	jr	1472(t1) # 80007d98 <initlock>

00000000800067e0 <trapinithart>:
    800067e0:	ff010113          	addi	sp,sp,-16
    800067e4:	00813423          	sd	s0,8(sp)
    800067e8:	01010413          	addi	s0,sp,16
    800067ec:	00000797          	auipc	a5,0x0
    800067f0:	2f478793          	addi	a5,a5,756 # 80006ae0 <kernelvec>
    800067f4:	10579073          	csrw	stvec,a5
    800067f8:	00813403          	ld	s0,8(sp)
    800067fc:	01010113          	addi	sp,sp,16
    80006800:	00008067          	ret

0000000080006804 <usertrap>:
    80006804:	ff010113          	addi	sp,sp,-16
    80006808:	00813423          	sd	s0,8(sp)
    8000680c:	01010413          	addi	s0,sp,16
    80006810:	00813403          	ld	s0,8(sp)
    80006814:	01010113          	addi	sp,sp,16
    80006818:	00008067          	ret

000000008000681c <usertrapret>:
    8000681c:	ff010113          	addi	sp,sp,-16
    80006820:	00813423          	sd	s0,8(sp)
    80006824:	01010413          	addi	s0,sp,16
    80006828:	00813403          	ld	s0,8(sp)
    8000682c:	01010113          	addi	sp,sp,16
    80006830:	00008067          	ret

0000000080006834 <kerneltrap>:
    80006834:	fe010113          	addi	sp,sp,-32
    80006838:	00813823          	sd	s0,16(sp)
    8000683c:	00113c23          	sd	ra,24(sp)
    80006840:	00913423          	sd	s1,8(sp)
    80006844:	02010413          	addi	s0,sp,32
    80006848:	142025f3          	csrr	a1,scause
    8000684c:	100027f3          	csrr	a5,sstatus
    80006850:	0027f793          	andi	a5,a5,2
    80006854:	10079c63          	bnez	a5,8000696c <kerneltrap+0x138>
    80006858:	142027f3          	csrr	a5,scause
    8000685c:	0207ce63          	bltz	a5,80006898 <kerneltrap+0x64>
    80006860:	00003517          	auipc	a0,0x3
    80006864:	e1050513          	addi	a0,a0,-496 # 80009670 <_ZZ13printInteger1mE6digits+0x368>
    80006868:	00001097          	auipc	ra,0x1
    8000686c:	880080e7          	jalr	-1920(ra) # 800070e8 <__printf>
    80006870:	141025f3          	csrr	a1,sepc
    80006874:	14302673          	csrr	a2,stval
    80006878:	00003517          	auipc	a0,0x3
    8000687c:	e0850513          	addi	a0,a0,-504 # 80009680 <_ZZ13printInteger1mE6digits+0x378>
    80006880:	00001097          	auipc	ra,0x1
    80006884:	868080e7          	jalr	-1944(ra) # 800070e8 <__printf>
    80006888:	00003517          	auipc	a0,0x3
    8000688c:	e1050513          	addi	a0,a0,-496 # 80009698 <_ZZ13printInteger1mE6digits+0x390>
    80006890:	00000097          	auipc	ra,0x0
    80006894:	7fc080e7          	jalr	2044(ra) # 8000708c <panic>
    80006898:	0ff7f713          	andi	a4,a5,255
    8000689c:	00900693          	li	a3,9
    800068a0:	04d70063          	beq	a4,a3,800068e0 <kerneltrap+0xac>
    800068a4:	fff00713          	li	a4,-1
    800068a8:	03f71713          	slli	a4,a4,0x3f
    800068ac:	00170713          	addi	a4,a4,1
    800068b0:	fae798e3          	bne	a5,a4,80006860 <kerneltrap+0x2c>
    800068b4:	00000097          	auipc	ra,0x0
    800068b8:	e00080e7          	jalr	-512(ra) # 800066b4 <cpuid>
    800068bc:	06050663          	beqz	a0,80006928 <kerneltrap+0xf4>
    800068c0:	144027f3          	csrr	a5,sip
    800068c4:	ffd7f793          	andi	a5,a5,-3
    800068c8:	14479073          	csrw	sip,a5
    800068cc:	01813083          	ld	ra,24(sp)
    800068d0:	01013403          	ld	s0,16(sp)
    800068d4:	00813483          	ld	s1,8(sp)
    800068d8:	02010113          	addi	sp,sp,32
    800068dc:	00008067          	ret
    800068e0:	00000097          	auipc	ra,0x0
    800068e4:	3c4080e7          	jalr	964(ra) # 80006ca4 <plic_claim>
    800068e8:	00a00793          	li	a5,10
    800068ec:	00050493          	mv	s1,a0
    800068f0:	06f50863          	beq	a0,a5,80006960 <kerneltrap+0x12c>
    800068f4:	fc050ce3          	beqz	a0,800068cc <kerneltrap+0x98>
    800068f8:	00050593          	mv	a1,a0
    800068fc:	00003517          	auipc	a0,0x3
    80006900:	d5450513          	addi	a0,a0,-684 # 80009650 <_ZZ13printInteger1mE6digits+0x348>
    80006904:	00000097          	auipc	ra,0x0
    80006908:	7e4080e7          	jalr	2020(ra) # 800070e8 <__printf>
    8000690c:	01013403          	ld	s0,16(sp)
    80006910:	01813083          	ld	ra,24(sp)
    80006914:	00048513          	mv	a0,s1
    80006918:	00813483          	ld	s1,8(sp)
    8000691c:	02010113          	addi	sp,sp,32
    80006920:	00000317          	auipc	t1,0x0
    80006924:	3bc30067          	jr	956(t1) # 80006cdc <plic_complete>
    80006928:	00006517          	auipc	a0,0x6
    8000692c:	09850513          	addi	a0,a0,152 # 8000c9c0 <tickslock>
    80006930:	00001097          	auipc	ra,0x1
    80006934:	48c080e7          	jalr	1164(ra) # 80007dbc <acquire>
    80006938:	00005717          	auipc	a4,0x5
    8000693c:	efc70713          	addi	a4,a4,-260 # 8000b834 <ticks>
    80006940:	00072783          	lw	a5,0(a4)
    80006944:	00006517          	auipc	a0,0x6
    80006948:	07c50513          	addi	a0,a0,124 # 8000c9c0 <tickslock>
    8000694c:	0017879b          	addiw	a5,a5,1
    80006950:	00f72023          	sw	a5,0(a4)
    80006954:	00001097          	auipc	ra,0x1
    80006958:	534080e7          	jalr	1332(ra) # 80007e88 <release>
    8000695c:	f65ff06f          	j	800068c0 <kerneltrap+0x8c>
    80006960:	00001097          	auipc	ra,0x1
    80006964:	090080e7          	jalr	144(ra) # 800079f0 <uartintr>
    80006968:	fa5ff06f          	j	8000690c <kerneltrap+0xd8>
    8000696c:	00003517          	auipc	a0,0x3
    80006970:	cc450513          	addi	a0,a0,-828 # 80009630 <_ZZ13printInteger1mE6digits+0x328>
    80006974:	00000097          	auipc	ra,0x0
    80006978:	718080e7          	jalr	1816(ra) # 8000708c <panic>

000000008000697c <clockintr>:
    8000697c:	fe010113          	addi	sp,sp,-32
    80006980:	00813823          	sd	s0,16(sp)
    80006984:	00913423          	sd	s1,8(sp)
    80006988:	00113c23          	sd	ra,24(sp)
    8000698c:	02010413          	addi	s0,sp,32
    80006990:	00006497          	auipc	s1,0x6
    80006994:	03048493          	addi	s1,s1,48 # 8000c9c0 <tickslock>
    80006998:	00048513          	mv	a0,s1
    8000699c:	00001097          	auipc	ra,0x1
    800069a0:	420080e7          	jalr	1056(ra) # 80007dbc <acquire>
    800069a4:	00005717          	auipc	a4,0x5
    800069a8:	e9070713          	addi	a4,a4,-368 # 8000b834 <ticks>
    800069ac:	00072783          	lw	a5,0(a4)
    800069b0:	01013403          	ld	s0,16(sp)
    800069b4:	01813083          	ld	ra,24(sp)
    800069b8:	00048513          	mv	a0,s1
    800069bc:	0017879b          	addiw	a5,a5,1
    800069c0:	00813483          	ld	s1,8(sp)
    800069c4:	00f72023          	sw	a5,0(a4)
    800069c8:	02010113          	addi	sp,sp,32
    800069cc:	00001317          	auipc	t1,0x1
    800069d0:	4bc30067          	jr	1212(t1) # 80007e88 <release>

00000000800069d4 <devintr>:
    800069d4:	142027f3          	csrr	a5,scause
    800069d8:	00000513          	li	a0,0
    800069dc:	0007c463          	bltz	a5,800069e4 <devintr+0x10>
    800069e0:	00008067          	ret
    800069e4:	fe010113          	addi	sp,sp,-32
    800069e8:	00813823          	sd	s0,16(sp)
    800069ec:	00113c23          	sd	ra,24(sp)
    800069f0:	00913423          	sd	s1,8(sp)
    800069f4:	02010413          	addi	s0,sp,32
    800069f8:	0ff7f713          	andi	a4,a5,255
    800069fc:	00900693          	li	a3,9
    80006a00:	04d70c63          	beq	a4,a3,80006a58 <devintr+0x84>
    80006a04:	fff00713          	li	a4,-1
    80006a08:	03f71713          	slli	a4,a4,0x3f
    80006a0c:	00170713          	addi	a4,a4,1
    80006a10:	00e78c63          	beq	a5,a4,80006a28 <devintr+0x54>
    80006a14:	01813083          	ld	ra,24(sp)
    80006a18:	01013403          	ld	s0,16(sp)
    80006a1c:	00813483          	ld	s1,8(sp)
    80006a20:	02010113          	addi	sp,sp,32
    80006a24:	00008067          	ret
    80006a28:	00000097          	auipc	ra,0x0
    80006a2c:	c8c080e7          	jalr	-884(ra) # 800066b4 <cpuid>
    80006a30:	06050663          	beqz	a0,80006a9c <devintr+0xc8>
    80006a34:	144027f3          	csrr	a5,sip
    80006a38:	ffd7f793          	andi	a5,a5,-3
    80006a3c:	14479073          	csrw	sip,a5
    80006a40:	01813083          	ld	ra,24(sp)
    80006a44:	01013403          	ld	s0,16(sp)
    80006a48:	00813483          	ld	s1,8(sp)
    80006a4c:	00200513          	li	a0,2
    80006a50:	02010113          	addi	sp,sp,32
    80006a54:	00008067          	ret
    80006a58:	00000097          	auipc	ra,0x0
    80006a5c:	24c080e7          	jalr	588(ra) # 80006ca4 <plic_claim>
    80006a60:	00a00793          	li	a5,10
    80006a64:	00050493          	mv	s1,a0
    80006a68:	06f50663          	beq	a0,a5,80006ad4 <devintr+0x100>
    80006a6c:	00100513          	li	a0,1
    80006a70:	fa0482e3          	beqz	s1,80006a14 <devintr+0x40>
    80006a74:	00048593          	mv	a1,s1
    80006a78:	00003517          	auipc	a0,0x3
    80006a7c:	bd850513          	addi	a0,a0,-1064 # 80009650 <_ZZ13printInteger1mE6digits+0x348>
    80006a80:	00000097          	auipc	ra,0x0
    80006a84:	668080e7          	jalr	1640(ra) # 800070e8 <__printf>
    80006a88:	00048513          	mv	a0,s1
    80006a8c:	00000097          	auipc	ra,0x0
    80006a90:	250080e7          	jalr	592(ra) # 80006cdc <plic_complete>
    80006a94:	00100513          	li	a0,1
    80006a98:	f7dff06f          	j	80006a14 <devintr+0x40>
    80006a9c:	00006517          	auipc	a0,0x6
    80006aa0:	f2450513          	addi	a0,a0,-220 # 8000c9c0 <tickslock>
    80006aa4:	00001097          	auipc	ra,0x1
    80006aa8:	318080e7          	jalr	792(ra) # 80007dbc <acquire>
    80006aac:	00005717          	auipc	a4,0x5
    80006ab0:	d8870713          	addi	a4,a4,-632 # 8000b834 <ticks>
    80006ab4:	00072783          	lw	a5,0(a4)
    80006ab8:	00006517          	auipc	a0,0x6
    80006abc:	f0850513          	addi	a0,a0,-248 # 8000c9c0 <tickslock>
    80006ac0:	0017879b          	addiw	a5,a5,1
    80006ac4:	00f72023          	sw	a5,0(a4)
    80006ac8:	00001097          	auipc	ra,0x1
    80006acc:	3c0080e7          	jalr	960(ra) # 80007e88 <release>
    80006ad0:	f65ff06f          	j	80006a34 <devintr+0x60>
    80006ad4:	00001097          	auipc	ra,0x1
    80006ad8:	f1c080e7          	jalr	-228(ra) # 800079f0 <uartintr>
    80006adc:	fadff06f          	j	80006a88 <devintr+0xb4>

0000000080006ae0 <kernelvec>:
    80006ae0:	f0010113          	addi	sp,sp,-256
    80006ae4:	00113023          	sd	ra,0(sp)
    80006ae8:	00213423          	sd	sp,8(sp)
    80006aec:	00313823          	sd	gp,16(sp)
    80006af0:	00413c23          	sd	tp,24(sp)
    80006af4:	02513023          	sd	t0,32(sp)
    80006af8:	02613423          	sd	t1,40(sp)
    80006afc:	02713823          	sd	t2,48(sp)
    80006b00:	02813c23          	sd	s0,56(sp)
    80006b04:	04913023          	sd	s1,64(sp)
    80006b08:	04a13423          	sd	a0,72(sp)
    80006b0c:	04b13823          	sd	a1,80(sp)
    80006b10:	04c13c23          	sd	a2,88(sp)
    80006b14:	06d13023          	sd	a3,96(sp)
    80006b18:	06e13423          	sd	a4,104(sp)
    80006b1c:	06f13823          	sd	a5,112(sp)
    80006b20:	07013c23          	sd	a6,120(sp)
    80006b24:	09113023          	sd	a7,128(sp)
    80006b28:	09213423          	sd	s2,136(sp)
    80006b2c:	09313823          	sd	s3,144(sp)
    80006b30:	09413c23          	sd	s4,152(sp)
    80006b34:	0b513023          	sd	s5,160(sp)
    80006b38:	0b613423          	sd	s6,168(sp)
    80006b3c:	0b713823          	sd	s7,176(sp)
    80006b40:	0b813c23          	sd	s8,184(sp)
    80006b44:	0d913023          	sd	s9,192(sp)
    80006b48:	0da13423          	sd	s10,200(sp)
    80006b4c:	0db13823          	sd	s11,208(sp)
    80006b50:	0dc13c23          	sd	t3,216(sp)
    80006b54:	0fd13023          	sd	t4,224(sp)
    80006b58:	0fe13423          	sd	t5,232(sp)
    80006b5c:	0ff13823          	sd	t6,240(sp)
    80006b60:	cd5ff0ef          	jal	ra,80006834 <kerneltrap>
    80006b64:	00013083          	ld	ra,0(sp)
    80006b68:	00813103          	ld	sp,8(sp)
    80006b6c:	01013183          	ld	gp,16(sp)
    80006b70:	02013283          	ld	t0,32(sp)
    80006b74:	02813303          	ld	t1,40(sp)
    80006b78:	03013383          	ld	t2,48(sp)
    80006b7c:	03813403          	ld	s0,56(sp)
    80006b80:	04013483          	ld	s1,64(sp)
    80006b84:	04813503          	ld	a0,72(sp)
    80006b88:	05013583          	ld	a1,80(sp)
    80006b8c:	05813603          	ld	a2,88(sp)
    80006b90:	06013683          	ld	a3,96(sp)
    80006b94:	06813703          	ld	a4,104(sp)
    80006b98:	07013783          	ld	a5,112(sp)
    80006b9c:	07813803          	ld	a6,120(sp)
    80006ba0:	08013883          	ld	a7,128(sp)
    80006ba4:	08813903          	ld	s2,136(sp)
    80006ba8:	09013983          	ld	s3,144(sp)
    80006bac:	09813a03          	ld	s4,152(sp)
    80006bb0:	0a013a83          	ld	s5,160(sp)
    80006bb4:	0a813b03          	ld	s6,168(sp)
    80006bb8:	0b013b83          	ld	s7,176(sp)
    80006bbc:	0b813c03          	ld	s8,184(sp)
    80006bc0:	0c013c83          	ld	s9,192(sp)
    80006bc4:	0c813d03          	ld	s10,200(sp)
    80006bc8:	0d013d83          	ld	s11,208(sp)
    80006bcc:	0d813e03          	ld	t3,216(sp)
    80006bd0:	0e013e83          	ld	t4,224(sp)
    80006bd4:	0e813f03          	ld	t5,232(sp)
    80006bd8:	0f013f83          	ld	t6,240(sp)
    80006bdc:	10010113          	addi	sp,sp,256
    80006be0:	10200073          	sret
    80006be4:	00000013          	nop
    80006be8:	00000013          	nop
    80006bec:	00000013          	nop

0000000080006bf0 <timervec>:
    80006bf0:	34051573          	csrrw	a0,mscratch,a0
    80006bf4:	00b53023          	sd	a1,0(a0)
    80006bf8:	00c53423          	sd	a2,8(a0)
    80006bfc:	00d53823          	sd	a3,16(a0)
    80006c00:	01853583          	ld	a1,24(a0)
    80006c04:	02053603          	ld	a2,32(a0)
    80006c08:	0005b683          	ld	a3,0(a1)
    80006c0c:	00c686b3          	add	a3,a3,a2
    80006c10:	00d5b023          	sd	a3,0(a1)
    80006c14:	00200593          	li	a1,2
    80006c18:	14459073          	csrw	sip,a1
    80006c1c:	01053683          	ld	a3,16(a0)
    80006c20:	00853603          	ld	a2,8(a0)
    80006c24:	00053583          	ld	a1,0(a0)
    80006c28:	34051573          	csrrw	a0,mscratch,a0
    80006c2c:	30200073          	mret

0000000080006c30 <plicinit>:
    80006c30:	ff010113          	addi	sp,sp,-16
    80006c34:	00813423          	sd	s0,8(sp)
    80006c38:	01010413          	addi	s0,sp,16
    80006c3c:	00813403          	ld	s0,8(sp)
    80006c40:	0c0007b7          	lui	a5,0xc000
    80006c44:	00100713          	li	a4,1
    80006c48:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006c4c:	00e7a223          	sw	a4,4(a5)
    80006c50:	01010113          	addi	sp,sp,16
    80006c54:	00008067          	ret

0000000080006c58 <plicinithart>:
    80006c58:	ff010113          	addi	sp,sp,-16
    80006c5c:	00813023          	sd	s0,0(sp)
    80006c60:	00113423          	sd	ra,8(sp)
    80006c64:	01010413          	addi	s0,sp,16
    80006c68:	00000097          	auipc	ra,0x0
    80006c6c:	a4c080e7          	jalr	-1460(ra) # 800066b4 <cpuid>
    80006c70:	0085171b          	slliw	a4,a0,0x8
    80006c74:	0c0027b7          	lui	a5,0xc002
    80006c78:	00e787b3          	add	a5,a5,a4
    80006c7c:	40200713          	li	a4,1026
    80006c80:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006c84:	00813083          	ld	ra,8(sp)
    80006c88:	00013403          	ld	s0,0(sp)
    80006c8c:	00d5151b          	slliw	a0,a0,0xd
    80006c90:	0c2017b7          	lui	a5,0xc201
    80006c94:	00a78533          	add	a0,a5,a0
    80006c98:	00052023          	sw	zero,0(a0)
    80006c9c:	01010113          	addi	sp,sp,16
    80006ca0:	00008067          	ret

0000000080006ca4 <plic_claim>:
    80006ca4:	ff010113          	addi	sp,sp,-16
    80006ca8:	00813023          	sd	s0,0(sp)
    80006cac:	00113423          	sd	ra,8(sp)
    80006cb0:	01010413          	addi	s0,sp,16
    80006cb4:	00000097          	auipc	ra,0x0
    80006cb8:	a00080e7          	jalr	-1536(ra) # 800066b4 <cpuid>
    80006cbc:	00813083          	ld	ra,8(sp)
    80006cc0:	00013403          	ld	s0,0(sp)
    80006cc4:	00d5151b          	slliw	a0,a0,0xd
    80006cc8:	0c2017b7          	lui	a5,0xc201
    80006ccc:	00a78533          	add	a0,a5,a0
    80006cd0:	00452503          	lw	a0,4(a0)
    80006cd4:	01010113          	addi	sp,sp,16
    80006cd8:	00008067          	ret

0000000080006cdc <plic_complete>:
    80006cdc:	fe010113          	addi	sp,sp,-32
    80006ce0:	00813823          	sd	s0,16(sp)
    80006ce4:	00913423          	sd	s1,8(sp)
    80006ce8:	00113c23          	sd	ra,24(sp)
    80006cec:	02010413          	addi	s0,sp,32
    80006cf0:	00050493          	mv	s1,a0
    80006cf4:	00000097          	auipc	ra,0x0
    80006cf8:	9c0080e7          	jalr	-1600(ra) # 800066b4 <cpuid>
    80006cfc:	01813083          	ld	ra,24(sp)
    80006d00:	01013403          	ld	s0,16(sp)
    80006d04:	00d5179b          	slliw	a5,a0,0xd
    80006d08:	0c201737          	lui	a4,0xc201
    80006d0c:	00f707b3          	add	a5,a4,a5
    80006d10:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006d14:	00813483          	ld	s1,8(sp)
    80006d18:	02010113          	addi	sp,sp,32
    80006d1c:	00008067          	ret

0000000080006d20 <consolewrite>:
    80006d20:	fb010113          	addi	sp,sp,-80
    80006d24:	04813023          	sd	s0,64(sp)
    80006d28:	04113423          	sd	ra,72(sp)
    80006d2c:	02913c23          	sd	s1,56(sp)
    80006d30:	03213823          	sd	s2,48(sp)
    80006d34:	03313423          	sd	s3,40(sp)
    80006d38:	03413023          	sd	s4,32(sp)
    80006d3c:	01513c23          	sd	s5,24(sp)
    80006d40:	05010413          	addi	s0,sp,80
    80006d44:	06c05c63          	blez	a2,80006dbc <consolewrite+0x9c>
    80006d48:	00060993          	mv	s3,a2
    80006d4c:	00050a13          	mv	s4,a0
    80006d50:	00058493          	mv	s1,a1
    80006d54:	00000913          	li	s2,0
    80006d58:	fff00a93          	li	s5,-1
    80006d5c:	01c0006f          	j	80006d78 <consolewrite+0x58>
    80006d60:	fbf44503          	lbu	a0,-65(s0)
    80006d64:	0019091b          	addiw	s2,s2,1
    80006d68:	00148493          	addi	s1,s1,1
    80006d6c:	00001097          	auipc	ra,0x1
    80006d70:	a9c080e7          	jalr	-1380(ra) # 80007808 <uartputc>
    80006d74:	03298063          	beq	s3,s2,80006d94 <consolewrite+0x74>
    80006d78:	00048613          	mv	a2,s1
    80006d7c:	00100693          	li	a3,1
    80006d80:	000a0593          	mv	a1,s4
    80006d84:	fbf40513          	addi	a0,s0,-65
    80006d88:	00000097          	auipc	ra,0x0
    80006d8c:	9e4080e7          	jalr	-1564(ra) # 8000676c <either_copyin>
    80006d90:	fd5518e3          	bne	a0,s5,80006d60 <consolewrite+0x40>
    80006d94:	04813083          	ld	ra,72(sp)
    80006d98:	04013403          	ld	s0,64(sp)
    80006d9c:	03813483          	ld	s1,56(sp)
    80006da0:	02813983          	ld	s3,40(sp)
    80006da4:	02013a03          	ld	s4,32(sp)
    80006da8:	01813a83          	ld	s5,24(sp)
    80006dac:	00090513          	mv	a0,s2
    80006db0:	03013903          	ld	s2,48(sp)
    80006db4:	05010113          	addi	sp,sp,80
    80006db8:	00008067          	ret
    80006dbc:	00000913          	li	s2,0
    80006dc0:	fd5ff06f          	j	80006d94 <consolewrite+0x74>

0000000080006dc4 <consoleread>:
    80006dc4:	f9010113          	addi	sp,sp,-112
    80006dc8:	06813023          	sd	s0,96(sp)
    80006dcc:	04913c23          	sd	s1,88(sp)
    80006dd0:	05213823          	sd	s2,80(sp)
    80006dd4:	05313423          	sd	s3,72(sp)
    80006dd8:	05413023          	sd	s4,64(sp)
    80006ddc:	03513c23          	sd	s5,56(sp)
    80006de0:	03613823          	sd	s6,48(sp)
    80006de4:	03713423          	sd	s7,40(sp)
    80006de8:	03813023          	sd	s8,32(sp)
    80006dec:	06113423          	sd	ra,104(sp)
    80006df0:	01913c23          	sd	s9,24(sp)
    80006df4:	07010413          	addi	s0,sp,112
    80006df8:	00060b93          	mv	s7,a2
    80006dfc:	00050913          	mv	s2,a0
    80006e00:	00058c13          	mv	s8,a1
    80006e04:	00060b1b          	sext.w	s6,a2
    80006e08:	00006497          	auipc	s1,0x6
    80006e0c:	be048493          	addi	s1,s1,-1056 # 8000c9e8 <cons>
    80006e10:	00400993          	li	s3,4
    80006e14:	fff00a13          	li	s4,-1
    80006e18:	00a00a93          	li	s5,10
    80006e1c:	05705e63          	blez	s7,80006e78 <consoleread+0xb4>
    80006e20:	09c4a703          	lw	a4,156(s1)
    80006e24:	0984a783          	lw	a5,152(s1)
    80006e28:	0007071b          	sext.w	a4,a4
    80006e2c:	08e78463          	beq	a5,a4,80006eb4 <consoleread+0xf0>
    80006e30:	07f7f713          	andi	a4,a5,127
    80006e34:	00e48733          	add	a4,s1,a4
    80006e38:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006e3c:	0017869b          	addiw	a3,a5,1
    80006e40:	08d4ac23          	sw	a3,152(s1)
    80006e44:	00070c9b          	sext.w	s9,a4
    80006e48:	0b370663          	beq	a4,s3,80006ef4 <consoleread+0x130>
    80006e4c:	00100693          	li	a3,1
    80006e50:	f9f40613          	addi	a2,s0,-97
    80006e54:	000c0593          	mv	a1,s8
    80006e58:	00090513          	mv	a0,s2
    80006e5c:	f8e40fa3          	sb	a4,-97(s0)
    80006e60:	00000097          	auipc	ra,0x0
    80006e64:	8c0080e7          	jalr	-1856(ra) # 80006720 <either_copyout>
    80006e68:	01450863          	beq	a0,s4,80006e78 <consoleread+0xb4>
    80006e6c:	001c0c13          	addi	s8,s8,1
    80006e70:	fffb8b9b          	addiw	s7,s7,-1
    80006e74:	fb5c94e3          	bne	s9,s5,80006e1c <consoleread+0x58>
    80006e78:	000b851b          	sext.w	a0,s7
    80006e7c:	06813083          	ld	ra,104(sp)
    80006e80:	06013403          	ld	s0,96(sp)
    80006e84:	05813483          	ld	s1,88(sp)
    80006e88:	05013903          	ld	s2,80(sp)
    80006e8c:	04813983          	ld	s3,72(sp)
    80006e90:	04013a03          	ld	s4,64(sp)
    80006e94:	03813a83          	ld	s5,56(sp)
    80006e98:	02813b83          	ld	s7,40(sp)
    80006e9c:	02013c03          	ld	s8,32(sp)
    80006ea0:	01813c83          	ld	s9,24(sp)
    80006ea4:	40ab053b          	subw	a0,s6,a0
    80006ea8:	03013b03          	ld	s6,48(sp)
    80006eac:	07010113          	addi	sp,sp,112
    80006eb0:	00008067          	ret
    80006eb4:	00001097          	auipc	ra,0x1
    80006eb8:	1d8080e7          	jalr	472(ra) # 8000808c <push_on>
    80006ebc:	0984a703          	lw	a4,152(s1)
    80006ec0:	09c4a783          	lw	a5,156(s1)
    80006ec4:	0007879b          	sext.w	a5,a5
    80006ec8:	fef70ce3          	beq	a4,a5,80006ec0 <consoleread+0xfc>
    80006ecc:	00001097          	auipc	ra,0x1
    80006ed0:	234080e7          	jalr	564(ra) # 80008100 <pop_on>
    80006ed4:	0984a783          	lw	a5,152(s1)
    80006ed8:	07f7f713          	andi	a4,a5,127
    80006edc:	00e48733          	add	a4,s1,a4
    80006ee0:	01874703          	lbu	a4,24(a4)
    80006ee4:	0017869b          	addiw	a3,a5,1
    80006ee8:	08d4ac23          	sw	a3,152(s1)
    80006eec:	00070c9b          	sext.w	s9,a4
    80006ef0:	f5371ee3          	bne	a4,s3,80006e4c <consoleread+0x88>
    80006ef4:	000b851b          	sext.w	a0,s7
    80006ef8:	f96bf2e3          	bgeu	s7,s6,80006e7c <consoleread+0xb8>
    80006efc:	08f4ac23          	sw	a5,152(s1)
    80006f00:	f7dff06f          	j	80006e7c <consoleread+0xb8>

0000000080006f04 <consputc>:
    80006f04:	10000793          	li	a5,256
    80006f08:	00f50663          	beq	a0,a5,80006f14 <consputc+0x10>
    80006f0c:	00001317          	auipc	t1,0x1
    80006f10:	9f430067          	jr	-1548(t1) # 80007900 <uartputc_sync>
    80006f14:	ff010113          	addi	sp,sp,-16
    80006f18:	00113423          	sd	ra,8(sp)
    80006f1c:	00813023          	sd	s0,0(sp)
    80006f20:	01010413          	addi	s0,sp,16
    80006f24:	00800513          	li	a0,8
    80006f28:	00001097          	auipc	ra,0x1
    80006f2c:	9d8080e7          	jalr	-1576(ra) # 80007900 <uartputc_sync>
    80006f30:	02000513          	li	a0,32
    80006f34:	00001097          	auipc	ra,0x1
    80006f38:	9cc080e7          	jalr	-1588(ra) # 80007900 <uartputc_sync>
    80006f3c:	00013403          	ld	s0,0(sp)
    80006f40:	00813083          	ld	ra,8(sp)
    80006f44:	00800513          	li	a0,8
    80006f48:	01010113          	addi	sp,sp,16
    80006f4c:	00001317          	auipc	t1,0x1
    80006f50:	9b430067          	jr	-1612(t1) # 80007900 <uartputc_sync>

0000000080006f54 <consoleintr>:
    80006f54:	fe010113          	addi	sp,sp,-32
    80006f58:	00813823          	sd	s0,16(sp)
    80006f5c:	00913423          	sd	s1,8(sp)
    80006f60:	01213023          	sd	s2,0(sp)
    80006f64:	00113c23          	sd	ra,24(sp)
    80006f68:	02010413          	addi	s0,sp,32
    80006f6c:	00006917          	auipc	s2,0x6
    80006f70:	a7c90913          	addi	s2,s2,-1412 # 8000c9e8 <cons>
    80006f74:	00050493          	mv	s1,a0
    80006f78:	00090513          	mv	a0,s2
    80006f7c:	00001097          	auipc	ra,0x1
    80006f80:	e40080e7          	jalr	-448(ra) # 80007dbc <acquire>
    80006f84:	02048c63          	beqz	s1,80006fbc <consoleintr+0x68>
    80006f88:	0a092783          	lw	a5,160(s2)
    80006f8c:	09892703          	lw	a4,152(s2)
    80006f90:	07f00693          	li	a3,127
    80006f94:	40e7873b          	subw	a4,a5,a4
    80006f98:	02e6e263          	bltu	a3,a4,80006fbc <consoleintr+0x68>
    80006f9c:	00d00713          	li	a4,13
    80006fa0:	04e48063          	beq	s1,a4,80006fe0 <consoleintr+0x8c>
    80006fa4:	07f7f713          	andi	a4,a5,127
    80006fa8:	00e90733          	add	a4,s2,a4
    80006fac:	0017879b          	addiw	a5,a5,1
    80006fb0:	0af92023          	sw	a5,160(s2)
    80006fb4:	00970c23          	sb	s1,24(a4)
    80006fb8:	08f92e23          	sw	a5,156(s2)
    80006fbc:	01013403          	ld	s0,16(sp)
    80006fc0:	01813083          	ld	ra,24(sp)
    80006fc4:	00813483          	ld	s1,8(sp)
    80006fc8:	00013903          	ld	s2,0(sp)
    80006fcc:	00006517          	auipc	a0,0x6
    80006fd0:	a1c50513          	addi	a0,a0,-1508 # 8000c9e8 <cons>
    80006fd4:	02010113          	addi	sp,sp,32
    80006fd8:	00001317          	auipc	t1,0x1
    80006fdc:	eb030067          	jr	-336(t1) # 80007e88 <release>
    80006fe0:	00a00493          	li	s1,10
    80006fe4:	fc1ff06f          	j	80006fa4 <consoleintr+0x50>

0000000080006fe8 <consoleinit>:
    80006fe8:	fe010113          	addi	sp,sp,-32
    80006fec:	00113c23          	sd	ra,24(sp)
    80006ff0:	00813823          	sd	s0,16(sp)
    80006ff4:	00913423          	sd	s1,8(sp)
    80006ff8:	02010413          	addi	s0,sp,32
    80006ffc:	00006497          	auipc	s1,0x6
    80007000:	9ec48493          	addi	s1,s1,-1556 # 8000c9e8 <cons>
    80007004:	00048513          	mv	a0,s1
    80007008:	00002597          	auipc	a1,0x2
    8000700c:	6a058593          	addi	a1,a1,1696 # 800096a8 <_ZZ13printInteger1mE6digits+0x3a0>
    80007010:	00001097          	auipc	ra,0x1
    80007014:	d88080e7          	jalr	-632(ra) # 80007d98 <initlock>
    80007018:	00000097          	auipc	ra,0x0
    8000701c:	7ac080e7          	jalr	1964(ra) # 800077c4 <uartinit>
    80007020:	01813083          	ld	ra,24(sp)
    80007024:	01013403          	ld	s0,16(sp)
    80007028:	00000797          	auipc	a5,0x0
    8000702c:	d9c78793          	addi	a5,a5,-612 # 80006dc4 <consoleread>
    80007030:	0af4bc23          	sd	a5,184(s1)
    80007034:	00000797          	auipc	a5,0x0
    80007038:	cec78793          	addi	a5,a5,-788 # 80006d20 <consolewrite>
    8000703c:	0cf4b023          	sd	a5,192(s1)
    80007040:	00813483          	ld	s1,8(sp)
    80007044:	02010113          	addi	sp,sp,32
    80007048:	00008067          	ret

000000008000704c <console_read>:
    8000704c:	ff010113          	addi	sp,sp,-16
    80007050:	00813423          	sd	s0,8(sp)
    80007054:	01010413          	addi	s0,sp,16
    80007058:	00813403          	ld	s0,8(sp)
    8000705c:	00006317          	auipc	t1,0x6
    80007060:	a4433303          	ld	t1,-1468(t1) # 8000caa0 <devsw+0x10>
    80007064:	01010113          	addi	sp,sp,16
    80007068:	00030067          	jr	t1

000000008000706c <console_write>:
    8000706c:	ff010113          	addi	sp,sp,-16
    80007070:	00813423          	sd	s0,8(sp)
    80007074:	01010413          	addi	s0,sp,16
    80007078:	00813403          	ld	s0,8(sp)
    8000707c:	00006317          	auipc	t1,0x6
    80007080:	a2c33303          	ld	t1,-1492(t1) # 8000caa8 <devsw+0x18>
    80007084:	01010113          	addi	sp,sp,16
    80007088:	00030067          	jr	t1

000000008000708c <panic>:
    8000708c:	fe010113          	addi	sp,sp,-32
    80007090:	00113c23          	sd	ra,24(sp)
    80007094:	00813823          	sd	s0,16(sp)
    80007098:	00913423          	sd	s1,8(sp)
    8000709c:	02010413          	addi	s0,sp,32
    800070a0:	00050493          	mv	s1,a0
    800070a4:	00002517          	auipc	a0,0x2
    800070a8:	60c50513          	addi	a0,a0,1548 # 800096b0 <_ZZ13printInteger1mE6digits+0x3a8>
    800070ac:	00006797          	auipc	a5,0x6
    800070b0:	a807ae23          	sw	zero,-1380(a5) # 8000cb48 <pr+0x18>
    800070b4:	00000097          	auipc	ra,0x0
    800070b8:	034080e7          	jalr	52(ra) # 800070e8 <__printf>
    800070bc:	00048513          	mv	a0,s1
    800070c0:	00000097          	auipc	ra,0x0
    800070c4:	028080e7          	jalr	40(ra) # 800070e8 <__printf>
    800070c8:	00002517          	auipc	a0,0x2
    800070cc:	0c850513          	addi	a0,a0,200 # 80009190 <CONSOLE_STATUS+0x180>
    800070d0:	00000097          	auipc	ra,0x0
    800070d4:	018080e7          	jalr	24(ra) # 800070e8 <__printf>
    800070d8:	00100793          	li	a5,1
    800070dc:	00004717          	auipc	a4,0x4
    800070e0:	74f72e23          	sw	a5,1884(a4) # 8000b838 <panicked>
    800070e4:	0000006f          	j	800070e4 <panic+0x58>

00000000800070e8 <__printf>:
    800070e8:	f3010113          	addi	sp,sp,-208
    800070ec:	08813023          	sd	s0,128(sp)
    800070f0:	07313423          	sd	s3,104(sp)
    800070f4:	09010413          	addi	s0,sp,144
    800070f8:	05813023          	sd	s8,64(sp)
    800070fc:	08113423          	sd	ra,136(sp)
    80007100:	06913c23          	sd	s1,120(sp)
    80007104:	07213823          	sd	s2,112(sp)
    80007108:	07413023          	sd	s4,96(sp)
    8000710c:	05513c23          	sd	s5,88(sp)
    80007110:	05613823          	sd	s6,80(sp)
    80007114:	05713423          	sd	s7,72(sp)
    80007118:	03913c23          	sd	s9,56(sp)
    8000711c:	03a13823          	sd	s10,48(sp)
    80007120:	03b13423          	sd	s11,40(sp)
    80007124:	00006317          	auipc	t1,0x6
    80007128:	a0c30313          	addi	t1,t1,-1524 # 8000cb30 <pr>
    8000712c:	01832c03          	lw	s8,24(t1)
    80007130:	00b43423          	sd	a1,8(s0)
    80007134:	00c43823          	sd	a2,16(s0)
    80007138:	00d43c23          	sd	a3,24(s0)
    8000713c:	02e43023          	sd	a4,32(s0)
    80007140:	02f43423          	sd	a5,40(s0)
    80007144:	03043823          	sd	a6,48(s0)
    80007148:	03143c23          	sd	a7,56(s0)
    8000714c:	00050993          	mv	s3,a0
    80007150:	4a0c1663          	bnez	s8,800075fc <__printf+0x514>
    80007154:	60098c63          	beqz	s3,8000776c <__printf+0x684>
    80007158:	0009c503          	lbu	a0,0(s3)
    8000715c:	00840793          	addi	a5,s0,8
    80007160:	f6f43c23          	sd	a5,-136(s0)
    80007164:	00000493          	li	s1,0
    80007168:	22050063          	beqz	a0,80007388 <__printf+0x2a0>
    8000716c:	00002a37          	lui	s4,0x2
    80007170:	00018ab7          	lui	s5,0x18
    80007174:	000f4b37          	lui	s6,0xf4
    80007178:	00989bb7          	lui	s7,0x989
    8000717c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007180:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007184:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007188:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000718c:	00148c9b          	addiw	s9,s1,1
    80007190:	02500793          	li	a5,37
    80007194:	01998933          	add	s2,s3,s9
    80007198:	38f51263          	bne	a0,a5,8000751c <__printf+0x434>
    8000719c:	00094783          	lbu	a5,0(s2)
    800071a0:	00078c9b          	sext.w	s9,a5
    800071a4:	1e078263          	beqz	a5,80007388 <__printf+0x2a0>
    800071a8:	0024849b          	addiw	s1,s1,2
    800071ac:	07000713          	li	a4,112
    800071b0:	00998933          	add	s2,s3,s1
    800071b4:	38e78a63          	beq	a5,a4,80007548 <__printf+0x460>
    800071b8:	20f76863          	bltu	a4,a5,800073c8 <__printf+0x2e0>
    800071bc:	42a78863          	beq	a5,a0,800075ec <__printf+0x504>
    800071c0:	06400713          	li	a4,100
    800071c4:	40e79663          	bne	a5,a4,800075d0 <__printf+0x4e8>
    800071c8:	f7843783          	ld	a5,-136(s0)
    800071cc:	0007a603          	lw	a2,0(a5)
    800071d0:	00878793          	addi	a5,a5,8
    800071d4:	f6f43c23          	sd	a5,-136(s0)
    800071d8:	42064a63          	bltz	a2,8000760c <__printf+0x524>
    800071dc:	00a00713          	li	a4,10
    800071e0:	02e677bb          	remuw	a5,a2,a4
    800071e4:	00002d97          	auipc	s11,0x2
    800071e8:	4f4d8d93          	addi	s11,s11,1268 # 800096d8 <digits>
    800071ec:	00900593          	li	a1,9
    800071f0:	0006051b          	sext.w	a0,a2
    800071f4:	00000c93          	li	s9,0
    800071f8:	02079793          	slli	a5,a5,0x20
    800071fc:	0207d793          	srli	a5,a5,0x20
    80007200:	00fd87b3          	add	a5,s11,a5
    80007204:	0007c783          	lbu	a5,0(a5)
    80007208:	02e656bb          	divuw	a3,a2,a4
    8000720c:	f8f40023          	sb	a5,-128(s0)
    80007210:	14c5d863          	bge	a1,a2,80007360 <__printf+0x278>
    80007214:	06300593          	li	a1,99
    80007218:	00100c93          	li	s9,1
    8000721c:	02e6f7bb          	remuw	a5,a3,a4
    80007220:	02079793          	slli	a5,a5,0x20
    80007224:	0207d793          	srli	a5,a5,0x20
    80007228:	00fd87b3          	add	a5,s11,a5
    8000722c:	0007c783          	lbu	a5,0(a5)
    80007230:	02e6d73b          	divuw	a4,a3,a4
    80007234:	f8f400a3          	sb	a5,-127(s0)
    80007238:	12a5f463          	bgeu	a1,a0,80007360 <__printf+0x278>
    8000723c:	00a00693          	li	a3,10
    80007240:	00900593          	li	a1,9
    80007244:	02d777bb          	remuw	a5,a4,a3
    80007248:	02079793          	slli	a5,a5,0x20
    8000724c:	0207d793          	srli	a5,a5,0x20
    80007250:	00fd87b3          	add	a5,s11,a5
    80007254:	0007c503          	lbu	a0,0(a5)
    80007258:	02d757bb          	divuw	a5,a4,a3
    8000725c:	f8a40123          	sb	a0,-126(s0)
    80007260:	48e5f263          	bgeu	a1,a4,800076e4 <__printf+0x5fc>
    80007264:	06300513          	li	a0,99
    80007268:	02d7f5bb          	remuw	a1,a5,a3
    8000726c:	02059593          	slli	a1,a1,0x20
    80007270:	0205d593          	srli	a1,a1,0x20
    80007274:	00bd85b3          	add	a1,s11,a1
    80007278:	0005c583          	lbu	a1,0(a1)
    8000727c:	02d7d7bb          	divuw	a5,a5,a3
    80007280:	f8b401a3          	sb	a1,-125(s0)
    80007284:	48e57263          	bgeu	a0,a4,80007708 <__printf+0x620>
    80007288:	3e700513          	li	a0,999
    8000728c:	02d7f5bb          	remuw	a1,a5,a3
    80007290:	02059593          	slli	a1,a1,0x20
    80007294:	0205d593          	srli	a1,a1,0x20
    80007298:	00bd85b3          	add	a1,s11,a1
    8000729c:	0005c583          	lbu	a1,0(a1)
    800072a0:	02d7d7bb          	divuw	a5,a5,a3
    800072a4:	f8b40223          	sb	a1,-124(s0)
    800072a8:	46e57663          	bgeu	a0,a4,80007714 <__printf+0x62c>
    800072ac:	02d7f5bb          	remuw	a1,a5,a3
    800072b0:	02059593          	slli	a1,a1,0x20
    800072b4:	0205d593          	srli	a1,a1,0x20
    800072b8:	00bd85b3          	add	a1,s11,a1
    800072bc:	0005c583          	lbu	a1,0(a1)
    800072c0:	02d7d7bb          	divuw	a5,a5,a3
    800072c4:	f8b402a3          	sb	a1,-123(s0)
    800072c8:	46ea7863          	bgeu	s4,a4,80007738 <__printf+0x650>
    800072cc:	02d7f5bb          	remuw	a1,a5,a3
    800072d0:	02059593          	slli	a1,a1,0x20
    800072d4:	0205d593          	srli	a1,a1,0x20
    800072d8:	00bd85b3          	add	a1,s11,a1
    800072dc:	0005c583          	lbu	a1,0(a1)
    800072e0:	02d7d7bb          	divuw	a5,a5,a3
    800072e4:	f8b40323          	sb	a1,-122(s0)
    800072e8:	3eeaf863          	bgeu	s5,a4,800076d8 <__printf+0x5f0>
    800072ec:	02d7f5bb          	remuw	a1,a5,a3
    800072f0:	02059593          	slli	a1,a1,0x20
    800072f4:	0205d593          	srli	a1,a1,0x20
    800072f8:	00bd85b3          	add	a1,s11,a1
    800072fc:	0005c583          	lbu	a1,0(a1)
    80007300:	02d7d7bb          	divuw	a5,a5,a3
    80007304:	f8b403a3          	sb	a1,-121(s0)
    80007308:	42eb7e63          	bgeu	s6,a4,80007744 <__printf+0x65c>
    8000730c:	02d7f5bb          	remuw	a1,a5,a3
    80007310:	02059593          	slli	a1,a1,0x20
    80007314:	0205d593          	srli	a1,a1,0x20
    80007318:	00bd85b3          	add	a1,s11,a1
    8000731c:	0005c583          	lbu	a1,0(a1)
    80007320:	02d7d7bb          	divuw	a5,a5,a3
    80007324:	f8b40423          	sb	a1,-120(s0)
    80007328:	42ebfc63          	bgeu	s7,a4,80007760 <__printf+0x678>
    8000732c:	02079793          	slli	a5,a5,0x20
    80007330:	0207d793          	srli	a5,a5,0x20
    80007334:	00fd8db3          	add	s11,s11,a5
    80007338:	000dc703          	lbu	a4,0(s11)
    8000733c:	00a00793          	li	a5,10
    80007340:	00900c93          	li	s9,9
    80007344:	f8e404a3          	sb	a4,-119(s0)
    80007348:	00065c63          	bgez	a2,80007360 <__printf+0x278>
    8000734c:	f9040713          	addi	a4,s0,-112
    80007350:	00f70733          	add	a4,a4,a5
    80007354:	02d00693          	li	a3,45
    80007358:	fed70823          	sb	a3,-16(a4)
    8000735c:	00078c93          	mv	s9,a5
    80007360:	f8040793          	addi	a5,s0,-128
    80007364:	01978cb3          	add	s9,a5,s9
    80007368:	f7f40d13          	addi	s10,s0,-129
    8000736c:	000cc503          	lbu	a0,0(s9)
    80007370:	fffc8c93          	addi	s9,s9,-1
    80007374:	00000097          	auipc	ra,0x0
    80007378:	b90080e7          	jalr	-1136(ra) # 80006f04 <consputc>
    8000737c:	ffac98e3          	bne	s9,s10,8000736c <__printf+0x284>
    80007380:	00094503          	lbu	a0,0(s2)
    80007384:	e00514e3          	bnez	a0,8000718c <__printf+0xa4>
    80007388:	1a0c1663          	bnez	s8,80007534 <__printf+0x44c>
    8000738c:	08813083          	ld	ra,136(sp)
    80007390:	08013403          	ld	s0,128(sp)
    80007394:	07813483          	ld	s1,120(sp)
    80007398:	07013903          	ld	s2,112(sp)
    8000739c:	06813983          	ld	s3,104(sp)
    800073a0:	06013a03          	ld	s4,96(sp)
    800073a4:	05813a83          	ld	s5,88(sp)
    800073a8:	05013b03          	ld	s6,80(sp)
    800073ac:	04813b83          	ld	s7,72(sp)
    800073b0:	04013c03          	ld	s8,64(sp)
    800073b4:	03813c83          	ld	s9,56(sp)
    800073b8:	03013d03          	ld	s10,48(sp)
    800073bc:	02813d83          	ld	s11,40(sp)
    800073c0:	0d010113          	addi	sp,sp,208
    800073c4:	00008067          	ret
    800073c8:	07300713          	li	a4,115
    800073cc:	1ce78a63          	beq	a5,a4,800075a0 <__printf+0x4b8>
    800073d0:	07800713          	li	a4,120
    800073d4:	1ee79e63          	bne	a5,a4,800075d0 <__printf+0x4e8>
    800073d8:	f7843783          	ld	a5,-136(s0)
    800073dc:	0007a703          	lw	a4,0(a5)
    800073e0:	00878793          	addi	a5,a5,8
    800073e4:	f6f43c23          	sd	a5,-136(s0)
    800073e8:	28074263          	bltz	a4,8000766c <__printf+0x584>
    800073ec:	00002d97          	auipc	s11,0x2
    800073f0:	2ecd8d93          	addi	s11,s11,748 # 800096d8 <digits>
    800073f4:	00f77793          	andi	a5,a4,15
    800073f8:	00fd87b3          	add	a5,s11,a5
    800073fc:	0007c683          	lbu	a3,0(a5)
    80007400:	00f00613          	li	a2,15
    80007404:	0007079b          	sext.w	a5,a4
    80007408:	f8d40023          	sb	a3,-128(s0)
    8000740c:	0047559b          	srliw	a1,a4,0x4
    80007410:	0047569b          	srliw	a3,a4,0x4
    80007414:	00000c93          	li	s9,0
    80007418:	0ee65063          	bge	a2,a4,800074f8 <__printf+0x410>
    8000741c:	00f6f693          	andi	a3,a3,15
    80007420:	00dd86b3          	add	a3,s11,a3
    80007424:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007428:	0087d79b          	srliw	a5,a5,0x8
    8000742c:	00100c93          	li	s9,1
    80007430:	f8d400a3          	sb	a3,-127(s0)
    80007434:	0cb67263          	bgeu	a2,a1,800074f8 <__printf+0x410>
    80007438:	00f7f693          	andi	a3,a5,15
    8000743c:	00dd86b3          	add	a3,s11,a3
    80007440:	0006c583          	lbu	a1,0(a3)
    80007444:	00f00613          	li	a2,15
    80007448:	0047d69b          	srliw	a3,a5,0x4
    8000744c:	f8b40123          	sb	a1,-126(s0)
    80007450:	0047d593          	srli	a1,a5,0x4
    80007454:	28f67e63          	bgeu	a2,a5,800076f0 <__printf+0x608>
    80007458:	00f6f693          	andi	a3,a3,15
    8000745c:	00dd86b3          	add	a3,s11,a3
    80007460:	0006c503          	lbu	a0,0(a3)
    80007464:	0087d813          	srli	a6,a5,0x8
    80007468:	0087d69b          	srliw	a3,a5,0x8
    8000746c:	f8a401a3          	sb	a0,-125(s0)
    80007470:	28b67663          	bgeu	a2,a1,800076fc <__printf+0x614>
    80007474:	00f6f693          	andi	a3,a3,15
    80007478:	00dd86b3          	add	a3,s11,a3
    8000747c:	0006c583          	lbu	a1,0(a3)
    80007480:	00c7d513          	srli	a0,a5,0xc
    80007484:	00c7d69b          	srliw	a3,a5,0xc
    80007488:	f8b40223          	sb	a1,-124(s0)
    8000748c:	29067a63          	bgeu	a2,a6,80007720 <__printf+0x638>
    80007490:	00f6f693          	andi	a3,a3,15
    80007494:	00dd86b3          	add	a3,s11,a3
    80007498:	0006c583          	lbu	a1,0(a3)
    8000749c:	0107d813          	srli	a6,a5,0x10
    800074a0:	0107d69b          	srliw	a3,a5,0x10
    800074a4:	f8b402a3          	sb	a1,-123(s0)
    800074a8:	28a67263          	bgeu	a2,a0,8000772c <__printf+0x644>
    800074ac:	00f6f693          	andi	a3,a3,15
    800074b0:	00dd86b3          	add	a3,s11,a3
    800074b4:	0006c683          	lbu	a3,0(a3)
    800074b8:	0147d79b          	srliw	a5,a5,0x14
    800074bc:	f8d40323          	sb	a3,-122(s0)
    800074c0:	21067663          	bgeu	a2,a6,800076cc <__printf+0x5e4>
    800074c4:	02079793          	slli	a5,a5,0x20
    800074c8:	0207d793          	srli	a5,a5,0x20
    800074cc:	00fd8db3          	add	s11,s11,a5
    800074d0:	000dc683          	lbu	a3,0(s11)
    800074d4:	00800793          	li	a5,8
    800074d8:	00700c93          	li	s9,7
    800074dc:	f8d403a3          	sb	a3,-121(s0)
    800074e0:	00075c63          	bgez	a4,800074f8 <__printf+0x410>
    800074e4:	f9040713          	addi	a4,s0,-112
    800074e8:	00f70733          	add	a4,a4,a5
    800074ec:	02d00693          	li	a3,45
    800074f0:	fed70823          	sb	a3,-16(a4)
    800074f4:	00078c93          	mv	s9,a5
    800074f8:	f8040793          	addi	a5,s0,-128
    800074fc:	01978cb3          	add	s9,a5,s9
    80007500:	f7f40d13          	addi	s10,s0,-129
    80007504:	000cc503          	lbu	a0,0(s9)
    80007508:	fffc8c93          	addi	s9,s9,-1
    8000750c:	00000097          	auipc	ra,0x0
    80007510:	9f8080e7          	jalr	-1544(ra) # 80006f04 <consputc>
    80007514:	ff9d18e3          	bne	s10,s9,80007504 <__printf+0x41c>
    80007518:	0100006f          	j	80007528 <__printf+0x440>
    8000751c:	00000097          	auipc	ra,0x0
    80007520:	9e8080e7          	jalr	-1560(ra) # 80006f04 <consputc>
    80007524:	000c8493          	mv	s1,s9
    80007528:	00094503          	lbu	a0,0(s2)
    8000752c:	c60510e3          	bnez	a0,8000718c <__printf+0xa4>
    80007530:	e40c0ee3          	beqz	s8,8000738c <__printf+0x2a4>
    80007534:	00005517          	auipc	a0,0x5
    80007538:	5fc50513          	addi	a0,a0,1532 # 8000cb30 <pr>
    8000753c:	00001097          	auipc	ra,0x1
    80007540:	94c080e7          	jalr	-1716(ra) # 80007e88 <release>
    80007544:	e49ff06f          	j	8000738c <__printf+0x2a4>
    80007548:	f7843783          	ld	a5,-136(s0)
    8000754c:	03000513          	li	a0,48
    80007550:	01000d13          	li	s10,16
    80007554:	00878713          	addi	a4,a5,8
    80007558:	0007bc83          	ld	s9,0(a5)
    8000755c:	f6e43c23          	sd	a4,-136(s0)
    80007560:	00000097          	auipc	ra,0x0
    80007564:	9a4080e7          	jalr	-1628(ra) # 80006f04 <consputc>
    80007568:	07800513          	li	a0,120
    8000756c:	00000097          	auipc	ra,0x0
    80007570:	998080e7          	jalr	-1640(ra) # 80006f04 <consputc>
    80007574:	00002d97          	auipc	s11,0x2
    80007578:	164d8d93          	addi	s11,s11,356 # 800096d8 <digits>
    8000757c:	03ccd793          	srli	a5,s9,0x3c
    80007580:	00fd87b3          	add	a5,s11,a5
    80007584:	0007c503          	lbu	a0,0(a5)
    80007588:	fffd0d1b          	addiw	s10,s10,-1
    8000758c:	004c9c93          	slli	s9,s9,0x4
    80007590:	00000097          	auipc	ra,0x0
    80007594:	974080e7          	jalr	-1676(ra) # 80006f04 <consputc>
    80007598:	fe0d12e3          	bnez	s10,8000757c <__printf+0x494>
    8000759c:	f8dff06f          	j	80007528 <__printf+0x440>
    800075a0:	f7843783          	ld	a5,-136(s0)
    800075a4:	0007bc83          	ld	s9,0(a5)
    800075a8:	00878793          	addi	a5,a5,8
    800075ac:	f6f43c23          	sd	a5,-136(s0)
    800075b0:	000c9a63          	bnez	s9,800075c4 <__printf+0x4dc>
    800075b4:	1080006f          	j	800076bc <__printf+0x5d4>
    800075b8:	001c8c93          	addi	s9,s9,1
    800075bc:	00000097          	auipc	ra,0x0
    800075c0:	948080e7          	jalr	-1720(ra) # 80006f04 <consputc>
    800075c4:	000cc503          	lbu	a0,0(s9)
    800075c8:	fe0518e3          	bnez	a0,800075b8 <__printf+0x4d0>
    800075cc:	f5dff06f          	j	80007528 <__printf+0x440>
    800075d0:	02500513          	li	a0,37
    800075d4:	00000097          	auipc	ra,0x0
    800075d8:	930080e7          	jalr	-1744(ra) # 80006f04 <consputc>
    800075dc:	000c8513          	mv	a0,s9
    800075e0:	00000097          	auipc	ra,0x0
    800075e4:	924080e7          	jalr	-1756(ra) # 80006f04 <consputc>
    800075e8:	f41ff06f          	j	80007528 <__printf+0x440>
    800075ec:	02500513          	li	a0,37
    800075f0:	00000097          	auipc	ra,0x0
    800075f4:	914080e7          	jalr	-1772(ra) # 80006f04 <consputc>
    800075f8:	f31ff06f          	j	80007528 <__printf+0x440>
    800075fc:	00030513          	mv	a0,t1
    80007600:	00000097          	auipc	ra,0x0
    80007604:	7bc080e7          	jalr	1980(ra) # 80007dbc <acquire>
    80007608:	b4dff06f          	j	80007154 <__printf+0x6c>
    8000760c:	40c0053b          	negw	a0,a2
    80007610:	00a00713          	li	a4,10
    80007614:	02e576bb          	remuw	a3,a0,a4
    80007618:	00002d97          	auipc	s11,0x2
    8000761c:	0c0d8d93          	addi	s11,s11,192 # 800096d8 <digits>
    80007620:	ff700593          	li	a1,-9
    80007624:	02069693          	slli	a3,a3,0x20
    80007628:	0206d693          	srli	a3,a3,0x20
    8000762c:	00dd86b3          	add	a3,s11,a3
    80007630:	0006c683          	lbu	a3,0(a3)
    80007634:	02e557bb          	divuw	a5,a0,a4
    80007638:	f8d40023          	sb	a3,-128(s0)
    8000763c:	10b65e63          	bge	a2,a1,80007758 <__printf+0x670>
    80007640:	06300593          	li	a1,99
    80007644:	02e7f6bb          	remuw	a3,a5,a4
    80007648:	02069693          	slli	a3,a3,0x20
    8000764c:	0206d693          	srli	a3,a3,0x20
    80007650:	00dd86b3          	add	a3,s11,a3
    80007654:	0006c683          	lbu	a3,0(a3)
    80007658:	02e7d73b          	divuw	a4,a5,a4
    8000765c:	00200793          	li	a5,2
    80007660:	f8d400a3          	sb	a3,-127(s0)
    80007664:	bca5ece3          	bltu	a1,a0,8000723c <__printf+0x154>
    80007668:	ce5ff06f          	j	8000734c <__printf+0x264>
    8000766c:	40e007bb          	negw	a5,a4
    80007670:	00002d97          	auipc	s11,0x2
    80007674:	068d8d93          	addi	s11,s11,104 # 800096d8 <digits>
    80007678:	00f7f693          	andi	a3,a5,15
    8000767c:	00dd86b3          	add	a3,s11,a3
    80007680:	0006c583          	lbu	a1,0(a3)
    80007684:	ff100613          	li	a2,-15
    80007688:	0047d69b          	srliw	a3,a5,0x4
    8000768c:	f8b40023          	sb	a1,-128(s0)
    80007690:	0047d59b          	srliw	a1,a5,0x4
    80007694:	0ac75e63          	bge	a4,a2,80007750 <__printf+0x668>
    80007698:	00f6f693          	andi	a3,a3,15
    8000769c:	00dd86b3          	add	a3,s11,a3
    800076a0:	0006c603          	lbu	a2,0(a3)
    800076a4:	00f00693          	li	a3,15
    800076a8:	0087d79b          	srliw	a5,a5,0x8
    800076ac:	f8c400a3          	sb	a2,-127(s0)
    800076b0:	d8b6e4e3          	bltu	a3,a1,80007438 <__printf+0x350>
    800076b4:	00200793          	li	a5,2
    800076b8:	e2dff06f          	j	800074e4 <__printf+0x3fc>
    800076bc:	00002c97          	auipc	s9,0x2
    800076c0:	ffcc8c93          	addi	s9,s9,-4 # 800096b8 <_ZZ13printInteger1mE6digits+0x3b0>
    800076c4:	02800513          	li	a0,40
    800076c8:	ef1ff06f          	j	800075b8 <__printf+0x4d0>
    800076cc:	00700793          	li	a5,7
    800076d0:	00600c93          	li	s9,6
    800076d4:	e0dff06f          	j	800074e0 <__printf+0x3f8>
    800076d8:	00700793          	li	a5,7
    800076dc:	00600c93          	li	s9,6
    800076e0:	c69ff06f          	j	80007348 <__printf+0x260>
    800076e4:	00300793          	li	a5,3
    800076e8:	00200c93          	li	s9,2
    800076ec:	c5dff06f          	j	80007348 <__printf+0x260>
    800076f0:	00300793          	li	a5,3
    800076f4:	00200c93          	li	s9,2
    800076f8:	de9ff06f          	j	800074e0 <__printf+0x3f8>
    800076fc:	00400793          	li	a5,4
    80007700:	00300c93          	li	s9,3
    80007704:	dddff06f          	j	800074e0 <__printf+0x3f8>
    80007708:	00400793          	li	a5,4
    8000770c:	00300c93          	li	s9,3
    80007710:	c39ff06f          	j	80007348 <__printf+0x260>
    80007714:	00500793          	li	a5,5
    80007718:	00400c93          	li	s9,4
    8000771c:	c2dff06f          	j	80007348 <__printf+0x260>
    80007720:	00500793          	li	a5,5
    80007724:	00400c93          	li	s9,4
    80007728:	db9ff06f          	j	800074e0 <__printf+0x3f8>
    8000772c:	00600793          	li	a5,6
    80007730:	00500c93          	li	s9,5
    80007734:	dadff06f          	j	800074e0 <__printf+0x3f8>
    80007738:	00600793          	li	a5,6
    8000773c:	00500c93          	li	s9,5
    80007740:	c09ff06f          	j	80007348 <__printf+0x260>
    80007744:	00800793          	li	a5,8
    80007748:	00700c93          	li	s9,7
    8000774c:	bfdff06f          	j	80007348 <__printf+0x260>
    80007750:	00100793          	li	a5,1
    80007754:	d91ff06f          	j	800074e4 <__printf+0x3fc>
    80007758:	00100793          	li	a5,1
    8000775c:	bf1ff06f          	j	8000734c <__printf+0x264>
    80007760:	00900793          	li	a5,9
    80007764:	00800c93          	li	s9,8
    80007768:	be1ff06f          	j	80007348 <__printf+0x260>
    8000776c:	00002517          	auipc	a0,0x2
    80007770:	f5450513          	addi	a0,a0,-172 # 800096c0 <_ZZ13printInteger1mE6digits+0x3b8>
    80007774:	00000097          	auipc	ra,0x0
    80007778:	918080e7          	jalr	-1768(ra) # 8000708c <panic>

000000008000777c <printfinit>:
    8000777c:	fe010113          	addi	sp,sp,-32
    80007780:	00813823          	sd	s0,16(sp)
    80007784:	00913423          	sd	s1,8(sp)
    80007788:	00113c23          	sd	ra,24(sp)
    8000778c:	02010413          	addi	s0,sp,32
    80007790:	00005497          	auipc	s1,0x5
    80007794:	3a048493          	addi	s1,s1,928 # 8000cb30 <pr>
    80007798:	00048513          	mv	a0,s1
    8000779c:	00002597          	auipc	a1,0x2
    800077a0:	f3458593          	addi	a1,a1,-204 # 800096d0 <_ZZ13printInteger1mE6digits+0x3c8>
    800077a4:	00000097          	auipc	ra,0x0
    800077a8:	5f4080e7          	jalr	1524(ra) # 80007d98 <initlock>
    800077ac:	01813083          	ld	ra,24(sp)
    800077b0:	01013403          	ld	s0,16(sp)
    800077b4:	0004ac23          	sw	zero,24(s1)
    800077b8:	00813483          	ld	s1,8(sp)
    800077bc:	02010113          	addi	sp,sp,32
    800077c0:	00008067          	ret

00000000800077c4 <uartinit>:
    800077c4:	ff010113          	addi	sp,sp,-16
    800077c8:	00813423          	sd	s0,8(sp)
    800077cc:	01010413          	addi	s0,sp,16
    800077d0:	100007b7          	lui	a5,0x10000
    800077d4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800077d8:	f8000713          	li	a4,-128
    800077dc:	00e781a3          	sb	a4,3(a5)
    800077e0:	00300713          	li	a4,3
    800077e4:	00e78023          	sb	a4,0(a5)
    800077e8:	000780a3          	sb	zero,1(a5)
    800077ec:	00e781a3          	sb	a4,3(a5)
    800077f0:	00700693          	li	a3,7
    800077f4:	00d78123          	sb	a3,2(a5)
    800077f8:	00e780a3          	sb	a4,1(a5)
    800077fc:	00813403          	ld	s0,8(sp)
    80007800:	01010113          	addi	sp,sp,16
    80007804:	00008067          	ret

0000000080007808 <uartputc>:
    80007808:	00004797          	auipc	a5,0x4
    8000780c:	0307a783          	lw	a5,48(a5) # 8000b838 <panicked>
    80007810:	00078463          	beqz	a5,80007818 <uartputc+0x10>
    80007814:	0000006f          	j	80007814 <uartputc+0xc>
    80007818:	fd010113          	addi	sp,sp,-48
    8000781c:	02813023          	sd	s0,32(sp)
    80007820:	00913c23          	sd	s1,24(sp)
    80007824:	01213823          	sd	s2,16(sp)
    80007828:	01313423          	sd	s3,8(sp)
    8000782c:	02113423          	sd	ra,40(sp)
    80007830:	03010413          	addi	s0,sp,48
    80007834:	00004917          	auipc	s2,0x4
    80007838:	00c90913          	addi	s2,s2,12 # 8000b840 <uart_tx_r>
    8000783c:	00093783          	ld	a5,0(s2)
    80007840:	00004497          	auipc	s1,0x4
    80007844:	00848493          	addi	s1,s1,8 # 8000b848 <uart_tx_w>
    80007848:	0004b703          	ld	a4,0(s1)
    8000784c:	02078693          	addi	a3,a5,32
    80007850:	00050993          	mv	s3,a0
    80007854:	02e69c63          	bne	a3,a4,8000788c <uartputc+0x84>
    80007858:	00001097          	auipc	ra,0x1
    8000785c:	834080e7          	jalr	-1996(ra) # 8000808c <push_on>
    80007860:	00093783          	ld	a5,0(s2)
    80007864:	0004b703          	ld	a4,0(s1)
    80007868:	02078793          	addi	a5,a5,32
    8000786c:	00e79463          	bne	a5,a4,80007874 <uartputc+0x6c>
    80007870:	0000006f          	j	80007870 <uartputc+0x68>
    80007874:	00001097          	auipc	ra,0x1
    80007878:	88c080e7          	jalr	-1908(ra) # 80008100 <pop_on>
    8000787c:	00093783          	ld	a5,0(s2)
    80007880:	0004b703          	ld	a4,0(s1)
    80007884:	02078693          	addi	a3,a5,32
    80007888:	fce688e3          	beq	a3,a4,80007858 <uartputc+0x50>
    8000788c:	01f77693          	andi	a3,a4,31
    80007890:	00005597          	auipc	a1,0x5
    80007894:	2c058593          	addi	a1,a1,704 # 8000cb50 <uart_tx_buf>
    80007898:	00d586b3          	add	a3,a1,a3
    8000789c:	00170713          	addi	a4,a4,1
    800078a0:	01368023          	sb	s3,0(a3)
    800078a4:	00e4b023          	sd	a4,0(s1)
    800078a8:	10000637          	lui	a2,0x10000
    800078ac:	02f71063          	bne	a4,a5,800078cc <uartputc+0xc4>
    800078b0:	0340006f          	j	800078e4 <uartputc+0xdc>
    800078b4:	00074703          	lbu	a4,0(a4)
    800078b8:	00f93023          	sd	a5,0(s2)
    800078bc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800078c0:	00093783          	ld	a5,0(s2)
    800078c4:	0004b703          	ld	a4,0(s1)
    800078c8:	00f70e63          	beq	a4,a5,800078e4 <uartputc+0xdc>
    800078cc:	00564683          	lbu	a3,5(a2)
    800078d0:	01f7f713          	andi	a4,a5,31
    800078d4:	00e58733          	add	a4,a1,a4
    800078d8:	0206f693          	andi	a3,a3,32
    800078dc:	00178793          	addi	a5,a5,1
    800078e0:	fc069ae3          	bnez	a3,800078b4 <uartputc+0xac>
    800078e4:	02813083          	ld	ra,40(sp)
    800078e8:	02013403          	ld	s0,32(sp)
    800078ec:	01813483          	ld	s1,24(sp)
    800078f0:	01013903          	ld	s2,16(sp)
    800078f4:	00813983          	ld	s3,8(sp)
    800078f8:	03010113          	addi	sp,sp,48
    800078fc:	00008067          	ret

0000000080007900 <uartputc_sync>:
    80007900:	ff010113          	addi	sp,sp,-16
    80007904:	00813423          	sd	s0,8(sp)
    80007908:	01010413          	addi	s0,sp,16
    8000790c:	00004717          	auipc	a4,0x4
    80007910:	f2c72703          	lw	a4,-212(a4) # 8000b838 <panicked>
    80007914:	02071663          	bnez	a4,80007940 <uartputc_sync+0x40>
    80007918:	00050793          	mv	a5,a0
    8000791c:	100006b7          	lui	a3,0x10000
    80007920:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007924:	02077713          	andi	a4,a4,32
    80007928:	fe070ce3          	beqz	a4,80007920 <uartputc_sync+0x20>
    8000792c:	0ff7f793          	andi	a5,a5,255
    80007930:	00f68023          	sb	a5,0(a3)
    80007934:	00813403          	ld	s0,8(sp)
    80007938:	01010113          	addi	sp,sp,16
    8000793c:	00008067          	ret
    80007940:	0000006f          	j	80007940 <uartputc_sync+0x40>

0000000080007944 <uartstart>:
    80007944:	ff010113          	addi	sp,sp,-16
    80007948:	00813423          	sd	s0,8(sp)
    8000794c:	01010413          	addi	s0,sp,16
    80007950:	00004617          	auipc	a2,0x4
    80007954:	ef060613          	addi	a2,a2,-272 # 8000b840 <uart_tx_r>
    80007958:	00004517          	auipc	a0,0x4
    8000795c:	ef050513          	addi	a0,a0,-272 # 8000b848 <uart_tx_w>
    80007960:	00063783          	ld	a5,0(a2)
    80007964:	00053703          	ld	a4,0(a0)
    80007968:	04f70263          	beq	a4,a5,800079ac <uartstart+0x68>
    8000796c:	100005b7          	lui	a1,0x10000
    80007970:	00005817          	auipc	a6,0x5
    80007974:	1e080813          	addi	a6,a6,480 # 8000cb50 <uart_tx_buf>
    80007978:	01c0006f          	j	80007994 <uartstart+0x50>
    8000797c:	0006c703          	lbu	a4,0(a3)
    80007980:	00f63023          	sd	a5,0(a2)
    80007984:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007988:	00063783          	ld	a5,0(a2)
    8000798c:	00053703          	ld	a4,0(a0)
    80007990:	00f70e63          	beq	a4,a5,800079ac <uartstart+0x68>
    80007994:	01f7f713          	andi	a4,a5,31
    80007998:	00e806b3          	add	a3,a6,a4
    8000799c:	0055c703          	lbu	a4,5(a1)
    800079a0:	00178793          	addi	a5,a5,1
    800079a4:	02077713          	andi	a4,a4,32
    800079a8:	fc071ae3          	bnez	a4,8000797c <uartstart+0x38>
    800079ac:	00813403          	ld	s0,8(sp)
    800079b0:	01010113          	addi	sp,sp,16
    800079b4:	00008067          	ret

00000000800079b8 <uartgetc>:
    800079b8:	ff010113          	addi	sp,sp,-16
    800079bc:	00813423          	sd	s0,8(sp)
    800079c0:	01010413          	addi	s0,sp,16
    800079c4:	10000737          	lui	a4,0x10000
    800079c8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800079cc:	0017f793          	andi	a5,a5,1
    800079d0:	00078c63          	beqz	a5,800079e8 <uartgetc+0x30>
    800079d4:	00074503          	lbu	a0,0(a4)
    800079d8:	0ff57513          	andi	a0,a0,255
    800079dc:	00813403          	ld	s0,8(sp)
    800079e0:	01010113          	addi	sp,sp,16
    800079e4:	00008067          	ret
    800079e8:	fff00513          	li	a0,-1
    800079ec:	ff1ff06f          	j	800079dc <uartgetc+0x24>

00000000800079f0 <uartintr>:
    800079f0:	100007b7          	lui	a5,0x10000
    800079f4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800079f8:	0017f793          	andi	a5,a5,1
    800079fc:	0a078463          	beqz	a5,80007aa4 <uartintr+0xb4>
    80007a00:	fe010113          	addi	sp,sp,-32
    80007a04:	00813823          	sd	s0,16(sp)
    80007a08:	00913423          	sd	s1,8(sp)
    80007a0c:	00113c23          	sd	ra,24(sp)
    80007a10:	02010413          	addi	s0,sp,32
    80007a14:	100004b7          	lui	s1,0x10000
    80007a18:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007a1c:	0ff57513          	andi	a0,a0,255
    80007a20:	fffff097          	auipc	ra,0xfffff
    80007a24:	534080e7          	jalr	1332(ra) # 80006f54 <consoleintr>
    80007a28:	0054c783          	lbu	a5,5(s1)
    80007a2c:	0017f793          	andi	a5,a5,1
    80007a30:	fe0794e3          	bnez	a5,80007a18 <uartintr+0x28>
    80007a34:	00004617          	auipc	a2,0x4
    80007a38:	e0c60613          	addi	a2,a2,-500 # 8000b840 <uart_tx_r>
    80007a3c:	00004517          	auipc	a0,0x4
    80007a40:	e0c50513          	addi	a0,a0,-500 # 8000b848 <uart_tx_w>
    80007a44:	00063783          	ld	a5,0(a2)
    80007a48:	00053703          	ld	a4,0(a0)
    80007a4c:	04f70263          	beq	a4,a5,80007a90 <uartintr+0xa0>
    80007a50:	100005b7          	lui	a1,0x10000
    80007a54:	00005817          	auipc	a6,0x5
    80007a58:	0fc80813          	addi	a6,a6,252 # 8000cb50 <uart_tx_buf>
    80007a5c:	01c0006f          	j	80007a78 <uartintr+0x88>
    80007a60:	0006c703          	lbu	a4,0(a3)
    80007a64:	00f63023          	sd	a5,0(a2)
    80007a68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a6c:	00063783          	ld	a5,0(a2)
    80007a70:	00053703          	ld	a4,0(a0)
    80007a74:	00f70e63          	beq	a4,a5,80007a90 <uartintr+0xa0>
    80007a78:	01f7f713          	andi	a4,a5,31
    80007a7c:	00e806b3          	add	a3,a6,a4
    80007a80:	0055c703          	lbu	a4,5(a1)
    80007a84:	00178793          	addi	a5,a5,1
    80007a88:	02077713          	andi	a4,a4,32
    80007a8c:	fc071ae3          	bnez	a4,80007a60 <uartintr+0x70>
    80007a90:	01813083          	ld	ra,24(sp)
    80007a94:	01013403          	ld	s0,16(sp)
    80007a98:	00813483          	ld	s1,8(sp)
    80007a9c:	02010113          	addi	sp,sp,32
    80007aa0:	00008067          	ret
    80007aa4:	00004617          	auipc	a2,0x4
    80007aa8:	d9c60613          	addi	a2,a2,-612 # 8000b840 <uart_tx_r>
    80007aac:	00004517          	auipc	a0,0x4
    80007ab0:	d9c50513          	addi	a0,a0,-612 # 8000b848 <uart_tx_w>
    80007ab4:	00063783          	ld	a5,0(a2)
    80007ab8:	00053703          	ld	a4,0(a0)
    80007abc:	04f70263          	beq	a4,a5,80007b00 <uartintr+0x110>
    80007ac0:	100005b7          	lui	a1,0x10000
    80007ac4:	00005817          	auipc	a6,0x5
    80007ac8:	08c80813          	addi	a6,a6,140 # 8000cb50 <uart_tx_buf>
    80007acc:	01c0006f          	j	80007ae8 <uartintr+0xf8>
    80007ad0:	0006c703          	lbu	a4,0(a3)
    80007ad4:	00f63023          	sd	a5,0(a2)
    80007ad8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007adc:	00063783          	ld	a5,0(a2)
    80007ae0:	00053703          	ld	a4,0(a0)
    80007ae4:	02f70063          	beq	a4,a5,80007b04 <uartintr+0x114>
    80007ae8:	01f7f713          	andi	a4,a5,31
    80007aec:	00e806b3          	add	a3,a6,a4
    80007af0:	0055c703          	lbu	a4,5(a1)
    80007af4:	00178793          	addi	a5,a5,1
    80007af8:	02077713          	andi	a4,a4,32
    80007afc:	fc071ae3          	bnez	a4,80007ad0 <uartintr+0xe0>
    80007b00:	00008067          	ret
    80007b04:	00008067          	ret

0000000080007b08 <kinit>:
    80007b08:	fc010113          	addi	sp,sp,-64
    80007b0c:	02913423          	sd	s1,40(sp)
    80007b10:	fffff7b7          	lui	a5,0xfffff
    80007b14:	00006497          	auipc	s1,0x6
    80007b18:	05b48493          	addi	s1,s1,91 # 8000db6f <end+0xfff>
    80007b1c:	02813823          	sd	s0,48(sp)
    80007b20:	01313c23          	sd	s3,24(sp)
    80007b24:	00f4f4b3          	and	s1,s1,a5
    80007b28:	02113c23          	sd	ra,56(sp)
    80007b2c:	03213023          	sd	s2,32(sp)
    80007b30:	01413823          	sd	s4,16(sp)
    80007b34:	01513423          	sd	s5,8(sp)
    80007b38:	04010413          	addi	s0,sp,64
    80007b3c:	000017b7          	lui	a5,0x1
    80007b40:	01100993          	li	s3,17
    80007b44:	00f487b3          	add	a5,s1,a5
    80007b48:	01b99993          	slli	s3,s3,0x1b
    80007b4c:	06f9e063          	bltu	s3,a5,80007bac <kinit+0xa4>
    80007b50:	00005a97          	auipc	s5,0x5
    80007b54:	020a8a93          	addi	s5,s5,32 # 8000cb70 <end>
    80007b58:	0754ec63          	bltu	s1,s5,80007bd0 <kinit+0xc8>
    80007b5c:	0734fa63          	bgeu	s1,s3,80007bd0 <kinit+0xc8>
    80007b60:	00088a37          	lui	s4,0x88
    80007b64:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007b68:	00004917          	auipc	s2,0x4
    80007b6c:	ce890913          	addi	s2,s2,-792 # 8000b850 <kmem>
    80007b70:	00ca1a13          	slli	s4,s4,0xc
    80007b74:	0140006f          	j	80007b88 <kinit+0x80>
    80007b78:	000017b7          	lui	a5,0x1
    80007b7c:	00f484b3          	add	s1,s1,a5
    80007b80:	0554e863          	bltu	s1,s5,80007bd0 <kinit+0xc8>
    80007b84:	0534f663          	bgeu	s1,s3,80007bd0 <kinit+0xc8>
    80007b88:	00001637          	lui	a2,0x1
    80007b8c:	00100593          	li	a1,1
    80007b90:	00048513          	mv	a0,s1
    80007b94:	00000097          	auipc	ra,0x0
    80007b98:	5e4080e7          	jalr	1508(ra) # 80008178 <__memset>
    80007b9c:	00093783          	ld	a5,0(s2)
    80007ba0:	00f4b023          	sd	a5,0(s1)
    80007ba4:	00993023          	sd	s1,0(s2)
    80007ba8:	fd4498e3          	bne	s1,s4,80007b78 <kinit+0x70>
    80007bac:	03813083          	ld	ra,56(sp)
    80007bb0:	03013403          	ld	s0,48(sp)
    80007bb4:	02813483          	ld	s1,40(sp)
    80007bb8:	02013903          	ld	s2,32(sp)
    80007bbc:	01813983          	ld	s3,24(sp)
    80007bc0:	01013a03          	ld	s4,16(sp)
    80007bc4:	00813a83          	ld	s5,8(sp)
    80007bc8:	04010113          	addi	sp,sp,64
    80007bcc:	00008067          	ret
    80007bd0:	00002517          	auipc	a0,0x2
    80007bd4:	b2050513          	addi	a0,a0,-1248 # 800096f0 <digits+0x18>
    80007bd8:	fffff097          	auipc	ra,0xfffff
    80007bdc:	4b4080e7          	jalr	1204(ra) # 8000708c <panic>

0000000080007be0 <freerange>:
    80007be0:	fc010113          	addi	sp,sp,-64
    80007be4:	000017b7          	lui	a5,0x1
    80007be8:	02913423          	sd	s1,40(sp)
    80007bec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007bf0:	009504b3          	add	s1,a0,s1
    80007bf4:	fffff537          	lui	a0,0xfffff
    80007bf8:	02813823          	sd	s0,48(sp)
    80007bfc:	02113c23          	sd	ra,56(sp)
    80007c00:	03213023          	sd	s2,32(sp)
    80007c04:	01313c23          	sd	s3,24(sp)
    80007c08:	01413823          	sd	s4,16(sp)
    80007c0c:	01513423          	sd	s5,8(sp)
    80007c10:	01613023          	sd	s6,0(sp)
    80007c14:	04010413          	addi	s0,sp,64
    80007c18:	00a4f4b3          	and	s1,s1,a0
    80007c1c:	00f487b3          	add	a5,s1,a5
    80007c20:	06f5e463          	bltu	a1,a5,80007c88 <freerange+0xa8>
    80007c24:	00005a97          	auipc	s5,0x5
    80007c28:	f4ca8a93          	addi	s5,s5,-180 # 8000cb70 <end>
    80007c2c:	0954e263          	bltu	s1,s5,80007cb0 <freerange+0xd0>
    80007c30:	01100993          	li	s3,17
    80007c34:	01b99993          	slli	s3,s3,0x1b
    80007c38:	0734fc63          	bgeu	s1,s3,80007cb0 <freerange+0xd0>
    80007c3c:	00058a13          	mv	s4,a1
    80007c40:	00004917          	auipc	s2,0x4
    80007c44:	c1090913          	addi	s2,s2,-1008 # 8000b850 <kmem>
    80007c48:	00002b37          	lui	s6,0x2
    80007c4c:	0140006f          	j	80007c60 <freerange+0x80>
    80007c50:	000017b7          	lui	a5,0x1
    80007c54:	00f484b3          	add	s1,s1,a5
    80007c58:	0554ec63          	bltu	s1,s5,80007cb0 <freerange+0xd0>
    80007c5c:	0534fa63          	bgeu	s1,s3,80007cb0 <freerange+0xd0>
    80007c60:	00001637          	lui	a2,0x1
    80007c64:	00100593          	li	a1,1
    80007c68:	00048513          	mv	a0,s1
    80007c6c:	00000097          	auipc	ra,0x0
    80007c70:	50c080e7          	jalr	1292(ra) # 80008178 <__memset>
    80007c74:	00093703          	ld	a4,0(s2)
    80007c78:	016487b3          	add	a5,s1,s6
    80007c7c:	00e4b023          	sd	a4,0(s1)
    80007c80:	00993023          	sd	s1,0(s2)
    80007c84:	fcfa76e3          	bgeu	s4,a5,80007c50 <freerange+0x70>
    80007c88:	03813083          	ld	ra,56(sp)
    80007c8c:	03013403          	ld	s0,48(sp)
    80007c90:	02813483          	ld	s1,40(sp)
    80007c94:	02013903          	ld	s2,32(sp)
    80007c98:	01813983          	ld	s3,24(sp)
    80007c9c:	01013a03          	ld	s4,16(sp)
    80007ca0:	00813a83          	ld	s5,8(sp)
    80007ca4:	00013b03          	ld	s6,0(sp)
    80007ca8:	04010113          	addi	sp,sp,64
    80007cac:	00008067          	ret
    80007cb0:	00002517          	auipc	a0,0x2
    80007cb4:	a4050513          	addi	a0,a0,-1472 # 800096f0 <digits+0x18>
    80007cb8:	fffff097          	auipc	ra,0xfffff
    80007cbc:	3d4080e7          	jalr	980(ra) # 8000708c <panic>

0000000080007cc0 <kfree>:
    80007cc0:	fe010113          	addi	sp,sp,-32
    80007cc4:	00813823          	sd	s0,16(sp)
    80007cc8:	00113c23          	sd	ra,24(sp)
    80007ccc:	00913423          	sd	s1,8(sp)
    80007cd0:	02010413          	addi	s0,sp,32
    80007cd4:	03451793          	slli	a5,a0,0x34
    80007cd8:	04079c63          	bnez	a5,80007d30 <kfree+0x70>
    80007cdc:	00005797          	auipc	a5,0x5
    80007ce0:	e9478793          	addi	a5,a5,-364 # 8000cb70 <end>
    80007ce4:	00050493          	mv	s1,a0
    80007ce8:	04f56463          	bltu	a0,a5,80007d30 <kfree+0x70>
    80007cec:	01100793          	li	a5,17
    80007cf0:	01b79793          	slli	a5,a5,0x1b
    80007cf4:	02f57e63          	bgeu	a0,a5,80007d30 <kfree+0x70>
    80007cf8:	00001637          	lui	a2,0x1
    80007cfc:	00100593          	li	a1,1
    80007d00:	00000097          	auipc	ra,0x0
    80007d04:	478080e7          	jalr	1144(ra) # 80008178 <__memset>
    80007d08:	00004797          	auipc	a5,0x4
    80007d0c:	b4878793          	addi	a5,a5,-1208 # 8000b850 <kmem>
    80007d10:	0007b703          	ld	a4,0(a5)
    80007d14:	01813083          	ld	ra,24(sp)
    80007d18:	01013403          	ld	s0,16(sp)
    80007d1c:	00e4b023          	sd	a4,0(s1)
    80007d20:	0097b023          	sd	s1,0(a5)
    80007d24:	00813483          	ld	s1,8(sp)
    80007d28:	02010113          	addi	sp,sp,32
    80007d2c:	00008067          	ret
    80007d30:	00002517          	auipc	a0,0x2
    80007d34:	9c050513          	addi	a0,a0,-1600 # 800096f0 <digits+0x18>
    80007d38:	fffff097          	auipc	ra,0xfffff
    80007d3c:	354080e7          	jalr	852(ra) # 8000708c <panic>

0000000080007d40 <kalloc>:
    80007d40:	fe010113          	addi	sp,sp,-32
    80007d44:	00813823          	sd	s0,16(sp)
    80007d48:	00913423          	sd	s1,8(sp)
    80007d4c:	00113c23          	sd	ra,24(sp)
    80007d50:	02010413          	addi	s0,sp,32
    80007d54:	00004797          	auipc	a5,0x4
    80007d58:	afc78793          	addi	a5,a5,-1284 # 8000b850 <kmem>
    80007d5c:	0007b483          	ld	s1,0(a5)
    80007d60:	02048063          	beqz	s1,80007d80 <kalloc+0x40>
    80007d64:	0004b703          	ld	a4,0(s1)
    80007d68:	00001637          	lui	a2,0x1
    80007d6c:	00500593          	li	a1,5
    80007d70:	00048513          	mv	a0,s1
    80007d74:	00e7b023          	sd	a4,0(a5)
    80007d78:	00000097          	auipc	ra,0x0
    80007d7c:	400080e7          	jalr	1024(ra) # 80008178 <__memset>
    80007d80:	01813083          	ld	ra,24(sp)
    80007d84:	01013403          	ld	s0,16(sp)
    80007d88:	00048513          	mv	a0,s1
    80007d8c:	00813483          	ld	s1,8(sp)
    80007d90:	02010113          	addi	sp,sp,32
    80007d94:	00008067          	ret

0000000080007d98 <initlock>:
    80007d98:	ff010113          	addi	sp,sp,-16
    80007d9c:	00813423          	sd	s0,8(sp)
    80007da0:	01010413          	addi	s0,sp,16
    80007da4:	00813403          	ld	s0,8(sp)
    80007da8:	00b53423          	sd	a1,8(a0)
    80007dac:	00052023          	sw	zero,0(a0)
    80007db0:	00053823          	sd	zero,16(a0)
    80007db4:	01010113          	addi	sp,sp,16
    80007db8:	00008067          	ret

0000000080007dbc <acquire>:
    80007dbc:	fe010113          	addi	sp,sp,-32
    80007dc0:	00813823          	sd	s0,16(sp)
    80007dc4:	00913423          	sd	s1,8(sp)
    80007dc8:	00113c23          	sd	ra,24(sp)
    80007dcc:	01213023          	sd	s2,0(sp)
    80007dd0:	02010413          	addi	s0,sp,32
    80007dd4:	00050493          	mv	s1,a0
    80007dd8:	10002973          	csrr	s2,sstatus
    80007ddc:	100027f3          	csrr	a5,sstatus
    80007de0:	ffd7f793          	andi	a5,a5,-3
    80007de4:	10079073          	csrw	sstatus,a5
    80007de8:	fffff097          	auipc	ra,0xfffff
    80007dec:	8ec080e7          	jalr	-1812(ra) # 800066d4 <mycpu>
    80007df0:	07852783          	lw	a5,120(a0)
    80007df4:	06078e63          	beqz	a5,80007e70 <acquire+0xb4>
    80007df8:	fffff097          	auipc	ra,0xfffff
    80007dfc:	8dc080e7          	jalr	-1828(ra) # 800066d4 <mycpu>
    80007e00:	07852783          	lw	a5,120(a0)
    80007e04:	0004a703          	lw	a4,0(s1)
    80007e08:	0017879b          	addiw	a5,a5,1
    80007e0c:	06f52c23          	sw	a5,120(a0)
    80007e10:	04071063          	bnez	a4,80007e50 <acquire+0x94>
    80007e14:	00100713          	li	a4,1
    80007e18:	00070793          	mv	a5,a4
    80007e1c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007e20:	0007879b          	sext.w	a5,a5
    80007e24:	fe079ae3          	bnez	a5,80007e18 <acquire+0x5c>
    80007e28:	0ff0000f          	fence
    80007e2c:	fffff097          	auipc	ra,0xfffff
    80007e30:	8a8080e7          	jalr	-1880(ra) # 800066d4 <mycpu>
    80007e34:	01813083          	ld	ra,24(sp)
    80007e38:	01013403          	ld	s0,16(sp)
    80007e3c:	00a4b823          	sd	a0,16(s1)
    80007e40:	00013903          	ld	s2,0(sp)
    80007e44:	00813483          	ld	s1,8(sp)
    80007e48:	02010113          	addi	sp,sp,32
    80007e4c:	00008067          	ret
    80007e50:	0104b903          	ld	s2,16(s1)
    80007e54:	fffff097          	auipc	ra,0xfffff
    80007e58:	880080e7          	jalr	-1920(ra) # 800066d4 <mycpu>
    80007e5c:	faa91ce3          	bne	s2,a0,80007e14 <acquire+0x58>
    80007e60:	00002517          	auipc	a0,0x2
    80007e64:	89850513          	addi	a0,a0,-1896 # 800096f8 <digits+0x20>
    80007e68:	fffff097          	auipc	ra,0xfffff
    80007e6c:	224080e7          	jalr	548(ra) # 8000708c <panic>
    80007e70:	00195913          	srli	s2,s2,0x1
    80007e74:	fffff097          	auipc	ra,0xfffff
    80007e78:	860080e7          	jalr	-1952(ra) # 800066d4 <mycpu>
    80007e7c:	00197913          	andi	s2,s2,1
    80007e80:	07252e23          	sw	s2,124(a0)
    80007e84:	f75ff06f          	j	80007df8 <acquire+0x3c>

0000000080007e88 <release>:
    80007e88:	fe010113          	addi	sp,sp,-32
    80007e8c:	00813823          	sd	s0,16(sp)
    80007e90:	00113c23          	sd	ra,24(sp)
    80007e94:	00913423          	sd	s1,8(sp)
    80007e98:	01213023          	sd	s2,0(sp)
    80007e9c:	02010413          	addi	s0,sp,32
    80007ea0:	00052783          	lw	a5,0(a0)
    80007ea4:	00079a63          	bnez	a5,80007eb8 <release+0x30>
    80007ea8:	00002517          	auipc	a0,0x2
    80007eac:	85850513          	addi	a0,a0,-1960 # 80009700 <digits+0x28>
    80007eb0:	fffff097          	auipc	ra,0xfffff
    80007eb4:	1dc080e7          	jalr	476(ra) # 8000708c <panic>
    80007eb8:	01053903          	ld	s2,16(a0)
    80007ebc:	00050493          	mv	s1,a0
    80007ec0:	fffff097          	auipc	ra,0xfffff
    80007ec4:	814080e7          	jalr	-2028(ra) # 800066d4 <mycpu>
    80007ec8:	fea910e3          	bne	s2,a0,80007ea8 <release+0x20>
    80007ecc:	0004b823          	sd	zero,16(s1)
    80007ed0:	0ff0000f          	fence
    80007ed4:	0f50000f          	fence	iorw,ow
    80007ed8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007edc:	ffffe097          	auipc	ra,0xffffe
    80007ee0:	7f8080e7          	jalr	2040(ra) # 800066d4 <mycpu>
    80007ee4:	100027f3          	csrr	a5,sstatus
    80007ee8:	0027f793          	andi	a5,a5,2
    80007eec:	04079a63          	bnez	a5,80007f40 <release+0xb8>
    80007ef0:	07852783          	lw	a5,120(a0)
    80007ef4:	02f05e63          	blez	a5,80007f30 <release+0xa8>
    80007ef8:	fff7871b          	addiw	a4,a5,-1
    80007efc:	06e52c23          	sw	a4,120(a0)
    80007f00:	00071c63          	bnez	a4,80007f18 <release+0x90>
    80007f04:	07c52783          	lw	a5,124(a0)
    80007f08:	00078863          	beqz	a5,80007f18 <release+0x90>
    80007f0c:	100027f3          	csrr	a5,sstatus
    80007f10:	0027e793          	ori	a5,a5,2
    80007f14:	10079073          	csrw	sstatus,a5
    80007f18:	01813083          	ld	ra,24(sp)
    80007f1c:	01013403          	ld	s0,16(sp)
    80007f20:	00813483          	ld	s1,8(sp)
    80007f24:	00013903          	ld	s2,0(sp)
    80007f28:	02010113          	addi	sp,sp,32
    80007f2c:	00008067          	ret
    80007f30:	00001517          	auipc	a0,0x1
    80007f34:	7f050513          	addi	a0,a0,2032 # 80009720 <digits+0x48>
    80007f38:	fffff097          	auipc	ra,0xfffff
    80007f3c:	154080e7          	jalr	340(ra) # 8000708c <panic>
    80007f40:	00001517          	auipc	a0,0x1
    80007f44:	7c850513          	addi	a0,a0,1992 # 80009708 <digits+0x30>
    80007f48:	fffff097          	auipc	ra,0xfffff
    80007f4c:	144080e7          	jalr	324(ra) # 8000708c <panic>

0000000080007f50 <holding>:
    80007f50:	00052783          	lw	a5,0(a0)
    80007f54:	00079663          	bnez	a5,80007f60 <holding+0x10>
    80007f58:	00000513          	li	a0,0
    80007f5c:	00008067          	ret
    80007f60:	fe010113          	addi	sp,sp,-32
    80007f64:	00813823          	sd	s0,16(sp)
    80007f68:	00913423          	sd	s1,8(sp)
    80007f6c:	00113c23          	sd	ra,24(sp)
    80007f70:	02010413          	addi	s0,sp,32
    80007f74:	01053483          	ld	s1,16(a0)
    80007f78:	ffffe097          	auipc	ra,0xffffe
    80007f7c:	75c080e7          	jalr	1884(ra) # 800066d4 <mycpu>
    80007f80:	01813083          	ld	ra,24(sp)
    80007f84:	01013403          	ld	s0,16(sp)
    80007f88:	40a48533          	sub	a0,s1,a0
    80007f8c:	00153513          	seqz	a0,a0
    80007f90:	00813483          	ld	s1,8(sp)
    80007f94:	02010113          	addi	sp,sp,32
    80007f98:	00008067          	ret

0000000080007f9c <push_off>:
    80007f9c:	fe010113          	addi	sp,sp,-32
    80007fa0:	00813823          	sd	s0,16(sp)
    80007fa4:	00113c23          	sd	ra,24(sp)
    80007fa8:	00913423          	sd	s1,8(sp)
    80007fac:	02010413          	addi	s0,sp,32
    80007fb0:	100024f3          	csrr	s1,sstatus
    80007fb4:	100027f3          	csrr	a5,sstatus
    80007fb8:	ffd7f793          	andi	a5,a5,-3
    80007fbc:	10079073          	csrw	sstatus,a5
    80007fc0:	ffffe097          	auipc	ra,0xffffe
    80007fc4:	714080e7          	jalr	1812(ra) # 800066d4 <mycpu>
    80007fc8:	07852783          	lw	a5,120(a0)
    80007fcc:	02078663          	beqz	a5,80007ff8 <push_off+0x5c>
    80007fd0:	ffffe097          	auipc	ra,0xffffe
    80007fd4:	704080e7          	jalr	1796(ra) # 800066d4 <mycpu>
    80007fd8:	07852783          	lw	a5,120(a0)
    80007fdc:	01813083          	ld	ra,24(sp)
    80007fe0:	01013403          	ld	s0,16(sp)
    80007fe4:	0017879b          	addiw	a5,a5,1
    80007fe8:	06f52c23          	sw	a5,120(a0)
    80007fec:	00813483          	ld	s1,8(sp)
    80007ff0:	02010113          	addi	sp,sp,32
    80007ff4:	00008067          	ret
    80007ff8:	0014d493          	srli	s1,s1,0x1
    80007ffc:	ffffe097          	auipc	ra,0xffffe
    80008000:	6d8080e7          	jalr	1752(ra) # 800066d4 <mycpu>
    80008004:	0014f493          	andi	s1,s1,1
    80008008:	06952e23          	sw	s1,124(a0)
    8000800c:	fc5ff06f          	j	80007fd0 <push_off+0x34>

0000000080008010 <pop_off>:
    80008010:	ff010113          	addi	sp,sp,-16
    80008014:	00813023          	sd	s0,0(sp)
    80008018:	00113423          	sd	ra,8(sp)
    8000801c:	01010413          	addi	s0,sp,16
    80008020:	ffffe097          	auipc	ra,0xffffe
    80008024:	6b4080e7          	jalr	1716(ra) # 800066d4 <mycpu>
    80008028:	100027f3          	csrr	a5,sstatus
    8000802c:	0027f793          	andi	a5,a5,2
    80008030:	04079663          	bnez	a5,8000807c <pop_off+0x6c>
    80008034:	07852783          	lw	a5,120(a0)
    80008038:	02f05a63          	blez	a5,8000806c <pop_off+0x5c>
    8000803c:	fff7871b          	addiw	a4,a5,-1
    80008040:	06e52c23          	sw	a4,120(a0)
    80008044:	00071c63          	bnez	a4,8000805c <pop_off+0x4c>
    80008048:	07c52783          	lw	a5,124(a0)
    8000804c:	00078863          	beqz	a5,8000805c <pop_off+0x4c>
    80008050:	100027f3          	csrr	a5,sstatus
    80008054:	0027e793          	ori	a5,a5,2
    80008058:	10079073          	csrw	sstatus,a5
    8000805c:	00813083          	ld	ra,8(sp)
    80008060:	00013403          	ld	s0,0(sp)
    80008064:	01010113          	addi	sp,sp,16
    80008068:	00008067          	ret
    8000806c:	00001517          	auipc	a0,0x1
    80008070:	6b450513          	addi	a0,a0,1716 # 80009720 <digits+0x48>
    80008074:	fffff097          	auipc	ra,0xfffff
    80008078:	018080e7          	jalr	24(ra) # 8000708c <panic>
    8000807c:	00001517          	auipc	a0,0x1
    80008080:	68c50513          	addi	a0,a0,1676 # 80009708 <digits+0x30>
    80008084:	fffff097          	auipc	ra,0xfffff
    80008088:	008080e7          	jalr	8(ra) # 8000708c <panic>

000000008000808c <push_on>:
    8000808c:	fe010113          	addi	sp,sp,-32
    80008090:	00813823          	sd	s0,16(sp)
    80008094:	00113c23          	sd	ra,24(sp)
    80008098:	00913423          	sd	s1,8(sp)
    8000809c:	02010413          	addi	s0,sp,32
    800080a0:	100024f3          	csrr	s1,sstatus
    800080a4:	100027f3          	csrr	a5,sstatus
    800080a8:	0027e793          	ori	a5,a5,2
    800080ac:	10079073          	csrw	sstatus,a5
    800080b0:	ffffe097          	auipc	ra,0xffffe
    800080b4:	624080e7          	jalr	1572(ra) # 800066d4 <mycpu>
    800080b8:	07852783          	lw	a5,120(a0)
    800080bc:	02078663          	beqz	a5,800080e8 <push_on+0x5c>
    800080c0:	ffffe097          	auipc	ra,0xffffe
    800080c4:	614080e7          	jalr	1556(ra) # 800066d4 <mycpu>
    800080c8:	07852783          	lw	a5,120(a0)
    800080cc:	01813083          	ld	ra,24(sp)
    800080d0:	01013403          	ld	s0,16(sp)
    800080d4:	0017879b          	addiw	a5,a5,1
    800080d8:	06f52c23          	sw	a5,120(a0)
    800080dc:	00813483          	ld	s1,8(sp)
    800080e0:	02010113          	addi	sp,sp,32
    800080e4:	00008067          	ret
    800080e8:	0014d493          	srli	s1,s1,0x1
    800080ec:	ffffe097          	auipc	ra,0xffffe
    800080f0:	5e8080e7          	jalr	1512(ra) # 800066d4 <mycpu>
    800080f4:	0014f493          	andi	s1,s1,1
    800080f8:	06952e23          	sw	s1,124(a0)
    800080fc:	fc5ff06f          	j	800080c0 <push_on+0x34>

0000000080008100 <pop_on>:
    80008100:	ff010113          	addi	sp,sp,-16
    80008104:	00813023          	sd	s0,0(sp)
    80008108:	00113423          	sd	ra,8(sp)
    8000810c:	01010413          	addi	s0,sp,16
    80008110:	ffffe097          	auipc	ra,0xffffe
    80008114:	5c4080e7          	jalr	1476(ra) # 800066d4 <mycpu>
    80008118:	100027f3          	csrr	a5,sstatus
    8000811c:	0027f793          	andi	a5,a5,2
    80008120:	04078463          	beqz	a5,80008168 <pop_on+0x68>
    80008124:	07852783          	lw	a5,120(a0)
    80008128:	02f05863          	blez	a5,80008158 <pop_on+0x58>
    8000812c:	fff7879b          	addiw	a5,a5,-1
    80008130:	06f52c23          	sw	a5,120(a0)
    80008134:	07853783          	ld	a5,120(a0)
    80008138:	00079863          	bnez	a5,80008148 <pop_on+0x48>
    8000813c:	100027f3          	csrr	a5,sstatus
    80008140:	ffd7f793          	andi	a5,a5,-3
    80008144:	10079073          	csrw	sstatus,a5
    80008148:	00813083          	ld	ra,8(sp)
    8000814c:	00013403          	ld	s0,0(sp)
    80008150:	01010113          	addi	sp,sp,16
    80008154:	00008067          	ret
    80008158:	00001517          	auipc	a0,0x1
    8000815c:	5f050513          	addi	a0,a0,1520 # 80009748 <digits+0x70>
    80008160:	fffff097          	auipc	ra,0xfffff
    80008164:	f2c080e7          	jalr	-212(ra) # 8000708c <panic>
    80008168:	00001517          	auipc	a0,0x1
    8000816c:	5c050513          	addi	a0,a0,1472 # 80009728 <digits+0x50>
    80008170:	fffff097          	auipc	ra,0xfffff
    80008174:	f1c080e7          	jalr	-228(ra) # 8000708c <panic>

0000000080008178 <__memset>:
    80008178:	ff010113          	addi	sp,sp,-16
    8000817c:	00813423          	sd	s0,8(sp)
    80008180:	01010413          	addi	s0,sp,16
    80008184:	1a060e63          	beqz	a2,80008340 <__memset+0x1c8>
    80008188:	40a007b3          	neg	a5,a0
    8000818c:	0077f793          	andi	a5,a5,7
    80008190:	00778693          	addi	a3,a5,7
    80008194:	00b00813          	li	a6,11
    80008198:	0ff5f593          	andi	a1,a1,255
    8000819c:	fff6071b          	addiw	a4,a2,-1
    800081a0:	1b06e663          	bltu	a3,a6,8000834c <__memset+0x1d4>
    800081a4:	1cd76463          	bltu	a4,a3,8000836c <__memset+0x1f4>
    800081a8:	1a078e63          	beqz	a5,80008364 <__memset+0x1ec>
    800081ac:	00b50023          	sb	a1,0(a0)
    800081b0:	00100713          	li	a4,1
    800081b4:	1ae78463          	beq	a5,a4,8000835c <__memset+0x1e4>
    800081b8:	00b500a3          	sb	a1,1(a0)
    800081bc:	00200713          	li	a4,2
    800081c0:	1ae78a63          	beq	a5,a4,80008374 <__memset+0x1fc>
    800081c4:	00b50123          	sb	a1,2(a0)
    800081c8:	00300713          	li	a4,3
    800081cc:	18e78463          	beq	a5,a4,80008354 <__memset+0x1dc>
    800081d0:	00b501a3          	sb	a1,3(a0)
    800081d4:	00400713          	li	a4,4
    800081d8:	1ae78263          	beq	a5,a4,8000837c <__memset+0x204>
    800081dc:	00b50223          	sb	a1,4(a0)
    800081e0:	00500713          	li	a4,5
    800081e4:	1ae78063          	beq	a5,a4,80008384 <__memset+0x20c>
    800081e8:	00b502a3          	sb	a1,5(a0)
    800081ec:	00700713          	li	a4,7
    800081f0:	18e79e63          	bne	a5,a4,8000838c <__memset+0x214>
    800081f4:	00b50323          	sb	a1,6(a0)
    800081f8:	00700e93          	li	t4,7
    800081fc:	00859713          	slli	a4,a1,0x8
    80008200:	00e5e733          	or	a4,a1,a4
    80008204:	01059e13          	slli	t3,a1,0x10
    80008208:	01c76e33          	or	t3,a4,t3
    8000820c:	01859313          	slli	t1,a1,0x18
    80008210:	006e6333          	or	t1,t3,t1
    80008214:	02059893          	slli	a7,a1,0x20
    80008218:	40f60e3b          	subw	t3,a2,a5
    8000821c:	011368b3          	or	a7,t1,a7
    80008220:	02859813          	slli	a6,a1,0x28
    80008224:	0108e833          	or	a6,a7,a6
    80008228:	03059693          	slli	a3,a1,0x30
    8000822c:	003e589b          	srliw	a7,t3,0x3
    80008230:	00d866b3          	or	a3,a6,a3
    80008234:	03859713          	slli	a4,a1,0x38
    80008238:	00389813          	slli	a6,a7,0x3
    8000823c:	00f507b3          	add	a5,a0,a5
    80008240:	00e6e733          	or	a4,a3,a4
    80008244:	000e089b          	sext.w	a7,t3
    80008248:	00f806b3          	add	a3,a6,a5
    8000824c:	00e7b023          	sd	a4,0(a5)
    80008250:	00878793          	addi	a5,a5,8
    80008254:	fed79ce3          	bne	a5,a3,8000824c <__memset+0xd4>
    80008258:	ff8e7793          	andi	a5,t3,-8
    8000825c:	0007871b          	sext.w	a4,a5
    80008260:	01d787bb          	addw	a5,a5,t4
    80008264:	0ce88e63          	beq	a7,a4,80008340 <__memset+0x1c8>
    80008268:	00f50733          	add	a4,a0,a5
    8000826c:	00b70023          	sb	a1,0(a4)
    80008270:	0017871b          	addiw	a4,a5,1
    80008274:	0cc77663          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    80008278:	00e50733          	add	a4,a0,a4
    8000827c:	00b70023          	sb	a1,0(a4)
    80008280:	0027871b          	addiw	a4,a5,2
    80008284:	0ac77e63          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    80008288:	00e50733          	add	a4,a0,a4
    8000828c:	00b70023          	sb	a1,0(a4)
    80008290:	0037871b          	addiw	a4,a5,3
    80008294:	0ac77663          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    80008298:	00e50733          	add	a4,a0,a4
    8000829c:	00b70023          	sb	a1,0(a4)
    800082a0:	0047871b          	addiw	a4,a5,4
    800082a4:	08c77e63          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    800082a8:	00e50733          	add	a4,a0,a4
    800082ac:	00b70023          	sb	a1,0(a4)
    800082b0:	0057871b          	addiw	a4,a5,5
    800082b4:	08c77663          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    800082b8:	00e50733          	add	a4,a0,a4
    800082bc:	00b70023          	sb	a1,0(a4)
    800082c0:	0067871b          	addiw	a4,a5,6
    800082c4:	06c77e63          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    800082c8:	00e50733          	add	a4,a0,a4
    800082cc:	00b70023          	sb	a1,0(a4)
    800082d0:	0077871b          	addiw	a4,a5,7
    800082d4:	06c77663          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    800082d8:	00e50733          	add	a4,a0,a4
    800082dc:	00b70023          	sb	a1,0(a4)
    800082e0:	0087871b          	addiw	a4,a5,8
    800082e4:	04c77e63          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    800082e8:	00e50733          	add	a4,a0,a4
    800082ec:	00b70023          	sb	a1,0(a4)
    800082f0:	0097871b          	addiw	a4,a5,9
    800082f4:	04c77663          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    800082f8:	00e50733          	add	a4,a0,a4
    800082fc:	00b70023          	sb	a1,0(a4)
    80008300:	00a7871b          	addiw	a4,a5,10
    80008304:	02c77e63          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    80008308:	00e50733          	add	a4,a0,a4
    8000830c:	00b70023          	sb	a1,0(a4)
    80008310:	00b7871b          	addiw	a4,a5,11
    80008314:	02c77663          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    80008318:	00e50733          	add	a4,a0,a4
    8000831c:	00b70023          	sb	a1,0(a4)
    80008320:	00c7871b          	addiw	a4,a5,12
    80008324:	00c77e63          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    80008328:	00e50733          	add	a4,a0,a4
    8000832c:	00b70023          	sb	a1,0(a4)
    80008330:	00d7879b          	addiw	a5,a5,13
    80008334:	00c7f663          	bgeu	a5,a2,80008340 <__memset+0x1c8>
    80008338:	00f507b3          	add	a5,a0,a5
    8000833c:	00b78023          	sb	a1,0(a5)
    80008340:	00813403          	ld	s0,8(sp)
    80008344:	01010113          	addi	sp,sp,16
    80008348:	00008067          	ret
    8000834c:	00b00693          	li	a3,11
    80008350:	e55ff06f          	j	800081a4 <__memset+0x2c>
    80008354:	00300e93          	li	t4,3
    80008358:	ea5ff06f          	j	800081fc <__memset+0x84>
    8000835c:	00100e93          	li	t4,1
    80008360:	e9dff06f          	j	800081fc <__memset+0x84>
    80008364:	00000e93          	li	t4,0
    80008368:	e95ff06f          	j	800081fc <__memset+0x84>
    8000836c:	00000793          	li	a5,0
    80008370:	ef9ff06f          	j	80008268 <__memset+0xf0>
    80008374:	00200e93          	li	t4,2
    80008378:	e85ff06f          	j	800081fc <__memset+0x84>
    8000837c:	00400e93          	li	t4,4
    80008380:	e7dff06f          	j	800081fc <__memset+0x84>
    80008384:	00500e93          	li	t4,5
    80008388:	e75ff06f          	j	800081fc <__memset+0x84>
    8000838c:	00600e93          	li	t4,6
    80008390:	e6dff06f          	j	800081fc <__memset+0x84>

0000000080008394 <__memmove>:
    80008394:	ff010113          	addi	sp,sp,-16
    80008398:	00813423          	sd	s0,8(sp)
    8000839c:	01010413          	addi	s0,sp,16
    800083a0:	0e060863          	beqz	a2,80008490 <__memmove+0xfc>
    800083a4:	fff6069b          	addiw	a3,a2,-1
    800083a8:	0006881b          	sext.w	a6,a3
    800083ac:	0ea5e863          	bltu	a1,a0,8000849c <__memmove+0x108>
    800083b0:	00758713          	addi	a4,a1,7
    800083b4:	00a5e7b3          	or	a5,a1,a0
    800083b8:	40a70733          	sub	a4,a4,a0
    800083bc:	0077f793          	andi	a5,a5,7
    800083c0:	00f73713          	sltiu	a4,a4,15
    800083c4:	00174713          	xori	a4,a4,1
    800083c8:	0017b793          	seqz	a5,a5
    800083cc:	00e7f7b3          	and	a5,a5,a4
    800083d0:	10078863          	beqz	a5,800084e0 <__memmove+0x14c>
    800083d4:	00900793          	li	a5,9
    800083d8:	1107f463          	bgeu	a5,a6,800084e0 <__memmove+0x14c>
    800083dc:	0036581b          	srliw	a6,a2,0x3
    800083e0:	fff8081b          	addiw	a6,a6,-1
    800083e4:	02081813          	slli	a6,a6,0x20
    800083e8:	01d85893          	srli	a7,a6,0x1d
    800083ec:	00858813          	addi	a6,a1,8
    800083f0:	00058793          	mv	a5,a1
    800083f4:	00050713          	mv	a4,a0
    800083f8:	01088833          	add	a6,a7,a6
    800083fc:	0007b883          	ld	a7,0(a5)
    80008400:	00878793          	addi	a5,a5,8
    80008404:	00870713          	addi	a4,a4,8
    80008408:	ff173c23          	sd	a7,-8(a4)
    8000840c:	ff0798e3          	bne	a5,a6,800083fc <__memmove+0x68>
    80008410:	ff867713          	andi	a4,a2,-8
    80008414:	02071793          	slli	a5,a4,0x20
    80008418:	0207d793          	srli	a5,a5,0x20
    8000841c:	00f585b3          	add	a1,a1,a5
    80008420:	40e686bb          	subw	a3,a3,a4
    80008424:	00f507b3          	add	a5,a0,a5
    80008428:	06e60463          	beq	a2,a4,80008490 <__memmove+0xfc>
    8000842c:	0005c703          	lbu	a4,0(a1)
    80008430:	00e78023          	sb	a4,0(a5)
    80008434:	04068e63          	beqz	a3,80008490 <__memmove+0xfc>
    80008438:	0015c603          	lbu	a2,1(a1)
    8000843c:	00100713          	li	a4,1
    80008440:	00c780a3          	sb	a2,1(a5)
    80008444:	04e68663          	beq	a3,a4,80008490 <__memmove+0xfc>
    80008448:	0025c603          	lbu	a2,2(a1)
    8000844c:	00200713          	li	a4,2
    80008450:	00c78123          	sb	a2,2(a5)
    80008454:	02e68e63          	beq	a3,a4,80008490 <__memmove+0xfc>
    80008458:	0035c603          	lbu	a2,3(a1)
    8000845c:	00300713          	li	a4,3
    80008460:	00c781a3          	sb	a2,3(a5)
    80008464:	02e68663          	beq	a3,a4,80008490 <__memmove+0xfc>
    80008468:	0045c603          	lbu	a2,4(a1)
    8000846c:	00400713          	li	a4,4
    80008470:	00c78223          	sb	a2,4(a5)
    80008474:	00e68e63          	beq	a3,a4,80008490 <__memmove+0xfc>
    80008478:	0055c603          	lbu	a2,5(a1)
    8000847c:	00500713          	li	a4,5
    80008480:	00c782a3          	sb	a2,5(a5)
    80008484:	00e68663          	beq	a3,a4,80008490 <__memmove+0xfc>
    80008488:	0065c703          	lbu	a4,6(a1)
    8000848c:	00e78323          	sb	a4,6(a5)
    80008490:	00813403          	ld	s0,8(sp)
    80008494:	01010113          	addi	sp,sp,16
    80008498:	00008067          	ret
    8000849c:	02061713          	slli	a4,a2,0x20
    800084a0:	02075713          	srli	a4,a4,0x20
    800084a4:	00e587b3          	add	a5,a1,a4
    800084a8:	f0f574e3          	bgeu	a0,a5,800083b0 <__memmove+0x1c>
    800084ac:	02069613          	slli	a2,a3,0x20
    800084b0:	02065613          	srli	a2,a2,0x20
    800084b4:	fff64613          	not	a2,a2
    800084b8:	00e50733          	add	a4,a0,a4
    800084bc:	00c78633          	add	a2,a5,a2
    800084c0:	fff7c683          	lbu	a3,-1(a5)
    800084c4:	fff78793          	addi	a5,a5,-1
    800084c8:	fff70713          	addi	a4,a4,-1
    800084cc:	00d70023          	sb	a3,0(a4)
    800084d0:	fec798e3          	bne	a5,a2,800084c0 <__memmove+0x12c>
    800084d4:	00813403          	ld	s0,8(sp)
    800084d8:	01010113          	addi	sp,sp,16
    800084dc:	00008067          	ret
    800084e0:	02069713          	slli	a4,a3,0x20
    800084e4:	02075713          	srli	a4,a4,0x20
    800084e8:	00170713          	addi	a4,a4,1
    800084ec:	00e50733          	add	a4,a0,a4
    800084f0:	00050793          	mv	a5,a0
    800084f4:	0005c683          	lbu	a3,0(a1)
    800084f8:	00178793          	addi	a5,a5,1
    800084fc:	00158593          	addi	a1,a1,1
    80008500:	fed78fa3          	sb	a3,-1(a5)
    80008504:	fee798e3          	bne	a5,a4,800084f4 <__memmove+0x160>
    80008508:	f89ff06f          	j	80008490 <__memmove+0xfc>

000000008000850c <__putc>:
    8000850c:	fe010113          	addi	sp,sp,-32
    80008510:	00813823          	sd	s0,16(sp)
    80008514:	00113c23          	sd	ra,24(sp)
    80008518:	02010413          	addi	s0,sp,32
    8000851c:	00050793          	mv	a5,a0
    80008520:	fef40593          	addi	a1,s0,-17
    80008524:	00100613          	li	a2,1
    80008528:	00000513          	li	a0,0
    8000852c:	fef407a3          	sb	a5,-17(s0)
    80008530:	fffff097          	auipc	ra,0xfffff
    80008534:	b3c080e7          	jalr	-1220(ra) # 8000706c <console_write>
    80008538:	01813083          	ld	ra,24(sp)
    8000853c:	01013403          	ld	s0,16(sp)
    80008540:	02010113          	addi	sp,sp,32
    80008544:	00008067          	ret

0000000080008548 <__getc>:
    80008548:	fe010113          	addi	sp,sp,-32
    8000854c:	00813823          	sd	s0,16(sp)
    80008550:	00113c23          	sd	ra,24(sp)
    80008554:	02010413          	addi	s0,sp,32
    80008558:	fe840593          	addi	a1,s0,-24
    8000855c:	00100613          	li	a2,1
    80008560:	00000513          	li	a0,0
    80008564:	fffff097          	auipc	ra,0xfffff
    80008568:	ae8080e7          	jalr	-1304(ra) # 8000704c <console_read>
    8000856c:	fe844503          	lbu	a0,-24(s0)
    80008570:	01813083          	ld	ra,24(sp)
    80008574:	01013403          	ld	s0,16(sp)
    80008578:	02010113          	addi	sp,sp,32
    8000857c:	00008067          	ret

0000000080008580 <console_handler>:
    80008580:	fe010113          	addi	sp,sp,-32
    80008584:	00813823          	sd	s0,16(sp)
    80008588:	00113c23          	sd	ra,24(sp)
    8000858c:	00913423          	sd	s1,8(sp)
    80008590:	02010413          	addi	s0,sp,32
    80008594:	14202773          	csrr	a4,scause
    80008598:	100027f3          	csrr	a5,sstatus
    8000859c:	0027f793          	andi	a5,a5,2
    800085a0:	06079e63          	bnez	a5,8000861c <console_handler+0x9c>
    800085a4:	00074c63          	bltz	a4,800085bc <console_handler+0x3c>
    800085a8:	01813083          	ld	ra,24(sp)
    800085ac:	01013403          	ld	s0,16(sp)
    800085b0:	00813483          	ld	s1,8(sp)
    800085b4:	02010113          	addi	sp,sp,32
    800085b8:	00008067          	ret
    800085bc:	0ff77713          	andi	a4,a4,255
    800085c0:	00900793          	li	a5,9
    800085c4:	fef712e3          	bne	a4,a5,800085a8 <console_handler+0x28>
    800085c8:	ffffe097          	auipc	ra,0xffffe
    800085cc:	6dc080e7          	jalr	1756(ra) # 80006ca4 <plic_claim>
    800085d0:	00a00793          	li	a5,10
    800085d4:	00050493          	mv	s1,a0
    800085d8:	02f50c63          	beq	a0,a5,80008610 <console_handler+0x90>
    800085dc:	fc0506e3          	beqz	a0,800085a8 <console_handler+0x28>
    800085e0:	00050593          	mv	a1,a0
    800085e4:	00001517          	auipc	a0,0x1
    800085e8:	06c50513          	addi	a0,a0,108 # 80009650 <_ZZ13printInteger1mE6digits+0x348>
    800085ec:	fffff097          	auipc	ra,0xfffff
    800085f0:	afc080e7          	jalr	-1284(ra) # 800070e8 <__printf>
    800085f4:	01013403          	ld	s0,16(sp)
    800085f8:	01813083          	ld	ra,24(sp)
    800085fc:	00048513          	mv	a0,s1
    80008600:	00813483          	ld	s1,8(sp)
    80008604:	02010113          	addi	sp,sp,32
    80008608:	ffffe317          	auipc	t1,0xffffe
    8000860c:	6d430067          	jr	1748(t1) # 80006cdc <plic_complete>
    80008610:	fffff097          	auipc	ra,0xfffff
    80008614:	3e0080e7          	jalr	992(ra) # 800079f0 <uartintr>
    80008618:	fddff06f          	j	800085f4 <console_handler+0x74>
    8000861c:	00001517          	auipc	a0,0x1
    80008620:	13450513          	addi	a0,a0,308 # 80009750 <digits+0x78>
    80008624:	fffff097          	auipc	ra,0xfffff
    80008628:	a68080e7          	jalr	-1432(ra) # 8000708c <panic>
	...
