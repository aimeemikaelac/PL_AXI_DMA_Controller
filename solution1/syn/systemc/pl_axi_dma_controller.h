// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _pl_axi_dma_controller_HH_
#define _pl_axi_dma_controller_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "pl_axi_dma_controller_AXI_DMA_SLAVE_m_axi.h"

namespace ap_rtl {

template<unsigned int C_M_AXI_AXI_DMA_SLAVE_ADDR_WIDTH = 32,
         unsigned int C_M_AXI_AXI_DMA_SLAVE_ID_WIDTH = 1,
         unsigned int C_M_AXI_AXI_DMA_SLAVE_AWUSER_WIDTH = 1,
         unsigned int C_M_AXI_AXI_DMA_SLAVE_DATA_WIDTH = 32,
         unsigned int C_M_AXI_AXI_DMA_SLAVE_WUSER_WIDTH = 1,
         unsigned int C_M_AXI_AXI_DMA_SLAVE_ARUSER_WIDTH = 1,
         unsigned int C_M_AXI_AXI_DMA_SLAVE_RUSER_WIDTH = 1,
         unsigned int C_M_AXI_AXI_DMA_SLAVE_BUSER_WIDTH = 1>
struct pl_axi_dma_controller : public sc_module {
    // Port declarations 63
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > m_axi_AXI_DMA_SLAVE_AWVALID;
    sc_in< sc_logic > m_axi_AXI_DMA_SLAVE_AWREADY;
    sc_out< sc_uint<C_M_AXI_AXI_DMA_SLAVE_ADDR_WIDTH> > m_axi_AXI_DMA_SLAVE_AWADDR;
    sc_out< sc_uint<C_M_AXI_AXI_DMA_SLAVE_ID_WIDTH> > m_axi_AXI_DMA_SLAVE_AWID;
    sc_out< sc_lv<8> > m_axi_AXI_DMA_SLAVE_AWLEN;
    sc_out< sc_lv<3> > m_axi_AXI_DMA_SLAVE_AWSIZE;
    sc_out< sc_lv<2> > m_axi_AXI_DMA_SLAVE_AWBURST;
    sc_out< sc_lv<2> > m_axi_AXI_DMA_SLAVE_AWLOCK;
    sc_out< sc_lv<4> > m_axi_AXI_DMA_SLAVE_AWCACHE;
    sc_out< sc_lv<3> > m_axi_AXI_DMA_SLAVE_AWPROT;
    sc_out< sc_lv<4> > m_axi_AXI_DMA_SLAVE_AWQOS;
    sc_out< sc_lv<4> > m_axi_AXI_DMA_SLAVE_AWREGION;
    sc_out< sc_uint<C_M_AXI_AXI_DMA_SLAVE_AWUSER_WIDTH> > m_axi_AXI_DMA_SLAVE_AWUSER;
    sc_out< sc_logic > m_axi_AXI_DMA_SLAVE_WVALID;
    sc_in< sc_logic > m_axi_AXI_DMA_SLAVE_WREADY;
    sc_out< sc_uint<C_M_AXI_AXI_DMA_SLAVE_DATA_WIDTH> > m_axi_AXI_DMA_SLAVE_WDATA;
    sc_out< sc_uint<C_M_AXI_AXI_DMA_SLAVE_DATA_WIDTH/8> > m_axi_AXI_DMA_SLAVE_WSTRB;
    sc_out< sc_logic > m_axi_AXI_DMA_SLAVE_WLAST;
    sc_out< sc_uint<C_M_AXI_AXI_DMA_SLAVE_ID_WIDTH> > m_axi_AXI_DMA_SLAVE_WID;
    sc_out< sc_uint<C_M_AXI_AXI_DMA_SLAVE_WUSER_WIDTH> > m_axi_AXI_DMA_SLAVE_WUSER;
    sc_out< sc_logic > m_axi_AXI_DMA_SLAVE_ARVALID;
    sc_in< sc_logic > m_axi_AXI_DMA_SLAVE_ARREADY;
    sc_out< sc_uint<C_M_AXI_AXI_DMA_SLAVE_ADDR_WIDTH> > m_axi_AXI_DMA_SLAVE_ARADDR;
    sc_out< sc_uint<C_M_AXI_AXI_DMA_SLAVE_ID_WIDTH> > m_axi_AXI_DMA_SLAVE_ARID;
    sc_out< sc_lv<8> > m_axi_AXI_DMA_SLAVE_ARLEN;
    sc_out< sc_lv<3> > m_axi_AXI_DMA_SLAVE_ARSIZE;
    sc_out< sc_lv<2> > m_axi_AXI_DMA_SLAVE_ARBURST;
    sc_out< sc_lv<2> > m_axi_AXI_DMA_SLAVE_ARLOCK;
    sc_out< sc_lv<4> > m_axi_AXI_DMA_SLAVE_ARCACHE;
    sc_out< sc_lv<3> > m_axi_AXI_DMA_SLAVE_ARPROT;
    sc_out< sc_lv<4> > m_axi_AXI_DMA_SLAVE_ARQOS;
    sc_out< sc_lv<4> > m_axi_AXI_DMA_SLAVE_ARREGION;
    sc_out< sc_uint<C_M_AXI_AXI_DMA_SLAVE_ARUSER_WIDTH> > m_axi_AXI_DMA_SLAVE_ARUSER;
    sc_in< sc_logic > m_axi_AXI_DMA_SLAVE_RVALID;
    sc_out< sc_logic > m_axi_AXI_DMA_SLAVE_RREADY;
    sc_in< sc_uint<C_M_AXI_AXI_DMA_SLAVE_DATA_WIDTH> > m_axi_AXI_DMA_SLAVE_RDATA;
    sc_in< sc_logic > m_axi_AXI_DMA_SLAVE_RLAST;
    sc_in< sc_uint<C_M_AXI_AXI_DMA_SLAVE_ID_WIDTH> > m_axi_AXI_DMA_SLAVE_RID;
    sc_in< sc_uint<C_M_AXI_AXI_DMA_SLAVE_RUSER_WIDTH> > m_axi_AXI_DMA_SLAVE_RUSER;
    sc_in< sc_lv<2> > m_axi_AXI_DMA_SLAVE_RRESP;
    sc_in< sc_logic > m_axi_AXI_DMA_SLAVE_BVALID;
    sc_out< sc_logic > m_axi_AXI_DMA_SLAVE_BREADY;
    sc_in< sc_lv<2> > m_axi_AXI_DMA_SLAVE_BRESP;
    sc_in< sc_uint<C_M_AXI_AXI_DMA_SLAVE_ID_WIDTH> > m_axi_AXI_DMA_SLAVE_BID;
    sc_in< sc_uint<C_M_AXI_AXI_DMA_SLAVE_BUSER_WIDTH> > m_axi_AXI_DMA_SLAVE_BUSER;
    sc_in< sc_lv<32> > startAddress;
    sc_in< sc_logic > write_r;
    sc_in< sc_lv<32> > length_r;
    sc_in< sc_lv<32> > iterations;
    sc_in< sc_logic > enabled;
    sc_out< sc_logic > reset_scanner;
    sc_out< sc_lv<32> > dma_control;
    sc_out< sc_lv<32> > dma_status;
    sc_out< sc_lv<32> > dma_address;
    sc_in< sc_lv<1> > fabric_interrupt_write_finished_V;
    sc_in< sc_lv<1> > fabric_interrupt_read_finished_V;
    sc_out< sc_lv<1> > controller_finished_V;


