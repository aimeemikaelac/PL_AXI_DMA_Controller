# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native M_AXI:
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::m_axi_gen] == "::AESL_LIB_XILADAPTER::m_axi_gen"} {
eval "::AESL_LIB_XILADAPTER::m_axi_gen { \
    id 1 \
    corename {m_axi} \
    op interface \
    name {pl_axi_dma_controller_AXI_DMA_SLAVE_m_axi} \
} "
} else {
puts "@W \[IMPL-110\] Cannot find AXI interface model in the library. Ignored generation of AXI interface for 'AXI_DMA_SLAVE'"
}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler pl_axi_dma_controller_AXI_DMA_SLAVE_m_axi
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name startAddress \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_startAddress \
    op interface \
    ports { startAddress { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name write_r \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_write_r \
    op interface \
    ports { write_r { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name length_r \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_length_r \
    op interface \
    ports { length_r { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name iterations \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_iterations \
    op interface \
    ports { iterations { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name enabled \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_enabled \
    op interface \
    ports { enabled { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name reset_scanner \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_reset_scanner \
    op interface \
    ports { reset_scanner { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name dma_control \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_dma_control \
    op interface \
    ports { dma_control { O 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name dma_status \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_dma_status \
    op interface \
    ports { dma_status { O 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name dma_address \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_dma_address \
    op interface \
    ports { dma_address { O 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name fabric_interrupt_write_finished_V \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_fabric_interrupt_write_finished_V \
    op interface \
    ports { fabric_interrupt_write_finished_V { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name fabric_interrupt_read_finished_V \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_fabric_interrupt_read_finished_V \
    op interface \
    ports { fabric_interrupt_read_finished_V { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name controller_finished_V \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_controller_finished_V \
    op interface \
    ports { controller_finished_V { O 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 0 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


