  //Example instantiation for system 'Nios2Core2'
  Nios2Core2 Nios2Core2_inst
    (
      .address_to_the_cfi          (address_to_the_cfi),
      .clk_0                       (clk_0),
      .data_to_and_from_the_cfi    (data_to_and_from_the_cfi),
      .out_port_from_the_pio0      (out_port_from_the_pio0),
      .out_port_from_the_pio1      (out_port_from_the_pio1),
      .read_n_to_the_cfi           (read_n_to_the_cfi),
      .reset_n                     (reset_n),
      .select_n_to_the_cfi         (select_n_to_the_cfi),
      .write_n_to_the_cfi          (write_n_to_the_cfi),
      .zs_addr_from_the_sdram      (zs_addr_from_the_sdram),
      .zs_ba_from_the_sdram        (zs_ba_from_the_sdram),
      .zs_cas_n_from_the_sdram     (zs_cas_n_from_the_sdram),
      .zs_cke_from_the_sdram       (zs_cke_from_the_sdram),
      .zs_cs_n_from_the_sdram      (zs_cs_n_from_the_sdram),
      .zs_dq_to_and_from_the_sdram (zs_dq_to_and_from_the_sdram),
      .zs_dqm_from_the_sdram       (zs_dqm_from_the_sdram),
      .zs_ras_n_from_the_sdram     (zs_ras_n_from_the_sdram),
      .zs_we_n_from_the_sdram      (zs_we_n_from_the_sdram)
    );

