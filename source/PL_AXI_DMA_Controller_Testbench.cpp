#include <stdio.h>
#include <ap_int.h>

volatile void pl_axi_dma_controller(volatile int*, volatile unsigned, volatile bool, volatile int,
		volatile int, volatile bool, volatile bool*,
		volatile int*, volatile int*, volatile int*, volatile ap_uint<1>*, volatile ap_uint<1>*);

int main(void){
	volatile int slaveAddresses[12];
	unsigned addr = 0x10000000;
	int status, control, address;
	int readLength = 4;
	int iterations = 5;
	int i;
	bool a;
	ap_uint<1> controller_finished = ap_uint<1>(0);
	ap_uint<1> fabric_finished = ap_uint<1>(1);
	for(i = 0; i<12; i++){
		slaveAddresses[i] = 0;
	}
	slaveAddresses[1] = 2;
	pl_axi_dma_controller(slaveAddresses, addr, true, readLength, iterations, true, &a, &control, &status, &address, &fabric_finished, &controller_finished);
	for(i = 0; i<iterations; i++){
		int j;
		for(j = 0; j<100000000; j++){
			fabric_finished = 0;
		}
		fabric_finished = 1;
		while(controller_finished.test(0) == false){
			printf("\nWaiting for fabric in iteration %d and controller finished: %s and fabric finished: %s", i, controller_finished.to_string().c_str(), fabric_finished.to_string().c_str());
			fabric_finished = 1;
		}
		printf("\nControl register for iteration %d: %08x", i, slaveAddresses[0]);
		printf("\nStatus register for iteration %d: %08x", i, slaveAddresses[1]);
		printf("\nAddress for iteration %d: %08x", i, slaveAddresses[6]);
		printf("\nRead length for iteration %d: %08x", i, slaveAddresses[10]);
	}
	if(slaveAddresses[0] != 4097){
		printf("\nControl register was not set correctly. Its value is: %08x\n", slaveAddresses[0]);
		return -1;
	} else{
		printf("\nControl register was set correctly. Its value is: %08x\n", slaveAddresses[0]);
	}
	if(slaveAddresses[6] != (addr + 16)){
		printf("\nAddress was not incremented correctly. Its value is: %08x\n", slaveAddresses[6]);
		return -1;
	} else{
		printf("\nAddress was incremented correctly. Its value is: %08x\n", slaveAddresses[6]);
	}
	if(slaveAddresses[10] != readLength){
		printf("\nRead length not set correctly. Its value is: %08x\n", slaveAddresses[10]);
		return -1;
	} else{
		printf("\nRead length set correctly. Its value is: %08x\n", slaveAddresses[10]);
	}
	return 0;
}
