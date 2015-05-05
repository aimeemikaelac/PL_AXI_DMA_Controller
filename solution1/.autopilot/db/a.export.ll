; ModuleID = '/D/xilinx_workspace/PL_AXI_DMA_Controller/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str3 = private unnamed_addr constant [10 x i8] c"slave_bus\00", align 1
@p_str4 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [22 x i8] c"pl_axi_dma_controller\00"

define void @pl_axi_dma_controller(i32* %AXI_DMA_SLAVE, i32 %startAddress, i1 zeroext %write_r, i32 %length_r, i32 %iterations, i1 zeroext %enabled, i1* %reset_scanner, i32* %dma_control, i32* %dma_status, i32* %dma_address, i1* %fabric_interrupt_write_finished_V, i1* %fabric_interrupt_read_finished_V, i1* %controller_finished_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %AXI_DMA_SLAVE), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %startAddress), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %write_r), !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %length_r), !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %iterations), !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %enabled), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset_scanner), !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %dma_control), !map !39
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %dma_status), !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %dma_address), !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %fabric_interrupt_write_finished_V), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %fabric_interrupt_read_finished_V), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %controller_finished_V), !map !59
  call void (...)* @_ssdm_op_SpecTopModule([22 x i8]* @str) nounwind
  %enabled_read = call i1 @_ssdm_op_Read.ap_none.i1(i1 %enabled)
  %iterations_read = call i32 @_ssdm_op_Read.ap_none.i32(i32 %iterations)
  %length_read = call i32 @_ssdm_op_Read.ap_none.i32(i32 %length_r)
  %write_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %write_r)
  %startAddress_read = call i32 @_ssdm_op_Read.ap_none.i32(i32 %startAddress)
  %startAddress_assign = alloca i32, align 4
  %write_assign = alloca i1, align 1
  %length_assign = alloca i32, align 4
  %iterations_assign = alloca i32, align 4
  %enabled_assign = alloca i1, align 1
  store volatile i32 %startAddress_read, i32* %startAddress_assign, align 4
  store volatile i1 %write_read, i1* %write_assign, align 1
  store volatile i32 %length_read, i32* %length_assign, align 4
  store volatile i32 %iterations_read, i32* %iterations_assign, align 4
  store volatile i1 %enabled_read, i1* %enabled_assign, align 1
  call void (...)* @_ssdm_op_SpecWire(i1* %controller_finished_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i1* %fabric_interrupt_write_finished_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i1* %fabric_interrupt_read_finished_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i1* %reset_scanner, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32* %dma_address, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32* %dma_status, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32* %dma_control, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i1 %enabled, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 %iterations, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 %length_r, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 %startAddress, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 0, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32* %AXI_DMA_SLAVE, [6 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 14, [10 x i8]* @p_str3, [4 x i8]* @p_str4, [1 x i8]* @p_str1) nounwind
  %localEnabled = load volatile i1* %enabled_assign, align 1
  br i1 %localEnabled, label %1, label %._crit_edge

; <label>:1                                       ; preds = %0
  %write_assign_load = load volatile i1* %write_assign, align 1
  br i1 %write_assign_load, label %2, label %11

; <label>:2                                       ; preds = %1
  %localAddress = load volatile i32* %startAddress_assign, align 4
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %reset_scanner, i1 true)
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %reset_scanner, i1 false)
  %AXI_DMA_SLAVE_addr = getelementptr inbounds i32* %AXI_DMA_SLAVE, i64 1
  %AXI_DMA_SLAVE_addr_1 = getelementptr inbounds i32* %AXI_DMA_SLAVE, i64 6
  %AXI_DMA_SLAVE_addr_2 = getelementptr inbounds i32* %AXI_DMA_SLAVE, i64 10
  br label %3

; <label>:3                                       ; preds = %10, %2
  %i = phi i32 [ 0, %2 ], [ %i_1, %10 ]
  %localAddress1 = phi i32 [ %localAddress, %2 ], [ %localAddress_1, %10 ]
  %iterations_assign_load = load volatile i32* %iterations_assign, align 4
  %tmp_2 = icmp slt i32 %i, %iterations_assign_load
  %i_1 = add nsw i32 %i, 1
  br i1 %tmp_2, label %4, label %.loopexit

; <label>:4                                       ; preds = %3
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %controller_finished_V, i1 false)
  %AXI_DMA_SLAVE_req12 = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %AXI_DMA_SLAVE, i32 1)
  call void @_ssdm_op_Write.m_axi.volatile.i32P(i32* %AXI_DMA_SLAVE, i32 4)
  %AXI_DMA_SLAVE_resp13 = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %AXI_DMA_SLAVE)
  br label %5

