# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name tilenuma \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tilenuma \
    op interface \
    ports { tilenuma { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name tilenumc \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tilenumc \
    op interface \
    ports { tilenumc { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name tilen \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tilen \
    op interface \
    ports { tilen { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name numa_iter \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_numa_iter \
    op interface \
    ports { numa_iter { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name numc_iter \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_numc_iter \
    op interface \
    ports { numc_iter { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name n_iter \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_n_iter \
    op interface \
    ports { n_iter { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name tilenuma_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tilenuma_out \
    op interface \
    ports { tilenuma_out_din { O 32 vector } tilenuma_out_full_n { I 1 bit } tilenuma_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name tilenuma_out1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tilenuma_out1 \
    op interface \
    ports { tilenuma_out1_din { O 32 vector } tilenuma_out1_full_n { I 1 bit } tilenuma_out1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name tilenumc_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tilenumc_out \
    op interface \
    ports { tilenumc_out_din { O 32 vector } tilenumc_out_full_n { I 1 bit } tilenumc_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name tilenumc_out2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tilenumc_out2 \
    op interface \
    ports { tilenumc_out2_din { O 32 vector } tilenumc_out2_full_n { I 1 bit } tilenumc_out2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name tilen_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tilen_out \
    op interface \
    ports { tilen_out_din { O 32 vector } tilen_out_full_n { I 1 bit } tilen_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name numa_iter_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_numa_iter_out \
    op interface \
    ports { numa_iter_out_din { O 32 vector } numa_iter_out_full_n { I 1 bit } numa_iter_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name numa_iter_out3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_numa_iter_out3 \
    op interface \
    ports { numa_iter_out3_din { O 32 vector } numa_iter_out3_full_n { I 1 bit } numa_iter_out3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name numc_iter_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_numc_iter_out \
    op interface \
    ports { numc_iter_out_din { O 32 vector } numc_iter_out_full_n { I 1 bit } numc_iter_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name numc_iter_out4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_numc_iter_out4 \
    op interface \
    ports { numc_iter_out4_din { O 32 vector } numc_iter_out4_full_n { I 1 bit } numc_iter_out4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name n_iter_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_n_iter_out \
    op interface \
    ports { n_iter_out_din { O 32 vector } n_iter_out_full_n { I 1 bit } n_iter_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name n_iter_out5 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_n_iter_out5 \
    op interface \
    ports { n_iter_out5_din { O 32 vector } n_iter_out5_full_n { I 1 bit } n_iter_out5_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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
    reset_level 1 \
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
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
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


