#include <stdio.h>
#include <ap_int.h>

volatile void pl_axi_dma_controller(volatile int* AXI_DMA_SLAVE, volatile unsigned startAddress, volatile bool write, volatile int length,
		volatile int iterations, volatile bool enabled, volatile bool* reset_scanner,
		volatile int* dma_control, volatile int* dma_status, volatile int* dma_address,
		volatile ap_uint<1>* fabric_interrupt_write_finished, volatile ap_uint<1>* fabric_interrupt_read_finished, volatile ap_uint<1>* controller_finished){
#pragma HLS INTERFACE ap_none port=controller_finished

#pragma HLS INTERFACE ap_none port=fabric_interrupt_write_finished

#pragma HLS INTERFACE ap_none port=fabric_interrupt_read_finished

#pragma HLS INTERFACE ap_none port=reset_scanner

#pragma HLS INTERFACE ap_none port=dma_address

#pragma HLS INTERFACE ap_none port=dma_status

#pragma HLS INTERFACE ap_none port=dma_control

#pragma HLS INTERFACE ap_none port=enabled

#pragma HLS INTERFACE ap_none port=iterations

#pragma HLS INTERFACE ap_none port=length

#pragma HLS INTERFACE ap_none port=startAddress

#pragma HLS INTERFACE ap_none port=return

#pragma HLS INTERFACE m_axi depth=14 port=AXI_DMA_SLAVE offset=off bundle=slave_bus

	bool localEnabled = enabled;
//	*output_available = false;
	//TODO: this is a lame hack, use the ap_start bit and GPIO in future
	if(localEnabled){
		if(write){
			int i;
			unsigned localAddress = startAddress;
			*reset_scanner = 1;
			*reset_scanner = 0;
			for(i = 0; i<iterations; i++){
				*controller_finished = false;
				//reset the dma engine
				AXI_DMA_SLAVE[0] = 4;
				while(AXI_DMA_SLAVE[0] & 4){
					AXI_DMA_SLAVE[0] = 0;
				}
				//TODO: may need to wait till reset finished?
				//enable the dma engine by writing the first bit
				AXI_DMA_SLAVE[0] |= 1;
	//			//enable the dma interrupt out
				AXI_DMA_SLAVE[0] |= 4096;
				*dma_control = AXI_DMA_SLAVE[0];
				*dma_status = AXI_DMA_SLAVE[1];
	//			AXI_DMA_SLAVE[0] = 4097;
				//set the dma address
				AXI_DMA_SLAVE[6] = localAddress;
				*dma_address = localAddress;
				//set the dma length
				AXI_DMA_SLAVE[10] = length;
				*dma_control = AXI_DMA_SLAVE[0];
				*dma_status = AXI_DMA_SLAVE[1];
				localAddress += 4;
				//wait for interrupt flag to be set
				ap_int<1> local = *fabric_interrupt_read_finished;
//				printf("\nWaiting in fabric. Output available: %d", *fabric_interupt_finished);
//				printf("\nWaiting in fabric. Output available: %d", *fabric_interupt_finished);
//				printf("\nWaiting in fabric. Output available: %d", *fabric_interupt_finished);
//				printf("\nWaiting in fabric. Output available: %d", *fabric_interupt_finished);
//				printf("\nWaiting in fabric. Output available: %d", *fabric_interupt_finished);
//				printf("\nWaiting in fabric. Output available: %d", *fabric_interupt_finished);
				int i;
//				for(i = 0; i<1000 || !local.test(0); i++){
				while(!local.test(0)){
					local = *fabric_interrupt_read_finished;
//					printf("\nWaiting in fabric. Output available: %d", *fabric_interupt_finished);
				}
				*controller_finished = ap_uint<1>(1);
				//unset the flag
//				*continue_iterations = false;
			}
		} else{
			//enable S2MM
			AXI_DMA_SLAVE[12] |= 1;
			//enable interrupt on complete
			AXI_DMA_SLAVE[12] |= 4096;
			//write start write address
			AXI_DMA_SLAVE[18] = startAddress;
			//write length to length register
			AXI_DMA_SLAVE[22] = length;

			int i;
			ap_int<1> local = *fabric_interrupt_write_finished;
//			for(i = 0; i<1000 || !local.test(0); i++){
			while(!local.test(0)){
				local = *fabric_interrupt_write_finished;
//					printf("\nWaiting in fabric. Output available: %d", *fabric_interupt_finished);
			}
			*controller_finished = ap_uint<1>(1);
		}
//		AXI_DMA_SLAVE[0] = 4;
//		while(AXI_DMA_SLAVE[0] & 4){
//			AXI_DMA_SLAVE[0] = 0;
//		}
	}
	localEnabled = false;
}