; <label>:5                                       ; preds = %6, %4
  %AXI_DMA_SLAVE_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %AXI_DMA_SLAVE, i32 1)
  %AXI_DMA_SLAVE_read = call i32 @_ssdm_op_Read.m_axi.volatile.i32P(i32* %AXI_DMA_SLAVE)
  %tmp_8 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %AXI_DMA_SLAVE_read, i32 2)
  br i1 %tmp_8, label %6, label %7

; <label>:6                                       ; preds = %5
  %AXI_DMA_SLAVE_req10 = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %AXI_DMA_SLAVE, i32 1)
  call void @_ssdm_op_Write.m_axi.volatile.i32P(i32* %AXI_DMA_SLAVE, i32 0)
  %AXI_DMA_SLAVE_resp11 = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %AXI_DMA_SLAVE)
  br label %5

; <label>:7                                       ; preds = %5
  %AXI_DMA_SLAVE_load_3_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %AXI_DMA_SLAVE, i32 1)
  %AXI_DMA_SLAVE_read_1 = call i32 @_ssdm_op_Read.m_axi.volatile.i32P(i32* %AXI_DMA_SLAVE)
  %tmp_9 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %AXI_DMA_SLAVE_read_1, i32 1, i32 31)
  %tmp_5 = call i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31 %tmp_9, i1 true)
  %AXI_DMA_SLAVE_req8 = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %AXI_DMA_SLAVE, i32 1)
  call void @_ssdm_op_Write.m_axi.volatile.i32P(i32* %AXI_DMA_SLAVE, i32 %tmp_5)
  %AXI_DMA_SLAVE_resp9 = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %AXI_DMA_SLAVE)
  %AXI_DMA_SLAVE_load_4_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %AXI_DMA_SLAVE, i32 1)
  %AXI_DMA_SLAVE_read_2 = call i32 @_ssdm_op_Read.m_axi.volatile.i32P(i32* %AXI_DMA_SLAVE)
  %tmp_s = call i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32 %AXI_DMA_SLAVE_read_2, i32 13, i32 31)
  %tmp_10 = trunc i32 %AXI_DMA_SLAVE_read_2 to i12
  %tmp_6 = call i32 @_ssdm_op_BitConcatenate.i32.i19.i1.i12(i19 %tmp_s, i1 true, i12 %tmp_10)
  %AXI_DMA_SLAVE_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %AXI_DMA_SLAVE, i32 1)
  call void @_ssdm_op_Write.m_axi.volatile.i32P(i32* %AXI_DMA_SLAVE, i32 %tmp_6)
  %AXI_DMA_SLAVE_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %AXI_DMA_SLAVE)
  %AXI_DMA_SLAVE_load_5_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %AXI_DMA_SLAVE, i32 1)
  %AXI_DMA_SLAVE_read_3 = call i32 @_ssdm_op_Read.m_axi.volatile.i32P(i32* %AXI_DMA_SLAVE)
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %dma_control, i32 %AXI_DMA_SLAVE_read_3)
  %AXI_DMA_SLAVE_load_6_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %AXI_DMA_SLAVE_addr, i32 1)
  %AXI_DMA_SLAVE_addr_read = call i32 @_ssdm_op_Read.m_axi.volatile.i32P(i32* %AXI_DMA_SLAVE_addr)
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %dma_status, i32 %AXI_DMA_SLAVE_addr_read)
  %AXI_DMA_SLAVE_addr_1_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %AXI_DMA_SLAVE_addr_1, i32 1)
  call void @_ssdm_op_Write.m_axi.volatile.i32P(i32* %AXI_DMA_SLAVE_addr_1, i32 %localAddress1)
  %AXI_DMA_SLAVE_addr_1_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %AXI_DMA_SLAVE_addr_1)
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %dma_address, i32 %localAddress1)
  %length_assign_load_1 = load volatile i32* %length_assign, align 4
  %AXI_DMA_SLAVE_addr_2_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %AXI_DMA_SLAVE_addr_2, i32 1)
  call void @_ssdm_op_Write.m_axi.volatile.i32P(i32* %AXI_DMA_SLAVE_addr_2, i32 %length_assign_load_1)
  %AXI_DMA_SLAVE_addr_2_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %AXI_DMA_SLAVE_addr_2)
  %AXI_DMA_SLAVE_load_7_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %AXI_DMA_SLAVE, i32 1)
  %AXI_DMA_SLAVE_read_4 = call i32 @_ssdm_op_Read.m_axi.volatile.i32P(i32* %AXI_DMA_SLAVE)
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %dma_control, i32 %AXI_DMA_SLAVE_read_4)
  %AXI_DMA_SLAVE_load_8_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %AXI_DMA_SLAVE_addr, i32 1)
  %AXI_DMA_SLAVE_addr_read_1 = call i32 @_ssdm_op_Read.m_axi.volatile.i32P(i32* %AXI_DMA_SLAVE_addr)
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %dma_status, i32 %AXI_DMA_SLAVE_addr_read_1)
  %localAddress_1 = add i32 %localAddress1, 4
  %local_V_2 = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %fabric_interrupt_read_finished_V)
  br label %8