    // Module declarations
    pl_axi_dma_controller(sc_module_name name);
    SC_HAS_PROCESS(pl_axi_dma_controller);

    ~pl_axi_dma_controller();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    pl_axi_dma_controller_AXI_DMA_SLAVE_m_axi<32,32,2,C_M_AXI_AXI_DMA_SLAVE_ID_WIDTH,C_M_AXI_AXI_DMA_SLAVE_ADDR_WIDTH,C_M_AXI_AXI_DMA_SLAVE_DATA_WIDTH,C_M_AXI_AXI_DMA_SLAVE_AWUSER_WIDTH,C_M_AXI_AXI_DMA_SLAVE_ARUSER_WIDTH,C_M_AXI_AXI_DMA_SLAVE_WUSER_WIDTH,C_M_AXI_AXI_DMA_SLAVE_RUSER_WIDTH,C_M_AXI_AXI_DMA_SLAVE_BUSER_WIDTH,C_M_AXI_AXI_DMA_SLAVE_TARGET_ADDR,C_M_AXI_AXI_DMA_SLAVE_USER_VALUE,C_M_AXI_AXI_DMA_SLAVE_PROT_VALUE,C_M_AXI_AXI_DMA_SLAVE_CACHE_VALUE>* pl_axi_dma_controller_AXI_DMA_SLAVE_m_axi_U;
    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > AXI_DMA_SLAVE_AWVALID;
    sc_signal< sc_logic > AXI_DMA_SLAVE_AWREADY;
    sc_signal< sc_lv<32> > AXI_DMA_SLAVE_AWADDR;
    sc_signal< sc_lv<1> > AXI_DMA_SLAVE_AWID;
    sc_signal< sc_lv<32> > AXI_DMA_SLAVE_AWLEN;
    sc_signal< sc_lv<3> > AXI_DMA_SLAVE_AWSIZE;
    sc_signal< sc_lv<2> > AXI_DMA_SLAVE_AWBURST;
    sc_signal< sc_lv<2> > AXI_DMA_SLAVE_AWLOCK;
    sc_signal< sc_lv<4> > AXI_DMA_SLAVE_AWCACHE;
    sc_signal< sc_lv<3> > AXI_DMA_SLAVE_AWPROT;
    sc_signal< sc_lv<4> > AXI_DMA_SLAVE_AWQOS;
    sc_signal< sc_lv<4> > AXI_DMA_SLAVE_AWREGION;
    sc_signal< sc_lv<1> > AXI_DMA_SLAVE_AWUSER;
    sc_signal< sc_logic > AXI_DMA_SLAVE_WVALID;
    sc_signal< sc_logic > AXI_DMA_SLAVE_WREADY;
    sc_signal< sc_lv<32> > AXI_DMA_SLAVE_WDATA;
    sc_signal< sc_lv<4> > AXI_DMA_SLAVE_WSTRB;
    sc_signal< sc_logic > AXI_DMA_SLAVE_WLAST;
    sc_signal< sc_lv<1> > AXI_DMA_SLAVE_WID;
    sc_signal< sc_lv<1> > AXI_DMA_SLAVE_WUSER;
    sc_signal< sc_logic > AXI_DMA_SLAVE_ARVALID;
    sc_signal< sc_logic > AXI_DMA_SLAVE_ARREADY;
    sc_signal< sc_lv<32> > AXI_DMA_SLAVE_ARADDR;
    sc_signal< sc_lv<1> > AXI_DMA_SLAVE_ARID;
    sc_signal< sc_lv<32> > AXI_DMA_SLAVE_ARLEN;
    sc_signal< sc_lv<3> > AXI_DMA_SLAVE_ARSIZE;
    sc_signal< sc_lv<2> > AXI_DMA_SLAVE_ARBURST;
    sc_signal< sc_lv<2> > AXI_DMA_SLAVE_ARLOCK;
    sc_signal< sc_lv<4> > AXI_DMA_SLAVE_ARCACHE;
    sc_signal< sc_lv<3> > AXI_DMA_SLAVE_ARPROT;
    sc_signal< sc_lv<4> > AXI_DMA_SLAVE_ARQOS;
    sc_signal< sc_lv<4> > AXI_DMA_SLAVE_ARREGION;
    sc_signal< sc_lv<1> > AXI_DMA_SLAVE_ARUSER;
    sc_signal< sc_logic > AXI_DMA_SLAVE_RVALID;
    sc_signal< sc_logic > AXI_DMA_SLAVE_RREADY;
    sc_signal< sc_lv<32> > AXI_DMA_SLAVE_RDATA;
    sc_signal< sc_logic > AXI_DMA_SLAVE_RLAST;
    sc_signal< sc_lv<1> > AXI_DMA_SLAVE_RID;
    sc_signal< sc_lv<1> > AXI_DMA_SLAVE_RUSER;
    sc_signal< sc_lv<2> > AXI_DMA_SLAVE_RRESP;
    sc_signal< sc_logic > AXI_DMA_SLAVE_BVALID;
    sc_signal< sc_logic > AXI_DMA_SLAVE_BREADY;
    sc_signal< sc_lv<2> > AXI_DMA_SLAVE_BRESP;
    sc_signal< sc_lv<1> > AXI_DMA_SLAVE_BID;
    sc_signal< sc_lv<1> > AXI_DMA_SLAVE_BUSER;
    sc_signal< sc_lv<31> > reg_298;
    sc_signal< sc_lv<19> > reg_302;
    sc_signal< sc_lv<1> > localEnabled_load_fu_331_p1;
    sc_signal< sc_lv<1> > localEnabled_reg_481;
    sc_signal< sc_lv<1> > write_assign_load_load_fu_334_p1;
    sc_signal< sc_logic > ap_sig_ioackin_AXI_DMA_SLAVE_ARREADY;
    sc_signal< sc_lv<1> > write_assign_load_reg_485;
    sc_signal< sc_lv<32> > AXI_DMA_SLAVE_addr_3_fu_337_p2;
    sc_signal< sc_lv<32> > AXI_DMA_SLAVE_addr_3_reg_489;
    sc_signal< sc_lv<12> > tmp_4_fu_353_p1;
    sc_signal< sc_lv<12> > tmp_4_reg_495;
    sc_signal< sc_logic > ap_sig_ioackin_AXI_DMA_SLAVE_AWREADY;
    sc_signal< sc_logic > ap_sig_ioackin_AXI_DMA_SLAVE_WREADY;
    sc_signal< sc_lv<1> > p_Val2_2_phi_fu_231_p4;
    sc_signal< sc_lv<32> > AXI_DMA_SLAVE_addr_fu_381_p2;
    sc_signal< sc_lv<32> > AXI_DMA_SLAVE_addr_reg_525;
    sc_signal< sc_lv<32> > AXI_DMA_SLAVE_addr_1_fu_387_p2;
    sc_signal< sc_lv<32> > AXI_DMA_SLAVE_addr_1_reg_531;
    sc_signal< sc_lv<32> > AXI_DMA_SLAVE_addr_2_fu_393_p2;
    sc_signal< sc_lv<32> > AXI_DMA_SLAVE_addr_2_reg_536;
    sc_signal< sc_lv<1> > tmp_2_fu_402_p2;
    sc_signal< sc_lv<1> > tmp_2_reg_541;
    sc_signal< sc_lv<32> > i_1_fu_408_p2;
    sc_signal< sc_lv<32> > i_1_reg_545;
    sc_signal< sc_lv<12> > tmp_10_fu_431_p1;
    sc_signal< sc_lv<12> > tmp_10_reg_553;
    sc_signal< sc_lv<32> > localAddress_1_fu_445_p2;
    sc_signal< sc_lv<32> > localAddress_1_reg_558;
    sc_signal< sc_lv<1> > p_Val2_s_phi_fu_263_p4;
    sc_signal< sc_lv<1> > p_Val2_2_reg_228;
    sc_signal< sc_lv<32> > i_reg_237;
    sc_signal< sc_lv<32> > localAddress1_reg_248;
    sc_signal< sc_lv<1> > p_Val2_s_reg_260;
    sc_signal< sc_logic > ap_reg_ioackin_AXI_DMA_SLAVE_ARREADY;
    sc_signal< sc_logic > ap_reg_ioackin_AXI_DMA_SLAVE_AWREADY;
    sc_signal< sc_logic > ap_reg_ioackin_AXI_DMA_SLAVE_WREADY;
    sc_signal< sc_lv<32> > tmp_fu_344_p3;
    sc_signal< sc_lv<32> > tmp_1_fu_357_p4;
    sc_signal< sc_lv<1> > tmp_8_fu_414_p3;
    sc_signal< sc_lv<32> > tmp_5_fu_422_p3;
    sc_signal< sc_lv<32> > tmp_6_fu_435_p4;
    sc_signal< bool > ap_sig_bdd_504;
    sc_signal< sc_lv<32> > startAddress_assign_fu_106;
    sc_signal< sc_lv<1> > write_assign_fu_110;
    sc_signal< sc_lv<1> > write_read_read_fu_132_p2;
    sc_signal< sc_lv<32> > length_assign_fu_114;
    sc_signal< sc_lv<32> > iterations_assign_fu_118;
    sc_signal< sc_lv<1> > enabled_assign_fu_122;
    sc_signal< sc_lv<1> > enabled_read_read_fu_126_p2;
    sc_signal< sc_logic > reset_scanner_preg;
    sc_signal< sc_lv<1> > controller_finished_V_preg;
    sc_signal< sc_lv<32> > dma_address_preg;
    sc_signal< sc_lv<32> > dma_control_preg;
    sc_signal< sc_lv<32> > dma_status_preg;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_st1_fsm_0;
    static const sc_lv<5> ap_ST_st2_fsm_1;
    static const sc_lv<5> ap_ST_st3_fsm_2;
    static const sc_lv<5> ap_ST_st4_fsm_3;
    static const sc_lv<5> ap_ST_st5_fsm_4;
    static const sc_lv<5> ap_ST_st6_fsm_5;
    static const sc_lv<5> ap_ST_st7_fsm_6;
    static const sc_lv<5> ap_ST_st8_fsm_7;
    static const sc_lv<5> ap_ST_st9_fsm_8;
    static const sc_lv<5> ap_ST_st10_fsm_9;
    static const sc_lv<5> ap_ST_st11_fsm_10;
    static const sc_lv<5> ap_ST_st12_fsm_11;
    static const sc_lv<5> ap_ST_st13_fsm_12;
    static const sc_lv<5> ap_ST_st14_fsm_13;
    static const sc_lv<5> ap_ST_st15_fsm_14;
    static const sc_lv<5> ap_ST_st16_fsm_15;
    static const sc_lv<5> ap_ST_st17_fsm_16;
    static const sc_lv<5> ap_ST_st18_fsm_17;
    static const sc_lv<5> ap_ST_st19_fsm_18;
    static const sc_lv<5> ap_ST_st20_fsm_19;
    static const sc_lv<5> ap_ST_st21_fsm_20;
    static const sc_lv<5> ap_ST_st22_fsm_21;
    static const sc_lv<5> ap_ST_st23_fsm_22;
    static const sc_lv<5> ap_ST_st24_fsm_23;
    static const sc_lv<5> ap_ST_st25_fsm_24;
    static const sc_lv<5> ap_ST_st26_fsm_25;
    static const sc_lv<5> ap_ST_st27_fsm_26;
    static const sc_lv<5> ap_ST_st28_fsm_27;
    static const sc_lv<5> ap_ST_st29_fsm_28;
    static const sc_lv<5> ap_ST_st30_fsm_29;
    static const sc_lv<5> ap_ST_st31_fsm_30;
    static const sc_lv<5> ap_ST_st32_fsm_31;
    static const int C_DATA_WIDTH;
    static const int C_M_AXI_AXI_DMA_SLAVE_TARGET_ADDR;
    static const int C_M_AXI_AXI_DMA_SLAVE_USER_VALUE;
    static const int C_M_AXI_AXI_DMA_SLAVE_PROT_VALUE;
    static const int C_M_AXI_AXI_DMA_SLAVE_CACHE_VALUE;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<64> ap_const_lv64_C;
    static const sc_lv<64> ap_const_lv64_12;
    static const sc_lv<64> ap_const_lv64_16;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_6;
    static const sc_lv<64> ap_const_lv64_A;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_AXI_DMA_SLAVE_ARADDR();
    void thread_AXI_DMA_SLAVE_ARBURST();
    void thread_AXI_DMA_SLAVE_ARCACHE();
    void thread_AXI_DMA_SLAVE_ARID();
    void thread_AXI_DMA_SLAVE_ARLEN();
    void thread_AXI_DMA_SLAVE_ARLOCK();
    void thread_AXI_DMA_SLAVE_ARPROT();
    void thread_AXI_DMA_SLAVE_ARQOS();
    void thread_AXI_DMA_SLAVE_ARREGION();
    void thread_AXI_DMA_SLAVE_ARSIZE();
    void thread_AXI_DMA_SLAVE_ARUSER();
    void thread_AXI_DMA_SLAVE_ARVALID();
    void thread_AXI_DMA_SLAVE_AWADDR();
    void thread_AXI_DMA_SLAVE_AWBURST();
    void thread_AXI_DMA_SLAVE_AWCACHE();
    void thread_AXI_DMA_SLAVE_AWID();
    void thread_AXI_DMA_SLAVE_AWLEN();
    void thread_AXI_DMA_SLAVE_AWLOCK();
    void thread_AXI_DMA_SLAVE_AWPROT();
    void thread_AXI_DMA_SLAVE_AWQOS();
    void thread_AXI_DMA_SLAVE_AWREGION();
    void thread_AXI_DMA_SLAVE_AWSIZE();
    void thread_AXI_DMA_SLAVE_AWUSER();
    void thread_AXI_DMA_SLAVE_AWVALID();
    void thread_AXI_DMA_SLAVE_BREADY();
    void thread_AXI_DMA_SLAVE_RREADY();
    void thread_AXI_DMA_SLAVE_WDATA();
    void thread_AXI_DMA_SLAVE_WID();
    void thread_AXI_DMA_SLAVE_WLAST();
    void thread_AXI_DMA_SLAVE_WSTRB();
    void thread_AXI_DMA_SLAVE_WUSER();
    void thread_AXI_DMA_SLAVE_WVALID();
    void thread_AXI_DMA_SLAVE_addr_1_fu_387_p2();
    void thread_AXI_DMA_SLAVE_addr_2_fu_393_p2();
    void thread_AXI_DMA_SLAVE_addr_3_fu_337_p2();
    void thread_AXI_DMA_SLAVE_addr_fu_381_p2();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_bdd_504();
    void thread_ap_sig_ioackin_AXI_DMA_SLAVE_ARREADY();
    void thread_ap_sig_ioackin_AXI_DMA_SLAVE_AWREADY();
    void thread_ap_sig_ioackin_AXI_DMA_SLAVE_WREADY();
    void thread_controller_finished_V();
    void thread_dma_address();
    void thread_dma_control();
    void thread_dma_status();
    void thread_enabled_read_read_fu_126_p2();
    void thread_i_1_fu_408_p2();
    void thread_localAddress_1_fu_445_p2();
    void thread_localEnabled_load_fu_331_p1();
    void thread_p_Val2_2_phi_fu_231_p4();
    void thread_p_Val2_s_phi_fu_263_p4();
    void thread_reset_scanner();
    void thread_tmp_10_fu_431_p1();
    void thread_tmp_1_fu_357_p4();
    void thread_tmp_2_fu_402_p2();
    void thread_tmp_4_fu_353_p1();
    void thread_tmp_5_fu_422_p3();
    void thread_tmp_6_fu_435_p4();
    void thread_tmp_8_fu_414_p3();
    void thread_tmp_fu_344_p3();
    void thread_write_assign_load_load_fu_334_p1();
    void thread_write_read_read_fu_132_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
