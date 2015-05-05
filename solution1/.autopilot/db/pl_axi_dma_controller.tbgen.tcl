set moduleName pl_axi_dma_controller
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName pl_axi_dma_controller
set C_modelType { void 0 }
set C_modelArgList { 
	{ AXI_DMA_SLAVE int 32 regular {axi_master 2}  }
	{ startAddress int 32 regular  }
	{ write_r uint 1 regular  }
	{ length_r int 32 regular  }
	{ iterations int 32 regular  }
	{ enabled uint 1 regular  }
	{ reset_scanner int 1 regular {pointer 1 volatile }  }
	{ dma_control int 32 regular {pointer 1 volatile }  }
	{ dma_status int 32 regular {pointer 1 volatile }  }
	{ dma_address int 32 regular {pointer 1 volatile }  }
	{ fabric_interrupt_write_finished_V int 1 regular {pointer 0 volatile }  }
	{ fabric_interrupt_read_finished_V int 1 regular {pointer 0 volatile }  }
	{ controller_finished_V int 1 regular {pointer 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "AXI_DMA_SLAVE", "interface" : "axi_master", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "AXI_DMA_SLAVE","cData": "int","cArray": [{"low" : 0,"up" : 13,"step" : 1}]}]}]} , 
 	{ "Name" : "startAddress", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "startAddress","cData": "unsigned int","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "write_r", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "write","cData": "bool","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "length_r", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "length","cData": "int","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "iterations", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "iterations","cData": "int","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "enabled", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "enabled","cData": "bool","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "reset_scanner", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "reset_scanner","cData": "bool","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dma_control", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dma_control","cData": "int","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dma_status", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dma_status","cData": "int","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dma_address", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dma_address","cData": "int","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fabric_interrupt_write_finished_V", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "fabric_interrupt_write_finished.V","cData": "uint1","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fabric_interrupt_read_finished_V", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "fabric_interrupt_read_finished.V","cData": "uint1","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "controller_finished_V", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "controller_finished.V","cData": "uint1","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 63
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_AXI_DMA_SLAVE_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_AXI_DMA_SLAVE_BUSER sc_in sc_lv 1 signal 0 } 
	{ startAddress sc_in sc_lv 32 signal 1 } 
	{ write_r sc_in sc_logic 1 signal 2 } 
	{ length_r sc_in sc_lv 32 signal 3 } 
	{ iterations sc_in sc_lv 32 signal 4 } 
	{ enabled sc_in sc_logic 1 signal 5 } 
	{ reset_scanner sc_out sc_logic 1 signal 6 } 
	{ dma_control sc_out sc_lv 32 signal 7 } 
	{ dma_status sc_out sc_lv 32 signal 8 } 
	{ dma_address sc_out sc_lv 32 signal 9 } 
	{ fabric_interrupt_write_finished_V sc_in sc_lv 1 signal 10 } 
	{ fabric_interrupt_read_finished_V sc_in sc_lv 1 signal 11 } 
	{ controller_finished_V sc_out sc_lv 1 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "AWVALID" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "AWREADY" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "AWADDR" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "AWID" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "AWLEN" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "AWBURST" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "AWPROT" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "AWQOS" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "AWREGION" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "AWUSER" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "WVALID" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "WREADY" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "WDATA" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "WSTRB" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "WLAST" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "WID" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "WUSER" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "ARVALID" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "ARREADY" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "ARADDR" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "ARID" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "ARLEN" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "ARBURST" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "ARPROT" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "ARQOS" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "ARREGION" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "ARUSER" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "RVALID" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "RREADY" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "RDATA" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "RLAST" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "RID" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "RUSER" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "RRESP" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "BVALID" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "BREADY" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "BRESP" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "BID" }} , 
 	{ "name": "m_axi_AXI_DMA_SLAVE_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DMA_SLAVE", "role": "BUSER" }} , 
 	{ "name": "startAddress", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "startAddress", "role": "default" }} , 
 	{ "name": "write_r", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "write_r", "role": "default" }} , 
 	{ "name": "length_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "length_r", "role": "default" }} , 
 	{ "name": "iterations", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iterations", "role": "default" }} , 
 	{ "name": "enabled", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "enabled", "role": "default" }} , 
 	{ "name": "reset_scanner", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reset_scanner", "role": "default" }} , 
 	{ "name": "dma_control", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dma_control", "role": "default" }} , 
 	{ "name": "dma_status", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dma_status", "role": "default" }} , 
 	{ "name": "dma_address", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dma_address", "role": "default" }} , 
 	{ "name": "fabric_interrupt_write_finished_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fabric_interrupt_write_finished_V", "role": "default" }} , 
 	{ "name": "fabric_interrupt_read_finished_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fabric_interrupt_read_finished_V", "role": "default" }} , 
 	{ "name": "controller_finished_V", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "controller_finished_V", "role": "default" }}  ]}