; <label>:8                                       ; preds = %9, %7
  %p_Val2_s = phi i1 [ %local_V_2, %7 ], [ %local_V_3, %9 ]
  br i1 %p_Val2_s, label %10, label %9

; <label>:9                                       ; preds = %8
  %local_V_3 = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %fabric_interrupt_read_finished_V)
  br label %8

; <label>:10                                      ; preds = %8
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %controller_finished_V, i1 true)
  br label %3

; <label>:11                                      ; preds = %1
  %AXI_DMA_SLAVE_addr_3 = getelementptr inbounds i32* %AXI_DMA_SLAVE, i64 12
  %AXI_DMA_SLAVE_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %AXI_DMA_SLAVE_addr_3, i32 1)
  %AXI_DMA_SLAVE_addr_3_read = call i32 @_ssdm_op_Read.m_axi.volatile.i32P(i32* %AXI_DMA_SLAVE_addr_3)
  %tmp_3 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %AXI_DMA_SLAVE_addr_3_read, i32 1, i32 31)
  %tmp = call i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31 %tmp_3, i1 true)
  %AXI_DMA_SLAVE_addr_3_req6 = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %AXI_DMA_SLAVE_addr_3, i32 1)
  call void @_ssdm_op_Write.m_axi.volatile.i32P(i32* %AXI_DMA_SLAVE_addr_3, i32 %tmp)
  %AXI_DMA_SLAVE_addr_3_resp7 = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %AXI_DMA_SLAVE_addr_3)
  %AXI_DMA_SLAVE_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %AXI_DMA_SLAVE_addr_3, i32 1)
  %AXI_DMA_SLAVE_addr_3_read_1 = call i32 @_ssdm_op_Read.m_axi.volatile.i32P(i32* %AXI_DMA_SLAVE_addr_3)
  %tmp_7 = call i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32 %AXI_DMA_SLAVE_addr_3_read_1, i32 13, i32 31)
  %tmp_4 = trunc i32 %AXI_DMA_SLAVE_addr_3_read_1 to i12
  %tmp_1 = call i32 @_ssdm_op_BitConcatenate.i32.i19.i1.i12(i19 %tmp_7, i1 true, i12 %tmp_4)
  %AXI_DMA_SLAVE_addr_3_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %AXI_DMA_SLAVE_addr_3, i32 1)
  call void @_ssdm_op_Write.m_axi.volatile.i32P(i32* %AXI_DMA_SLAVE_addr_3, i32 %tmp_1)
  %AXI_DMA_SLAVE_addr_3_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %AXI_DMA_SLAVE_addr_3)
  %startAddress_assign_load = load volatile i32* %startAddress_assign, align 4
  %AXI_DMA_SLAVE_addr_4 = getelementptr inbounds i32* %AXI_DMA_SLAVE, i64 18
  %AXI_DMA_SLAVE_addr_4_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %AXI_DMA_SLAVE_addr_4, i32 1)
  call void @_ssdm_op_Write.m_axi.volatile.i32P(i32* %AXI_DMA_SLAVE_addr_4, i32 %startAddress_assign_load)
  %AXI_DMA_SLAVE_addr_4_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %AXI_DMA_SLAVE_addr_4)
  %length_assign_load = load volatile i32* %length_assign, align 4
  %AXI_DMA_SLAVE_addr_5 = getelementptr inbounds i32* %AXI_DMA_SLAVE, i64 22
  %AXI_DMA_SLAVE_addr_5_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %AXI_DMA_SLAVE_addr_5, i32 1)
  call void @_ssdm_op_Write.m_axi.volatile.i32P(i32* %AXI_DMA_SLAVE_addr_5, i32 %length_assign_load)
  %AXI_DMA_SLAVE_addr_5_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %AXI_DMA_SLAVE_addr_5)
  %local_V = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %fabric_interrupt_write_finished_V)
  br label %12

; <label>:12                                      ; preds = %13, %11
  %p_Val2_2 = phi i1 [ %local_V, %11 ], [ %local_V_1, %13 ]
  br i1 %p_Val2_2, label %14, label %13

; <label>:13                                      ; preds = %12
  %local_V_1 = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %fabric_interrupt_write_finished_V)
  br label %12

; <label>:14                                      ; preds = %12
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %controller_finished_V, i1 true)
  br label %.loopexit

.loopexit:                                        ; preds = %3, %14
  br label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %0
  ret void
}