set Spec2ImplPortList { 
	AXI_DMA_SLAVE { m_axi {  { m_axi_AXI_DMA_SLAVE_AWVALID VALID 1 1 }  { m_axi_AXI_DMA_SLAVE_AWREADY READY 0 1 }  { m_axi_AXI_DMA_SLAVE_AWADDR ADDR 1 32 }  { m_axi_AXI_DMA_SLAVE_AWID ID 1 1 }  { m_axi_AXI_DMA_SLAVE_AWLEN LEN 1 8 }  { m_axi_AXI_DMA_SLAVE_AWSIZE SIZE 1 3 }  { m_axi_AXI_DMA_SLAVE_AWBURST BURST 1 2 }  { m_axi_AXI_DMA_SLAVE_AWLOCK LOCK 1 2 }  { m_axi_AXI_DMA_SLAVE_AWCACHE CACHE 1 4 }  { m_axi_AXI_DMA_SLAVE_AWPROT PROT 1 3 }  { m_axi_AXI_DMA_SLAVE_AWQOS QOS 1 4 }  { m_axi_AXI_DMA_SLAVE_AWREGION REGION 1 4 }  { m_axi_AXI_DMA_SLAVE_AWUSER USER 1 1 }  { m_axi_AXI_DMA_SLAVE_WVALID VALID 1 1 }  { m_axi_AXI_DMA_SLAVE_WREADY READY 0 1 }  { m_axi_AXI_DMA_SLAVE_WDATA DATA 1 32 }  { m_axi_AXI_DMA_SLAVE_WSTRB STRB 1 4 }  { m_axi_AXI_DMA_SLAVE_WLAST LAST 1 1 }  { m_axi_AXI_DMA_SLAVE_WID ID 1 1 }  { m_axi_AXI_DMA_SLAVE_WUSER USER 1 1 }  { m_axi_AXI_DMA_SLAVE_ARVALID VALID 1 1 }  { m_axi_AXI_DMA_SLAVE_ARREADY READY 0 1 }  { m_axi_AXI_DMA_SLAVE_ARADDR ADDR 1 32 }  { m_axi_AXI_DMA_SLAVE_ARID ID 1 1 }  { m_axi_AXI_DMA_SLAVE_ARLEN LEN 1 8 }  { m_axi_AXI_DMA_SLAVE_ARSIZE SIZE 1 3 }  { m_axi_AXI_DMA_SLAVE_ARBURST BURST 1 2 }  { m_axi_AXI_DMA_SLAVE_ARLOCK LOCK 1 2 }  { m_axi_AXI_DMA_SLAVE_ARCACHE CACHE 1 4 }  { m_axi_AXI_DMA_SLAVE_ARPROT PROT 1 3 }  { m_axi_AXI_DMA_SLAVE_ARQOS QOS 1 4 }  { m_axi_AXI_DMA_SLAVE_ARREGION REGION 1 4 }  { m_axi_AXI_DMA_SLAVE_ARUSER USER 1 1 }  { m_axi_AXI_DMA_SLAVE_RVALID VALID 0 1 }  { m_axi_AXI_DMA_SLAVE_RREADY READY 1 1 }  { m_axi_AXI_DMA_SLAVE_RDATA DATA 0 32 }  { m_axi_AXI_DMA_SLAVE_RLAST LAST 0 1 }  { m_axi_AXI_DMA_SLAVE_RID ID 0 1 }  { m_axi_AXI_DMA_SLAVE_RUSER USER 0 1 }  { m_axi_AXI_DMA_SLAVE_RRESP RESP 0 2 }  { m_axi_AXI_DMA_SLAVE_BVALID VALID 0 1 }  { m_axi_AXI_DMA_SLAVE_BREADY READY 1 1 }  { m_axi_AXI_DMA_SLAVE_BRESP RESP 0 2 }  { m_axi_AXI_DMA_SLAVE_BID ID 0 1 }  { m_axi_AXI_DMA_SLAVE_BUSER USER 0 1 } } }
	startAddress { ap_none {  { startAddress in_data 0 32 } } }
	write_r { ap_none {  { write_r in_data 0 1 } } }
	length_r { ap_none {  { length_r in_data 0 32 } } }
	iterations { ap_none {  { iterations in_data 0 32 } } }
	enabled { ap_none {  { enabled in_data 0 1 } } }
	reset_scanner { ap_none {  { reset_scanner out_data 1 1 } } }
	dma_control { ap_none {  { dma_control out_data 1 32 } } }
	dma_status { ap_none {  { dma_status out_data 1 32 } } }
	dma_address { ap_none {  { dma_address out_data 1 32 } } }
	fabric_interrupt_write_finished_V { ap_none {  { fabric_interrupt_write_finished_V in_data 0 1 } } }
	fabric_interrupt_read_finished_V { ap_none {  { fabric_interrupt_read_finished_V in_data 0 1 } } }
	controller_finished_V { ap_none {  { controller_finished_V out_data 1 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