define weak void @_ssdm_op_SpecWire(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_13 = trunc i32 %empty to i19
  ret i19 %empty_13
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i19.i1.i12(i19, i1, i12) nounwind readnone {
entry:
  %empty = zext i1 %1 to i13
  %empty_14 = zext i12 %2 to i13
  %empty_15 = trunc i13 %empty to i1
  %empty_16 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %empty_14, i32 12)
  %empty_17 = or i1 %empty_15, %empty_16
  %empty_18 = call i13 @_ssdm_op_PartSet.i13.i13.i1.i32.i32(i13 %empty_14, i1 %empty_17, i32 12, i32 12)
  %empty_19 = zext i19 %0 to i32
  %empty_20 = zext i13 %empty_18 to i32
  %empty_21 = trunc i32 %empty_19 to i19
  %empty_22 = call i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32 %empty_20, i32 13, i32 31)
  %empty_23 = or i19 %empty_21, %empty_22
  %empty_24 = call i32 @_ssdm_op_PartSet.i32.i32.i19.i32.i32(i32 %empty_20, i19 %empty_23, i32 13, i32 31)
  ret i32 %empty_24
}

define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_25 = trunc i32 %empty to i31
  ret i31 %empty_25
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone {
entry:
  %empty = zext i31 %0 to i32
  %empty_26 = zext i1 %1 to i32
  %empty_27 = trunc i32 %empty to i31
  %empty_28 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %empty_26, i32 1, i32 31)
  %empty_29 = or i31 %empty_27, %empty_28
  %empty_30 = call i32 @_ssdm_op_PartSet.i32.i32.i31.i32.i32(i32 %empty_26, i31 %empty_29, i32 1, i32 31)
  ret i32 %empty_30
}

define weak i32 @_ssdm_op_Read.ap_none.i32(i32) {
entry:
  ret i32 %0
}

define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

define weak i1 @_ssdm_op_Read.ap_none.i1(i1) {
entry:
  ret i1 %0
}

define weak void @_ssdm_op_Write.m_axi.volatile.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak i1 @_ssdm_op_WriteReq.m_axi.i32P(i32*, i32) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteResp.m_axi.i32P(i32*) {
entry:
  ret i1 true
}

define weak i32 @_ssdm_op_Read.m_axi.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak i1 @_ssdm_op_ReadReq.m_axi.i32P(i32*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.ap_none.volatile.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_none.volatile.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1*) {
entry:
  %empty = load i1* %0
  ret i1 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i3.i32(i3, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i3
  %empty_31 = shl i3 1, %empty
  %empty_32 = and i3 %0, %empty_31
  %empty_33 = icmp ne i3 %empty_32, 0
  ret i1 %empty_33
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_34 = and i32 %0, %empty
  %empty_35 = icmp ne i32 %empty_34, 0
  ret i1 %empty_35
}

declare i12 @_ssdm_op_PartSelect.i12.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i13.i32.i32(i13, i32, i32) nounwind readnone

define weak i13 @_ssdm_op_PartSet.i13.i13.i1.i32.i32(i13, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i13 @llvm.part.set.i13.i1(i13 %0, i1 %1, i32 %2, i32 %3)
  ret i13 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i13.i32(i13, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i13
  %empty_36 = shl i13 1, %empty
  %empty_37 = and i13 %0, %empty_36
  %empty_38 = icmp ne i13 %empty_37, 0
  ret i1 %empty_38
}

define weak i32 @_ssdm_op_PartSet.i32.i32.i19.i32.i32(i32, i19, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i19(i32 %0, i19 %1, i32 %2, i32 %3)
  ret i32 %empty
}

define weak i32 @_ssdm_op_PartSet.i32.i32.i31.i32.i32(i32, i31, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i31(i32 %0, i31 %1, i32 %2, i32 %3)
  ret i32 %empty
}

declare i13 @llvm.part.set.i13.i1(i13, i1, i32, i32) nounwind readnone

declare i32 @llvm.part.set.i32.i19(i32, i19, i32, i32) nounwind readnone

declare i32 @llvm.part.set.i32.i31(i32, i31, i32, i32) nounwind readnone

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !""}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"AXI_DMA_SLAVE", metadata !11, metadata !"int"}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 13, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"startAddress", metadata !17, metadata !"unsigned int"}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 0, i32 0}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 0, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"write", metadata !17, metadata !"bool"}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"length", metadata !17, metadata !"int"}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 31, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"iterations", metadata !17, metadata !"int"}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 0, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"enabled", metadata !17, metadata !"bool"}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 0, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"reset_scanner", metadata !5, metadata !"bool"}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 31, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"dma_control", metadata !5, metadata !"int"}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 31, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"dma_status", metadata !5, metadata !"int"}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 31, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"dma_address", metadata !5, metadata !"int"}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 0, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"fabric_interrupt_write_finished.V", metadata !5, metadata !"uint1"}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 0, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"fabric_interrupt_read_finished.V", metadata !5, metadata !"uint1"}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 0, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"controller_finished.V", metadata !5, metadata !"uint1"}
