//megafunction wizard: %Altera SOPC Builder%
//GENERATION: STANDARD
//VERSION: WM1.0


//Legal Notice: (C)2015 Altera Corporation. All rights reserved.  Your
//use of Altera Corporation's design tools, logic functions and other
//software and tools, and its AMPP partner logic functions, and any
//output files any of the foregoing (including device programming or
//simulation files), and any associated documentation or information are
//expressly subject to the terms and conditions of the Altera Program
//License Subscription Agreement or other applicable license agreement,
//including, without limitation, that your use is for the sole purpose
//of programming logic devices manufactured by Altera and sold by Altera
//or its authorized distributors.  Please refer to the applicable
//agreement for further details.

// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu0_jtag_debug_module_arbitrator (
                                           // inputs:
                                            clk,
                                            cpu0_data_master_address_to_slave,
                                            cpu0_data_master_byteenable,
                                            cpu0_data_master_debugaccess,
                                            cpu0_data_master_read,
                                            cpu0_data_master_waitrequest,
                                            cpu0_data_master_write,
                                            cpu0_data_master_writedata,
                                            cpu0_instruction_master_address_to_slave,
                                            cpu0_instruction_master_latency_counter,
                                            cpu0_instruction_master_read,
                                            cpu0_instruction_master_read_data_valid_sdram_s1_shift_register,
                                            cpu0_jtag_debug_module_readdata,
                                            cpu0_jtag_debug_module_resetrequest,
                                            reset_n,

                                           // outputs:
                                            cpu0_data_master_granted_cpu0_jtag_debug_module,
                                            cpu0_data_master_qualified_request_cpu0_jtag_debug_module,
                                            cpu0_data_master_read_data_valid_cpu0_jtag_debug_module,
                                            cpu0_data_master_requests_cpu0_jtag_debug_module,
                                            cpu0_instruction_master_granted_cpu0_jtag_debug_module,
                                            cpu0_instruction_master_qualified_request_cpu0_jtag_debug_module,
                                            cpu0_instruction_master_read_data_valid_cpu0_jtag_debug_module,
                                            cpu0_instruction_master_requests_cpu0_jtag_debug_module,
                                            cpu0_jtag_debug_module_address,
                                            cpu0_jtag_debug_module_begintransfer,
                                            cpu0_jtag_debug_module_byteenable,
                                            cpu0_jtag_debug_module_chipselect,
                                            cpu0_jtag_debug_module_debugaccess,
                                            cpu0_jtag_debug_module_readdata_from_sa,
                                            cpu0_jtag_debug_module_reset_n,
                                            cpu0_jtag_debug_module_resetrequest_from_sa,
                                            cpu0_jtag_debug_module_write,
                                            cpu0_jtag_debug_module_writedata,
                                            d1_cpu0_jtag_debug_module_end_xfer
                                         )
;

  output           cpu0_data_master_granted_cpu0_jtag_debug_module;
  output           cpu0_data_master_qualified_request_cpu0_jtag_debug_module;
  output           cpu0_data_master_read_data_valid_cpu0_jtag_debug_module;
  output           cpu0_data_master_requests_cpu0_jtag_debug_module;
  output           cpu0_instruction_master_granted_cpu0_jtag_debug_module;
  output           cpu0_instruction_master_qualified_request_cpu0_jtag_debug_module;
  output           cpu0_instruction_master_read_data_valid_cpu0_jtag_debug_module;
  output           cpu0_instruction_master_requests_cpu0_jtag_debug_module;
  output  [  8: 0] cpu0_jtag_debug_module_address;
  output           cpu0_jtag_debug_module_begintransfer;
  output  [  3: 0] cpu0_jtag_debug_module_byteenable;
  output           cpu0_jtag_debug_module_chipselect;
  output           cpu0_jtag_debug_module_debugaccess;
  output  [ 31: 0] cpu0_jtag_debug_module_readdata_from_sa;
  output           cpu0_jtag_debug_module_reset_n;
  output           cpu0_jtag_debug_module_resetrequest_from_sa;
  output           cpu0_jtag_debug_module_write;
  output  [ 31: 0] cpu0_jtag_debug_module_writedata;
  output           d1_cpu0_jtag_debug_module_end_xfer;
  input            clk;
  input   [ 26: 0] cpu0_data_master_address_to_slave;
  input   [  3: 0] cpu0_data_master_byteenable;
  input            cpu0_data_master_debugaccess;
  input            cpu0_data_master_read;
  input            cpu0_data_master_waitrequest;
  input            cpu0_data_master_write;
  input   [ 31: 0] cpu0_data_master_writedata;
  input   [ 26: 0] cpu0_instruction_master_address_to_slave;
  input   [  1: 0] cpu0_instruction_master_latency_counter;
  input            cpu0_instruction_master_read;
  input            cpu0_instruction_master_read_data_valid_sdram_s1_shift_register;
  input   [ 31: 0] cpu0_jtag_debug_module_readdata;
  input            cpu0_jtag_debug_module_resetrequest;
  input            reset_n;

  wire             cpu0_data_master_arbiterlock;
  wire             cpu0_data_master_arbiterlock2;
  wire             cpu0_data_master_continuerequest;
  wire             cpu0_data_master_granted_cpu0_jtag_debug_module;
  wire             cpu0_data_master_qualified_request_cpu0_jtag_debug_module;
  wire             cpu0_data_master_read_data_valid_cpu0_jtag_debug_module;
  wire             cpu0_data_master_requests_cpu0_jtag_debug_module;
  wire             cpu0_data_master_saved_grant_cpu0_jtag_debug_module;
  wire             cpu0_instruction_master_arbiterlock;
  wire             cpu0_instruction_master_arbiterlock2;
  wire             cpu0_instruction_master_continuerequest;
  wire             cpu0_instruction_master_granted_cpu0_jtag_debug_module;
  wire             cpu0_instruction_master_qualified_request_cpu0_jtag_debug_module;
  wire             cpu0_instruction_master_read_data_valid_cpu0_jtag_debug_module;
  wire             cpu0_instruction_master_requests_cpu0_jtag_debug_module;
  wire             cpu0_instruction_master_saved_grant_cpu0_jtag_debug_module;
  wire    [  8: 0] cpu0_jtag_debug_module_address;
  wire             cpu0_jtag_debug_module_allgrants;
  wire             cpu0_jtag_debug_module_allow_new_arb_cycle;
  wire             cpu0_jtag_debug_module_any_bursting_master_saved_grant;
  wire             cpu0_jtag_debug_module_any_continuerequest;
  reg     [  1: 0] cpu0_jtag_debug_module_arb_addend;
  wire             cpu0_jtag_debug_module_arb_counter_enable;
  reg     [  2: 0] cpu0_jtag_debug_module_arb_share_counter;
  wire    [  2: 0] cpu0_jtag_debug_module_arb_share_counter_next_value;
  wire    [  2: 0] cpu0_jtag_debug_module_arb_share_set_values;
  wire    [  1: 0] cpu0_jtag_debug_module_arb_winner;
  wire             cpu0_jtag_debug_module_arbitration_holdoff_internal;
  wire             cpu0_jtag_debug_module_beginbursttransfer_internal;
  wire             cpu0_jtag_debug_module_begins_xfer;
  wire             cpu0_jtag_debug_module_begintransfer;
  wire    [  3: 0] cpu0_jtag_debug_module_byteenable;
  wire             cpu0_jtag_debug_module_chipselect;
  wire    [  3: 0] cpu0_jtag_debug_module_chosen_master_double_vector;
  wire    [  1: 0] cpu0_jtag_debug_module_chosen_master_rot_left;
  wire             cpu0_jtag_debug_module_debugaccess;
  wire             cpu0_jtag_debug_module_end_xfer;
  wire             cpu0_jtag_debug_module_firsttransfer;
  wire    [  1: 0] cpu0_jtag_debug_module_grant_vector;
  wire             cpu0_jtag_debug_module_in_a_read_cycle;
  wire             cpu0_jtag_debug_module_in_a_write_cycle;
  wire    [  1: 0] cpu0_jtag_debug_module_master_qreq_vector;
  wire             cpu0_jtag_debug_module_non_bursting_master_requests;
  wire    [ 31: 0] cpu0_jtag_debug_module_readdata_from_sa;
  reg              cpu0_jtag_debug_module_reg_firsttransfer;
  wire             cpu0_jtag_debug_module_reset_n;
  wire             cpu0_jtag_debug_module_resetrequest_from_sa;
  reg     [  1: 0] cpu0_jtag_debug_module_saved_chosen_master_vector;
  reg              cpu0_jtag_debug_module_slavearbiterlockenable;
  wire             cpu0_jtag_debug_module_slavearbiterlockenable2;
  wire             cpu0_jtag_debug_module_unreg_firsttransfer;
  wire             cpu0_jtag_debug_module_waits_for_read;
  wire             cpu0_jtag_debug_module_waits_for_write;
  wire             cpu0_jtag_debug_module_write;
  wire    [ 31: 0] cpu0_jtag_debug_module_writedata;
  reg              d1_cpu0_jtag_debug_module_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_cpu0_jtag_debug_module;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg              last_cycle_cpu0_data_master_granted_slave_cpu0_jtag_debug_module;
  reg              last_cycle_cpu0_instruction_master_granted_slave_cpu0_jtag_debug_module;
  wire    [ 26: 0] shifted_address_to_cpu0_jtag_debug_module_from_cpu0_data_master;
  wire    [ 26: 0] shifted_address_to_cpu0_jtag_debug_module_from_cpu0_instruction_master;
  wire             wait_for_cpu0_jtag_debug_module_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~cpu0_jtag_debug_module_end_xfer;
    end


  assign cpu0_jtag_debug_module_begins_xfer = ~d1_reasons_to_wait & ((cpu0_data_master_qualified_request_cpu0_jtag_debug_module | cpu0_instruction_master_qualified_request_cpu0_jtag_debug_module));
  //assign cpu0_jtag_debug_module_readdata_from_sa = cpu0_jtag_debug_module_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign cpu0_jtag_debug_module_readdata_from_sa = cpu0_jtag_debug_module_readdata;

  assign cpu0_data_master_requests_cpu0_jtag_debug_module = ({cpu0_data_master_address_to_slave[26 : 11] , 11'b0} == 27'h400800) & (cpu0_data_master_read | cpu0_data_master_write);
  //cpu0_jtag_debug_module_arb_share_counter set values, which is an e_mux
  assign cpu0_jtag_debug_module_arb_share_set_values = 1;

  //cpu0_jtag_debug_module_non_bursting_master_requests mux, which is an e_mux
  assign cpu0_jtag_debug_module_non_bursting_master_requests = cpu0_data_master_requests_cpu0_jtag_debug_module |
    cpu0_instruction_master_requests_cpu0_jtag_debug_module |
    cpu0_data_master_requests_cpu0_jtag_debug_module |
    cpu0_instruction_master_requests_cpu0_jtag_debug_module;

  //cpu0_jtag_debug_module_any_bursting_master_saved_grant mux, which is an e_mux
  assign cpu0_jtag_debug_module_any_bursting_master_saved_grant = 0;

  //cpu0_jtag_debug_module_arb_share_counter_next_value assignment, which is an e_assign
  assign cpu0_jtag_debug_module_arb_share_counter_next_value = cpu0_jtag_debug_module_firsttransfer ? (cpu0_jtag_debug_module_arb_share_set_values - 1) : |cpu0_jtag_debug_module_arb_share_counter ? (cpu0_jtag_debug_module_arb_share_counter - 1) : 0;

  //cpu0_jtag_debug_module_allgrants all slave grants, which is an e_mux
  assign cpu0_jtag_debug_module_allgrants = (|cpu0_jtag_debug_module_grant_vector) |
    (|cpu0_jtag_debug_module_grant_vector) |
    (|cpu0_jtag_debug_module_grant_vector) |
    (|cpu0_jtag_debug_module_grant_vector);

  //cpu0_jtag_debug_module_end_xfer assignment, which is an e_assign
  assign cpu0_jtag_debug_module_end_xfer = ~(cpu0_jtag_debug_module_waits_for_read | cpu0_jtag_debug_module_waits_for_write);

  //end_xfer_arb_share_counter_term_cpu0_jtag_debug_module arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_cpu0_jtag_debug_module = cpu0_jtag_debug_module_end_xfer & (~cpu0_jtag_debug_module_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //cpu0_jtag_debug_module_arb_share_counter arbitration counter enable, which is an e_assign
  assign cpu0_jtag_debug_module_arb_counter_enable = (end_xfer_arb_share_counter_term_cpu0_jtag_debug_module & cpu0_jtag_debug_module_allgrants) | (end_xfer_arb_share_counter_term_cpu0_jtag_debug_module & ~cpu0_jtag_debug_module_non_bursting_master_requests);

  //cpu0_jtag_debug_module_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu0_jtag_debug_module_arb_share_counter <= 0;
      else if (cpu0_jtag_debug_module_arb_counter_enable)
          cpu0_jtag_debug_module_arb_share_counter <= cpu0_jtag_debug_module_arb_share_counter_next_value;
    end


  //cpu0_jtag_debug_module_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu0_jtag_debug_module_slavearbiterlockenable <= 0;
      else if ((|cpu0_jtag_debug_module_master_qreq_vector & end_xfer_arb_share_counter_term_cpu0_jtag_debug_module) | (end_xfer_arb_share_counter_term_cpu0_jtag_debug_module & ~cpu0_jtag_debug_module_non_bursting_master_requests))
          cpu0_jtag_debug_module_slavearbiterlockenable <= |cpu0_jtag_debug_module_arb_share_counter_next_value;
    end


  //cpu0/data_master cpu0/jtag_debug_module arbiterlock, which is an e_assign
  assign cpu0_data_master_arbiterlock = cpu0_jtag_debug_module_slavearbiterlockenable & cpu0_data_master_continuerequest;

  //cpu0_jtag_debug_module_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign cpu0_jtag_debug_module_slavearbiterlockenable2 = |cpu0_jtag_debug_module_arb_share_counter_next_value;

  //cpu0/data_master cpu0/jtag_debug_module arbiterlock2, which is an e_assign
  assign cpu0_data_master_arbiterlock2 = cpu0_jtag_debug_module_slavearbiterlockenable2 & cpu0_data_master_continuerequest;

  //cpu0/instruction_master cpu0/jtag_debug_module arbiterlock, which is an e_assign
  assign cpu0_instruction_master_arbiterlock = cpu0_jtag_debug_module_slavearbiterlockenable & cpu0_instruction_master_continuerequest;

  //cpu0/instruction_master cpu0/jtag_debug_module arbiterlock2, which is an e_assign
  assign cpu0_instruction_master_arbiterlock2 = cpu0_jtag_debug_module_slavearbiterlockenable2 & cpu0_instruction_master_continuerequest;

  //cpu0/instruction_master granted cpu0/jtag_debug_module last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu0_instruction_master_granted_slave_cpu0_jtag_debug_module <= 0;
      else 
        last_cycle_cpu0_instruction_master_granted_slave_cpu0_jtag_debug_module <= cpu0_instruction_master_saved_grant_cpu0_jtag_debug_module ? 1 : (cpu0_jtag_debug_module_arbitration_holdoff_internal | ~cpu0_instruction_master_requests_cpu0_jtag_debug_module) ? 0 : last_cycle_cpu0_instruction_master_granted_slave_cpu0_jtag_debug_module;
    end


  //cpu0_instruction_master_continuerequest continued request, which is an e_mux
  assign cpu0_instruction_master_continuerequest = last_cycle_cpu0_instruction_master_granted_slave_cpu0_jtag_debug_module & cpu0_instruction_master_requests_cpu0_jtag_debug_module;

  //cpu0_jtag_debug_module_any_continuerequest at least one master continues requesting, which is an e_mux
  assign cpu0_jtag_debug_module_any_continuerequest = cpu0_instruction_master_continuerequest |
    cpu0_data_master_continuerequest;

  assign cpu0_data_master_qualified_request_cpu0_jtag_debug_module = cpu0_data_master_requests_cpu0_jtag_debug_module & ~(((~cpu0_data_master_waitrequest) & cpu0_data_master_write) | cpu0_instruction_master_arbiterlock);
  //cpu0_jtag_debug_module_writedata mux, which is an e_mux
  assign cpu0_jtag_debug_module_writedata = cpu0_data_master_writedata;

  assign cpu0_instruction_master_requests_cpu0_jtag_debug_module = (({cpu0_instruction_master_address_to_slave[26 : 11] , 11'b0} == 27'h400800) & (cpu0_instruction_master_read)) & cpu0_instruction_master_read;
  //cpu0/data_master granted cpu0/jtag_debug_module last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu0_data_master_granted_slave_cpu0_jtag_debug_module <= 0;
      else 
        last_cycle_cpu0_data_master_granted_slave_cpu0_jtag_debug_module <= cpu0_data_master_saved_grant_cpu0_jtag_debug_module ? 1 : (cpu0_jtag_debug_module_arbitration_holdoff_internal | ~cpu0_data_master_requests_cpu0_jtag_debug_module) ? 0 : last_cycle_cpu0_data_master_granted_slave_cpu0_jtag_debug_module;
    end


  //cpu0_data_master_continuerequest continued request, which is an e_mux
  assign cpu0_data_master_continuerequest = last_cycle_cpu0_data_master_granted_slave_cpu0_jtag_debug_module & cpu0_data_master_requests_cpu0_jtag_debug_module;

  assign cpu0_instruction_master_qualified_request_cpu0_jtag_debug_module = cpu0_instruction_master_requests_cpu0_jtag_debug_module & ~((cpu0_instruction_master_read & ((cpu0_instruction_master_latency_counter != 0) | (|cpu0_instruction_master_read_data_valid_sdram_s1_shift_register))) | cpu0_data_master_arbiterlock);
  //local readdatavalid cpu0_instruction_master_read_data_valid_cpu0_jtag_debug_module, which is an e_mux
  assign cpu0_instruction_master_read_data_valid_cpu0_jtag_debug_module = cpu0_instruction_master_granted_cpu0_jtag_debug_module & cpu0_instruction_master_read & ~cpu0_jtag_debug_module_waits_for_read;

  //allow new arb cycle for cpu0/jtag_debug_module, which is an e_assign
  assign cpu0_jtag_debug_module_allow_new_arb_cycle = ~cpu0_data_master_arbiterlock & ~cpu0_instruction_master_arbiterlock;

  //cpu0/instruction_master assignment into master qualified-requests vector for cpu0/jtag_debug_module, which is an e_assign
  assign cpu0_jtag_debug_module_master_qreq_vector[0] = cpu0_instruction_master_qualified_request_cpu0_jtag_debug_module;

  //cpu0/instruction_master grant cpu0/jtag_debug_module, which is an e_assign
  assign cpu0_instruction_master_granted_cpu0_jtag_debug_module = cpu0_jtag_debug_module_grant_vector[0];

  //cpu0/instruction_master saved-grant cpu0/jtag_debug_module, which is an e_assign
  assign cpu0_instruction_master_saved_grant_cpu0_jtag_debug_module = cpu0_jtag_debug_module_arb_winner[0] && cpu0_instruction_master_requests_cpu0_jtag_debug_module;

  //cpu0/data_master assignment into master qualified-requests vector for cpu0/jtag_debug_module, which is an e_assign
  assign cpu0_jtag_debug_module_master_qreq_vector[1] = cpu0_data_master_qualified_request_cpu0_jtag_debug_module;

  //cpu0/data_master grant cpu0/jtag_debug_module, which is an e_assign
  assign cpu0_data_master_granted_cpu0_jtag_debug_module = cpu0_jtag_debug_module_grant_vector[1];

  //cpu0/data_master saved-grant cpu0/jtag_debug_module, which is an e_assign
  assign cpu0_data_master_saved_grant_cpu0_jtag_debug_module = cpu0_jtag_debug_module_arb_winner[1] && cpu0_data_master_requests_cpu0_jtag_debug_module;

  //cpu0/jtag_debug_module chosen-master double-vector, which is an e_assign
  assign cpu0_jtag_debug_module_chosen_master_double_vector = {cpu0_jtag_debug_module_master_qreq_vector, cpu0_jtag_debug_module_master_qreq_vector} & ({~cpu0_jtag_debug_module_master_qreq_vector, ~cpu0_jtag_debug_module_master_qreq_vector} + cpu0_jtag_debug_module_arb_addend);

  //stable onehot encoding of arb winner
  assign cpu0_jtag_debug_module_arb_winner = (cpu0_jtag_debug_module_allow_new_arb_cycle & | cpu0_jtag_debug_module_grant_vector) ? cpu0_jtag_debug_module_grant_vector : cpu0_jtag_debug_module_saved_chosen_master_vector;

  //saved cpu0_jtag_debug_module_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu0_jtag_debug_module_saved_chosen_master_vector <= 0;
      else if (cpu0_jtag_debug_module_allow_new_arb_cycle)
          cpu0_jtag_debug_module_saved_chosen_master_vector <= |cpu0_jtag_debug_module_grant_vector ? cpu0_jtag_debug_module_grant_vector : cpu0_jtag_debug_module_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign cpu0_jtag_debug_module_grant_vector = {(cpu0_jtag_debug_module_chosen_master_double_vector[1] | cpu0_jtag_debug_module_chosen_master_double_vector[3]),
    (cpu0_jtag_debug_module_chosen_master_double_vector[0] | cpu0_jtag_debug_module_chosen_master_double_vector[2])};

  //cpu0/jtag_debug_module chosen master rotated left, which is an e_assign
  assign cpu0_jtag_debug_module_chosen_master_rot_left = (cpu0_jtag_debug_module_arb_winner << 1) ? (cpu0_jtag_debug_module_arb_winner << 1) : 1;

  //cpu0/jtag_debug_module's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu0_jtag_debug_module_arb_addend <= 1;
      else if (|cpu0_jtag_debug_module_grant_vector)
          cpu0_jtag_debug_module_arb_addend <= cpu0_jtag_debug_module_end_xfer? cpu0_jtag_debug_module_chosen_master_rot_left : cpu0_jtag_debug_module_grant_vector;
    end


  assign cpu0_jtag_debug_module_begintransfer = cpu0_jtag_debug_module_begins_xfer;
  //cpu0_jtag_debug_module_reset_n assignment, which is an e_assign
  assign cpu0_jtag_debug_module_reset_n = reset_n;

  //assign cpu0_jtag_debug_module_resetrequest_from_sa = cpu0_jtag_debug_module_resetrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign cpu0_jtag_debug_module_resetrequest_from_sa = cpu0_jtag_debug_module_resetrequest;

  assign cpu0_jtag_debug_module_chipselect = cpu0_data_master_granted_cpu0_jtag_debug_module | cpu0_instruction_master_granted_cpu0_jtag_debug_module;
  //cpu0_jtag_debug_module_firsttransfer first transaction, which is an e_assign
  assign cpu0_jtag_debug_module_firsttransfer = cpu0_jtag_debug_module_begins_xfer ? cpu0_jtag_debug_module_unreg_firsttransfer : cpu0_jtag_debug_module_reg_firsttransfer;

  //cpu0_jtag_debug_module_unreg_firsttransfer first transaction, which is an e_assign
  assign cpu0_jtag_debug_module_unreg_firsttransfer = ~(cpu0_jtag_debug_module_slavearbiterlockenable & cpu0_jtag_debug_module_any_continuerequest);

  //cpu0_jtag_debug_module_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu0_jtag_debug_module_reg_firsttransfer <= 1'b1;
      else if (cpu0_jtag_debug_module_begins_xfer)
          cpu0_jtag_debug_module_reg_firsttransfer <= cpu0_jtag_debug_module_unreg_firsttransfer;
    end


  //cpu0_jtag_debug_module_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign cpu0_jtag_debug_module_beginbursttransfer_internal = cpu0_jtag_debug_module_begins_xfer;

  //cpu0_jtag_debug_module_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign cpu0_jtag_debug_module_arbitration_holdoff_internal = cpu0_jtag_debug_module_begins_xfer & cpu0_jtag_debug_module_firsttransfer;

  //cpu0_jtag_debug_module_write assignment, which is an e_mux
  assign cpu0_jtag_debug_module_write = cpu0_data_master_granted_cpu0_jtag_debug_module & cpu0_data_master_write;

  assign shifted_address_to_cpu0_jtag_debug_module_from_cpu0_data_master = cpu0_data_master_address_to_slave;
  //cpu0_jtag_debug_module_address mux, which is an e_mux
  assign cpu0_jtag_debug_module_address = (cpu0_data_master_granted_cpu0_jtag_debug_module)? (shifted_address_to_cpu0_jtag_debug_module_from_cpu0_data_master >> 2) :
    (shifted_address_to_cpu0_jtag_debug_module_from_cpu0_instruction_master >> 2);

  assign shifted_address_to_cpu0_jtag_debug_module_from_cpu0_instruction_master = cpu0_instruction_master_address_to_slave;
  //d1_cpu0_jtag_debug_module_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_cpu0_jtag_debug_module_end_xfer <= 1;
      else 
        d1_cpu0_jtag_debug_module_end_xfer <= cpu0_jtag_debug_module_end_xfer;
    end


  //cpu0_jtag_debug_module_waits_for_read in a cycle, which is an e_mux
  assign cpu0_jtag_debug_module_waits_for_read = cpu0_jtag_debug_module_in_a_read_cycle & cpu0_jtag_debug_module_begins_xfer;

  //cpu0_jtag_debug_module_in_a_read_cycle assignment, which is an e_assign
  assign cpu0_jtag_debug_module_in_a_read_cycle = (cpu0_data_master_granted_cpu0_jtag_debug_module & cpu0_data_master_read) | (cpu0_instruction_master_granted_cpu0_jtag_debug_module & cpu0_instruction_master_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = cpu0_jtag_debug_module_in_a_read_cycle;

  //cpu0_jtag_debug_module_waits_for_write in a cycle, which is an e_mux
  assign cpu0_jtag_debug_module_waits_for_write = cpu0_jtag_debug_module_in_a_write_cycle & 0;

  //cpu0_jtag_debug_module_in_a_write_cycle assignment, which is an e_assign
  assign cpu0_jtag_debug_module_in_a_write_cycle = cpu0_data_master_granted_cpu0_jtag_debug_module & cpu0_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = cpu0_jtag_debug_module_in_a_write_cycle;

  assign wait_for_cpu0_jtag_debug_module_counter = 0;
  //cpu0_jtag_debug_module_byteenable byte enable port mux, which is an e_mux
  assign cpu0_jtag_debug_module_byteenable = (cpu0_data_master_granted_cpu0_jtag_debug_module)? cpu0_data_master_byteenable :
    -1;

  //debugaccess mux, which is an e_mux
  assign cpu0_jtag_debug_module_debugaccess = (cpu0_data_master_granted_cpu0_jtag_debug_module)? cpu0_data_master_debugaccess :
    0;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //cpu0/jtag_debug_module enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu0_data_master_granted_cpu0_jtag_debug_module + cpu0_instruction_master_granted_cpu0_jtag_debug_module > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu0_data_master_saved_grant_cpu0_jtag_debug_module + cpu0_instruction_master_saved_grant_cpu0_jtag_debug_module > 1)
        begin
          $write("%0d ns: > 1 of saved_grant signals are active simultaneously", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu0_data_master_arbitrator (
                                     // inputs:
                                      cfi_s1_wait_counter_eq_0,
                                      cfi_s1_wait_counter_eq_1,
                                      clk,
                                      cpu0_data_master_address,
                                      cpu0_data_master_byteenable_cfi_s1,
                                      cpu0_data_master_byteenable_sdram_s1,
                                      cpu0_data_master_granted_cfi_s1,
                                      cpu0_data_master_granted_cpu0_jtag_debug_module,
                                      cpu0_data_master_granted_jtag_uart_avalon_jtag_slave,
                                      cpu0_data_master_granted_pio0_s1,
                                      cpu0_data_master_granted_sdram_s1,
                                      cpu0_data_master_granted_sysid_control_slave,
                                      cpu0_data_master_granted_timer0_s1,
                                      cpu0_data_master_qualified_request_cfi_s1,
                                      cpu0_data_master_qualified_request_cpu0_jtag_debug_module,
                                      cpu0_data_master_qualified_request_jtag_uart_avalon_jtag_slave,
                                      cpu0_data_master_qualified_request_pio0_s1,
                                      cpu0_data_master_qualified_request_sdram_s1,
                                      cpu0_data_master_qualified_request_sysid_control_slave,
                                      cpu0_data_master_qualified_request_timer0_s1,
                                      cpu0_data_master_read,
                                      cpu0_data_master_read_data_valid_cfi_s1,
                                      cpu0_data_master_read_data_valid_cpu0_jtag_debug_module,
                                      cpu0_data_master_read_data_valid_jtag_uart_avalon_jtag_slave,
                                      cpu0_data_master_read_data_valid_pio0_s1,
                                      cpu0_data_master_read_data_valid_sdram_s1,
                                      cpu0_data_master_read_data_valid_sdram_s1_shift_register,
                                      cpu0_data_master_read_data_valid_sysid_control_slave,
                                      cpu0_data_master_read_data_valid_timer0_s1,
                                      cpu0_data_master_requests_cfi_s1,
                                      cpu0_data_master_requests_cpu0_jtag_debug_module,
                                      cpu0_data_master_requests_jtag_uart_avalon_jtag_slave,
                                      cpu0_data_master_requests_pio0_s1,
                                      cpu0_data_master_requests_sdram_s1,
                                      cpu0_data_master_requests_sysid_control_slave,
                                      cpu0_data_master_requests_timer0_s1,
                                      cpu0_data_master_write,
                                      cpu0_data_master_writedata,
                                      cpu0_jtag_debug_module_readdata_from_sa,
                                      d1_cpu0_jtag_debug_module_end_xfer,
                                      d1_jtag_uart_avalon_jtag_slave_end_xfer,
                                      d1_pio0_s1_end_xfer,
                                      d1_sdram_s1_end_xfer,
                                      d1_sysid_control_slave_end_xfer,
                                      d1_timer0_s1_end_xfer,
                                      d1_triStateBridge_avalon_slave_end_xfer,
                                      incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0,
                                      jtag_uart_avalon_jtag_slave_irq_from_sa,
                                      jtag_uart_avalon_jtag_slave_readdata_from_sa,
                                      jtag_uart_avalon_jtag_slave_waitrequest_from_sa,
                                      pio0_s1_readdata_from_sa,
                                      registered_cpu0_data_master_read_data_valid_cfi_s1,
                                      reset_n,
                                      sdram_s1_readdata_from_sa,
                                      sdram_s1_waitrequest_from_sa,
                                      sysid_control_slave_readdata_from_sa,
                                      timer0_s1_irq_from_sa,
                                      timer0_s1_readdata_from_sa,

                                     // outputs:
                                      cpu0_data_master_address_to_slave,
                                      cpu0_data_master_dbs_address,
                                      cpu0_data_master_dbs_write_16,
                                      cpu0_data_master_dbs_write_8,
                                      cpu0_data_master_irq,
                                      cpu0_data_master_no_byte_enables_and_last_term,
                                      cpu0_data_master_readdata,
                                      cpu0_data_master_waitrequest
                                   )
;

  output  [ 26: 0] cpu0_data_master_address_to_slave;
  output  [  1: 0] cpu0_data_master_dbs_address;
  output  [ 15: 0] cpu0_data_master_dbs_write_16;
  output  [  7: 0] cpu0_data_master_dbs_write_8;
  output  [ 31: 0] cpu0_data_master_irq;
  output           cpu0_data_master_no_byte_enables_and_last_term;
  output  [ 31: 0] cpu0_data_master_readdata;
  output           cpu0_data_master_waitrequest;
  input            cfi_s1_wait_counter_eq_0;
  input            cfi_s1_wait_counter_eq_1;
  input            clk;
  input   [ 26: 0] cpu0_data_master_address;
  input            cpu0_data_master_byteenable_cfi_s1;
  input   [  1: 0] cpu0_data_master_byteenable_sdram_s1;
  input            cpu0_data_master_granted_cfi_s1;
  input            cpu0_data_master_granted_cpu0_jtag_debug_module;
  input            cpu0_data_master_granted_jtag_uart_avalon_jtag_slave;
  input            cpu0_data_master_granted_pio0_s1;
  input            cpu0_data_master_granted_sdram_s1;
  input            cpu0_data_master_granted_sysid_control_slave;
  input            cpu0_data_master_granted_timer0_s1;
  input            cpu0_data_master_qualified_request_cfi_s1;
  input            cpu0_data_master_qualified_request_cpu0_jtag_debug_module;
  input            cpu0_data_master_qualified_request_jtag_uart_avalon_jtag_slave;
  input            cpu0_data_master_qualified_request_pio0_s1;
  input            cpu0_data_master_qualified_request_sdram_s1;
  input            cpu0_data_master_qualified_request_sysid_control_slave;
  input            cpu0_data_master_qualified_request_timer0_s1;
  input            cpu0_data_master_read;
  input            cpu0_data_master_read_data_valid_cfi_s1;
  input            cpu0_data_master_read_data_valid_cpu0_jtag_debug_module;
  input            cpu0_data_master_read_data_valid_jtag_uart_avalon_jtag_slave;
  input            cpu0_data_master_read_data_valid_pio0_s1;
  input            cpu0_data_master_read_data_valid_sdram_s1;
  input            cpu0_data_master_read_data_valid_sdram_s1_shift_register;
  input            cpu0_data_master_read_data_valid_sysid_control_slave;
  input            cpu0_data_master_read_data_valid_timer0_s1;
  input            cpu0_data_master_requests_cfi_s1;
  input            cpu0_data_master_requests_cpu0_jtag_debug_module;
  input            cpu0_data_master_requests_jtag_uart_avalon_jtag_slave;
  input            cpu0_data_master_requests_pio0_s1;
  input            cpu0_data_master_requests_sdram_s1;
  input            cpu0_data_master_requests_sysid_control_slave;
  input            cpu0_data_master_requests_timer0_s1;
  input            cpu0_data_master_write;
  input   [ 31: 0] cpu0_data_master_writedata;
  input   [ 31: 0] cpu0_jtag_debug_module_readdata_from_sa;
  input            d1_cpu0_jtag_debug_module_end_xfer;
  input            d1_jtag_uart_avalon_jtag_slave_end_xfer;
  input            d1_pio0_s1_end_xfer;
  input            d1_sdram_s1_end_xfer;
  input            d1_sysid_control_slave_end_xfer;
  input            d1_timer0_s1_end_xfer;
  input            d1_triStateBridge_avalon_slave_end_xfer;
  input   [  7: 0] incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0;
  input            jtag_uart_avalon_jtag_slave_irq_from_sa;
  input   [ 31: 0] jtag_uart_avalon_jtag_slave_readdata_from_sa;
  input            jtag_uart_avalon_jtag_slave_waitrequest_from_sa;
  input   [ 31: 0] pio0_s1_readdata_from_sa;
  input            registered_cpu0_data_master_read_data_valid_cfi_s1;
  input            reset_n;
  input   [ 15: 0] sdram_s1_readdata_from_sa;
  input            sdram_s1_waitrequest_from_sa;
  input   [ 31: 0] sysid_control_slave_readdata_from_sa;
  input            timer0_s1_irq_from_sa;
  input   [ 15: 0] timer0_s1_readdata_from_sa;

  wire    [ 26: 0] cpu0_data_master_address_to_slave;
  reg     [  1: 0] cpu0_data_master_dbs_address;
  wire    [  1: 0] cpu0_data_master_dbs_increment;
  wire    [ 15: 0] cpu0_data_master_dbs_write_16;
  wire    [  7: 0] cpu0_data_master_dbs_write_8;
  wire    [ 31: 0] cpu0_data_master_irq;
  reg              cpu0_data_master_no_byte_enables_and_last_term;
  wire    [ 31: 0] cpu0_data_master_readdata;
  wire             cpu0_data_master_run;
  reg              cpu0_data_master_waitrequest;
  reg     [ 15: 0] dbs_16_reg_segment_0;
  reg     [  7: 0] dbs_8_reg_segment_0;
  reg     [  7: 0] dbs_8_reg_segment_1;
  reg     [  7: 0] dbs_8_reg_segment_2;
  wire             dbs_count_enable;
  wire             dbs_counter_overflow;
  wire             last_dbs_term_and_run;
  wire    [  1: 0] next_dbs_address;
  wire    [ 15: 0] p1_dbs_16_reg_segment_0;
  wire    [  7: 0] p1_dbs_8_reg_segment_0;
  wire    [  7: 0] p1_dbs_8_reg_segment_1;
  wire    [  7: 0] p1_dbs_8_reg_segment_2;
  wire    [ 31: 0] p1_registered_cpu0_data_master_readdata;
  wire             pre_dbs_count_enable;
  wire             r_0;
  wire             r_1;
  reg     [ 31: 0] registered_cpu0_data_master_readdata;
  //r_0 master_run cascaded wait assignment, which is an e_assign
  assign r_0 = 1 & (cpu0_data_master_qualified_request_cpu0_jtag_debug_module | ~cpu0_data_master_requests_cpu0_jtag_debug_module) & (cpu0_data_master_granted_cpu0_jtag_debug_module | ~cpu0_data_master_qualified_request_cpu0_jtag_debug_module) & ((~cpu0_data_master_qualified_request_cpu0_jtag_debug_module | ~cpu0_data_master_read | (1 & 1 & cpu0_data_master_read))) & ((~cpu0_data_master_qualified_request_cpu0_jtag_debug_module | ~cpu0_data_master_write | (1 & cpu0_data_master_write))) & 1 & (cpu0_data_master_qualified_request_jtag_uart_avalon_jtag_slave | ~cpu0_data_master_requests_jtag_uart_avalon_jtag_slave) & ((~cpu0_data_master_qualified_request_jtag_uart_avalon_jtag_slave | ~(cpu0_data_master_read | cpu0_data_master_write) | (1 & ~jtag_uart_avalon_jtag_slave_waitrequest_from_sa & (cpu0_data_master_read | cpu0_data_master_write)))) & ((~cpu0_data_master_qualified_request_jtag_uart_avalon_jtag_slave | ~(cpu0_data_master_read | cpu0_data_master_write) | (1 & ~jtag_uart_avalon_jtag_slave_waitrequest_from_sa & (cpu0_data_master_read | cpu0_data_master_write)))) & 1 & (cpu0_data_master_qualified_request_pio0_s1 | ~cpu0_data_master_requests_pio0_s1) & ((~cpu0_data_master_qualified_request_pio0_s1 | ~cpu0_data_master_read | (1 & 1 & cpu0_data_master_read))) & ((~cpu0_data_master_qualified_request_pio0_s1 | ~cpu0_data_master_write | (1 & cpu0_data_master_write))) & 1 & (cpu0_data_master_qualified_request_sdram_s1 | (cpu0_data_master_read_data_valid_sdram_s1 & cpu0_data_master_dbs_address[1]) | (cpu0_data_master_write & !cpu0_data_master_byteenable_sdram_s1 & cpu0_data_master_dbs_address[1]) | ~cpu0_data_master_requests_sdram_s1) & (cpu0_data_master_granted_sdram_s1 | ~cpu0_data_master_qualified_request_sdram_s1) & ((~cpu0_data_master_qualified_request_sdram_s1 | ~cpu0_data_master_read | (cpu0_data_master_read_data_valid_sdram_s1 & (cpu0_data_master_dbs_address[1]) & cpu0_data_master_read))) & ((~cpu0_data_master_qualified_request_sdram_s1 | ~cpu0_data_master_write | (1 & ~sdram_s1_waitrequest_from_sa & (cpu0_data_master_dbs_address[1]) & cpu0_data_master_write))) & 1 & ((~cpu0_data_master_qualified_request_sysid_control_slave | ~cpu0_data_master_read | (1 & 1 & cpu0_data_master_read)));

  //cascaded wait assignment, which is an e_assign
  assign cpu0_data_master_run = r_0 & r_1;

  //r_1 master_run cascaded wait assignment, which is an e_assign
  assign r_1 = ((~cpu0_data_master_qualified_request_sysid_control_slave | ~cpu0_data_master_write | (1 & cpu0_data_master_write))) & 1 & (cpu0_data_master_qualified_request_timer0_s1 | ~cpu0_data_master_requests_timer0_s1) & ((~cpu0_data_master_qualified_request_timer0_s1 | ~cpu0_data_master_read | (1 & 1 & cpu0_data_master_read))) & ((~cpu0_data_master_qualified_request_timer0_s1 | ~cpu0_data_master_write | (1 & cpu0_data_master_write))) & 1 & ((cpu0_data_master_qualified_request_cfi_s1 | (registered_cpu0_data_master_read_data_valid_cfi_s1 & cpu0_data_master_dbs_address[1] & cpu0_data_master_dbs_address[0]) | ((cpu0_data_master_write & !cpu0_data_master_byteenable_cfi_s1 & cpu0_data_master_dbs_address[1] & cpu0_data_master_dbs_address[0])) | ~cpu0_data_master_requests_cfi_s1)) & (cpu0_data_master_granted_cfi_s1 | ~cpu0_data_master_qualified_request_cfi_s1) & ((~cpu0_data_master_qualified_request_cfi_s1 | ~cpu0_data_master_read | (registered_cpu0_data_master_read_data_valid_cfi_s1 & (cpu0_data_master_dbs_address[1] & cpu0_data_master_dbs_address[0]) & cpu0_data_master_read))) & ((~cpu0_data_master_qualified_request_cfi_s1 | ~cpu0_data_master_write | (1 & cfi_s1_wait_counter_eq_1 & (cpu0_data_master_dbs_address[1] & cpu0_data_master_dbs_address[0]) & cpu0_data_master_write)));

  //optimize select-logic by passing only those address bits which matter.
  assign cpu0_data_master_address_to_slave = {cpu0_data_master_address[26],
    1'b0,
    cpu0_data_master_address[24 : 0]};

  //cpu0/data_master readdata mux, which is an e_mux
  assign cpu0_data_master_readdata = ({32 {~cpu0_data_master_requests_cpu0_jtag_debug_module}} | cpu0_jtag_debug_module_readdata_from_sa) &
    ({32 {~cpu0_data_master_requests_jtag_uart_avalon_jtag_slave}} | registered_cpu0_data_master_readdata) &
    ({32 {~cpu0_data_master_requests_pio0_s1}} | pio0_s1_readdata_from_sa) &
    ({32 {~cpu0_data_master_requests_sdram_s1}} | registered_cpu0_data_master_readdata) &
    ({32 {~cpu0_data_master_requests_sysid_control_slave}} | sysid_control_slave_readdata_from_sa) &
    ({32 {~cpu0_data_master_requests_timer0_s1}} | timer0_s1_readdata_from_sa) &
    ({32 {~cpu0_data_master_requests_cfi_s1}} | {incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0[7 : 0],
    dbs_8_reg_segment_2,
    dbs_8_reg_segment_1,
    dbs_8_reg_segment_0});

  //actual waitrequest port, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu0_data_master_waitrequest <= ~0;
      else 
        cpu0_data_master_waitrequest <= ~((~(cpu0_data_master_read | cpu0_data_master_write))? 0: (cpu0_data_master_run & cpu0_data_master_waitrequest));
    end


  //unpredictable registered wait state incoming data, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          registered_cpu0_data_master_readdata <= 0;
      else 
        registered_cpu0_data_master_readdata <= p1_registered_cpu0_data_master_readdata;
    end


  //registered readdata mux, which is an e_mux
  assign p1_registered_cpu0_data_master_readdata = ({32 {~cpu0_data_master_requests_jtag_uart_avalon_jtag_slave}} | jtag_uart_avalon_jtag_slave_readdata_from_sa) &
    ({32 {~cpu0_data_master_requests_sdram_s1}} | {sdram_s1_readdata_from_sa[15 : 0],
    dbs_16_reg_segment_0});

  //irq assign, which is an e_assign
  assign cpu0_data_master_irq = {1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    jtag_uart_avalon_jtag_slave_irq_from_sa,
    timer0_s1_irq_from_sa};

  //no_byte_enables_and_last_term, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu0_data_master_no_byte_enables_and_last_term <= 0;
      else 
        cpu0_data_master_no_byte_enables_and_last_term <= last_dbs_term_and_run;
    end


  //compute the last dbs term, which is an e_mux
  assign last_dbs_term_and_run = (cpu0_data_master_requests_sdram_s1)? (((cpu0_data_master_dbs_address == 2'b10) & cpu0_data_master_write & !cpu0_data_master_byteenable_sdram_s1)) :
    (((cpu0_data_master_dbs_address == 2'b11) & cpu0_data_master_write & !cpu0_data_master_byteenable_cfi_s1));

  //pre dbs count enable, which is an e_mux
  assign pre_dbs_count_enable = (((~cpu0_data_master_no_byte_enables_and_last_term) & cpu0_data_master_requests_sdram_s1 & cpu0_data_master_write & !cpu0_data_master_byteenable_sdram_s1)) |
    cpu0_data_master_read_data_valid_sdram_s1 |
    (cpu0_data_master_granted_sdram_s1 & cpu0_data_master_write & 1 & 1 & ~sdram_s1_waitrequest_from_sa) |
    (((~cpu0_data_master_no_byte_enables_and_last_term) & cpu0_data_master_requests_cfi_s1 & cpu0_data_master_write & !cpu0_data_master_byteenable_cfi_s1)) |
    cpu0_data_master_read_data_valid_cfi_s1 |
    ((cpu0_data_master_granted_cfi_s1 & cpu0_data_master_write & 1 & 1 & ({cfi_s1_wait_counter_eq_0 & ~d1_triStateBridge_avalon_slave_end_xfer})));

  //input to dbs-16 stored 0, which is an e_mux
  assign p1_dbs_16_reg_segment_0 = sdram_s1_readdata_from_sa;

  //dbs register for dbs-16 segment 0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbs_16_reg_segment_0 <= 0;
      else if (dbs_count_enable & ((cpu0_data_master_dbs_address[1]) == 0))
          dbs_16_reg_segment_0 <= p1_dbs_16_reg_segment_0;
    end


  //mux write dbs 1, which is an e_mux
  assign cpu0_data_master_dbs_write_16 = (cpu0_data_master_dbs_address[1])? cpu0_data_master_writedata[31 : 16] :
    cpu0_data_master_writedata[15 : 0];

  //dbs count increment, which is an e_mux
  assign cpu0_data_master_dbs_increment = (cpu0_data_master_requests_sdram_s1)? 2 :
    (cpu0_data_master_requests_cfi_s1)? 1 :
    0;

  //dbs counter overflow, which is an e_assign
  assign dbs_counter_overflow = cpu0_data_master_dbs_address[1] & !(next_dbs_address[1]);

  //next master address, which is an e_assign
  assign next_dbs_address = cpu0_data_master_dbs_address + cpu0_data_master_dbs_increment;

  //dbs count enable, which is an e_mux
  assign dbs_count_enable = pre_dbs_count_enable &
    (~(cpu0_data_master_requests_sdram_s1 & ~cpu0_data_master_waitrequest));

  //dbs counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu0_data_master_dbs_address <= 0;
      else if (dbs_count_enable)
          cpu0_data_master_dbs_address <= next_dbs_address;
    end


  //input to dbs-8 stored 0, which is an e_mux
  assign p1_dbs_8_reg_segment_0 = incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0;

  //dbs register for dbs-8 segment 0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbs_8_reg_segment_0 <= 0;
      else if (dbs_count_enable & ((cpu0_data_master_dbs_address[1 : 0]) == 0))
          dbs_8_reg_segment_0 <= p1_dbs_8_reg_segment_0;
    end


  //input to dbs-8 stored 1, which is an e_mux
  assign p1_dbs_8_reg_segment_1 = incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0;

  //dbs register for dbs-8 segment 1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbs_8_reg_segment_1 <= 0;
      else if (dbs_count_enable & ((cpu0_data_master_dbs_address[1 : 0]) == 1))
          dbs_8_reg_segment_1 <= p1_dbs_8_reg_segment_1;
    end


  //input to dbs-8 stored 2, which is an e_mux
  assign p1_dbs_8_reg_segment_2 = incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0;

  //dbs register for dbs-8 segment 2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbs_8_reg_segment_2 <= 0;
      else if (dbs_count_enable & ((cpu0_data_master_dbs_address[1 : 0]) == 2))
          dbs_8_reg_segment_2 <= p1_dbs_8_reg_segment_2;
    end


  //mux write dbs 2, which is an e_mux
  assign cpu0_data_master_dbs_write_8 = ((cpu0_data_master_dbs_address[1 : 0] == 0))? cpu0_data_master_writedata[7 : 0] :
    ((cpu0_data_master_dbs_address[1 : 0] == 1))? cpu0_data_master_writedata[15 : 8] :
    ((cpu0_data_master_dbs_address[1 : 0] == 2))? cpu0_data_master_writedata[23 : 16] :
    cpu0_data_master_writedata[31 : 24];


endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu0_instruction_master_arbitrator (
                                            // inputs:
                                             cfi_s1_wait_counter_eq_0,
                                             cfi_s1_wait_counter_eq_1,
                                             clk,
                                             cpu0_instruction_master_address,
                                             cpu0_instruction_master_granted_cfi_s1,
                                             cpu0_instruction_master_granted_cpu0_jtag_debug_module,
                                             cpu0_instruction_master_granted_sdram_s1,
                                             cpu0_instruction_master_qualified_request_cfi_s1,
                                             cpu0_instruction_master_qualified_request_cpu0_jtag_debug_module,
                                             cpu0_instruction_master_qualified_request_sdram_s1,
                                             cpu0_instruction_master_read,
                                             cpu0_instruction_master_read_data_valid_cfi_s1,
                                             cpu0_instruction_master_read_data_valid_cpu0_jtag_debug_module,
                                             cpu0_instruction_master_read_data_valid_sdram_s1,
                                             cpu0_instruction_master_read_data_valid_sdram_s1_shift_register,
                                             cpu0_instruction_master_requests_cfi_s1,
                                             cpu0_instruction_master_requests_cpu0_jtag_debug_module,
                                             cpu0_instruction_master_requests_sdram_s1,
                                             cpu0_jtag_debug_module_readdata_from_sa,
                                             d1_cpu0_jtag_debug_module_end_xfer,
                                             d1_sdram_s1_end_xfer,
                                             d1_triStateBridge_avalon_slave_end_xfer,
                                             incoming_data_to_and_from_the_cfi,
                                             reset_n,
                                             sdram_s1_readdata_from_sa,
                                             sdram_s1_waitrequest_from_sa,

                                            // outputs:
                                             cpu0_instruction_master_address_to_slave,
                                             cpu0_instruction_master_dbs_address,
                                             cpu0_instruction_master_latency_counter,
                                             cpu0_instruction_master_readdata,
                                             cpu0_instruction_master_readdatavalid,
                                             cpu0_instruction_master_waitrequest
                                          )
;

  output  [ 26: 0] cpu0_instruction_master_address_to_slave;
  output  [  1: 0] cpu0_instruction_master_dbs_address;
  output  [  1: 0] cpu0_instruction_master_latency_counter;
  output  [ 31: 0] cpu0_instruction_master_readdata;
  output           cpu0_instruction_master_readdatavalid;
  output           cpu0_instruction_master_waitrequest;
  input            cfi_s1_wait_counter_eq_0;
  input            cfi_s1_wait_counter_eq_1;
  input            clk;
  input   [ 26: 0] cpu0_instruction_master_address;
  input            cpu0_instruction_master_granted_cfi_s1;
  input            cpu0_instruction_master_granted_cpu0_jtag_debug_module;
  input            cpu0_instruction_master_granted_sdram_s1;
  input            cpu0_instruction_master_qualified_request_cfi_s1;
  input            cpu0_instruction_master_qualified_request_cpu0_jtag_debug_module;
  input            cpu0_instruction_master_qualified_request_sdram_s1;
  input            cpu0_instruction_master_read;
  input            cpu0_instruction_master_read_data_valid_cfi_s1;
  input            cpu0_instruction_master_read_data_valid_cpu0_jtag_debug_module;
  input            cpu0_instruction_master_read_data_valid_sdram_s1;
  input            cpu0_instruction_master_read_data_valid_sdram_s1_shift_register;
  input            cpu0_instruction_master_requests_cfi_s1;
  input            cpu0_instruction_master_requests_cpu0_jtag_debug_module;
  input            cpu0_instruction_master_requests_sdram_s1;
  input   [ 31: 0] cpu0_jtag_debug_module_readdata_from_sa;
  input            d1_cpu0_jtag_debug_module_end_xfer;
  input            d1_sdram_s1_end_xfer;
  input            d1_triStateBridge_avalon_slave_end_xfer;
  input   [  7: 0] incoming_data_to_and_from_the_cfi;
  input            reset_n;
  input   [ 15: 0] sdram_s1_readdata_from_sa;
  input            sdram_s1_waitrequest_from_sa;

  reg              active_and_waiting_last_time;
  reg     [ 26: 0] cpu0_instruction_master_address_last_time;
  wire    [ 26: 0] cpu0_instruction_master_address_to_slave;
  reg     [  1: 0] cpu0_instruction_master_dbs_address;
  wire    [  1: 0] cpu0_instruction_master_dbs_increment;
  reg     [  1: 0] cpu0_instruction_master_dbs_rdv_counter;
  wire    [  1: 0] cpu0_instruction_master_dbs_rdv_counter_inc;
  wire             cpu0_instruction_master_is_granted_some_slave;
  reg     [  1: 0] cpu0_instruction_master_latency_counter;
  wire    [  1: 0] cpu0_instruction_master_next_dbs_rdv_counter;
  reg              cpu0_instruction_master_read_but_no_slave_selected;
  reg              cpu0_instruction_master_read_last_time;
  wire    [ 31: 0] cpu0_instruction_master_readdata;
  wire             cpu0_instruction_master_readdatavalid;
  wire             cpu0_instruction_master_run;
  wire             cpu0_instruction_master_waitrequest;
  wire             dbs_count_enable;
  wire             dbs_counter_overflow;
  reg     [ 15: 0] dbs_latent_16_reg_segment_0;
  reg     [  7: 0] dbs_latent_8_reg_segment_0;
  reg     [  7: 0] dbs_latent_8_reg_segment_1;
  reg     [  7: 0] dbs_latent_8_reg_segment_2;
  wire             dbs_rdv_count_enable;
  wire             dbs_rdv_counter_overflow;
  wire    [  1: 0] latency_load_value;
  wire    [  1: 0] next_dbs_address;
  wire    [  1: 0] p1_cpu0_instruction_master_latency_counter;
  wire    [ 15: 0] p1_dbs_latent_16_reg_segment_0;
  wire    [  7: 0] p1_dbs_latent_8_reg_segment_0;
  wire    [  7: 0] p1_dbs_latent_8_reg_segment_1;
  wire    [  7: 0] p1_dbs_latent_8_reg_segment_2;
  wire             pre_dbs_count_enable;
  wire             pre_flush_cpu0_instruction_master_readdatavalid;
  wire             r_0;
  wire             r_1;
  //r_0 master_run cascaded wait assignment, which is an e_assign
  assign r_0 = 1 & (cpu0_instruction_master_qualified_request_cpu0_jtag_debug_module | ~cpu0_instruction_master_requests_cpu0_jtag_debug_module) & (cpu0_instruction_master_granted_cpu0_jtag_debug_module | ~cpu0_instruction_master_qualified_request_cpu0_jtag_debug_module) & ((~cpu0_instruction_master_qualified_request_cpu0_jtag_debug_module | ~cpu0_instruction_master_read | (1 & ~d1_cpu0_jtag_debug_module_end_xfer & cpu0_instruction_master_read))) & 1 & (cpu0_instruction_master_qualified_request_sdram_s1 | ~cpu0_instruction_master_requests_sdram_s1) & (cpu0_instruction_master_granted_sdram_s1 | ~cpu0_instruction_master_qualified_request_sdram_s1) & ((~cpu0_instruction_master_qualified_request_sdram_s1 | ~cpu0_instruction_master_read | (1 & ~sdram_s1_waitrequest_from_sa & (cpu0_instruction_master_dbs_address[1]) & cpu0_instruction_master_read)));

  //cascaded wait assignment, which is an e_assign
  assign cpu0_instruction_master_run = r_0 & r_1;

  //r_1 master_run cascaded wait assignment, which is an e_assign
  assign r_1 = 1 & (cpu0_instruction_master_qualified_request_cfi_s1 | ~cpu0_instruction_master_requests_cfi_s1) & (cpu0_instruction_master_granted_cfi_s1 | ~cpu0_instruction_master_qualified_request_cfi_s1) & ((~cpu0_instruction_master_qualified_request_cfi_s1 | ~cpu0_instruction_master_read | (1 & ((cfi_s1_wait_counter_eq_0 & ~d1_triStateBridge_avalon_slave_end_xfer)) & (cpu0_instruction_master_dbs_address[1] & cpu0_instruction_master_dbs_address[0]) & cpu0_instruction_master_read)));

  //optimize select-logic by passing only those address bits which matter.
  assign cpu0_instruction_master_address_to_slave = {cpu0_instruction_master_address[26],
    1'b0,
    cpu0_instruction_master_address[24 : 0]};

  //cpu0_instruction_master_read_but_no_slave_selected assignment, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu0_instruction_master_read_but_no_slave_selected <= 0;
      else 
        cpu0_instruction_master_read_but_no_slave_selected <= cpu0_instruction_master_read & cpu0_instruction_master_run & ~cpu0_instruction_master_is_granted_some_slave;
    end


  //some slave is getting selected, which is an e_mux
  assign cpu0_instruction_master_is_granted_some_slave = cpu0_instruction_master_granted_cpu0_jtag_debug_module |
    cpu0_instruction_master_granted_sdram_s1 |
    cpu0_instruction_master_granted_cfi_s1;

  //latent slave read data valids which may be flushed, which is an e_mux
  assign pre_flush_cpu0_instruction_master_readdatavalid = (cpu0_instruction_master_read_data_valid_sdram_s1 & dbs_rdv_counter_overflow) |
    (cpu0_instruction_master_read_data_valid_cfi_s1 & dbs_rdv_counter_overflow);

  //latent slave read data valid which is not flushed, which is an e_mux
  assign cpu0_instruction_master_readdatavalid = cpu0_instruction_master_read_but_no_slave_selected |
    pre_flush_cpu0_instruction_master_readdatavalid |
    cpu0_instruction_master_read_data_valid_cpu0_jtag_debug_module |
    cpu0_instruction_master_read_but_no_slave_selected |
    pre_flush_cpu0_instruction_master_readdatavalid |
    cpu0_instruction_master_read_but_no_slave_selected |
    pre_flush_cpu0_instruction_master_readdatavalid;

  //cpu0/instruction_master readdata mux, which is an e_mux
  assign cpu0_instruction_master_readdata = ({32 {~(cpu0_instruction_master_qualified_request_cpu0_jtag_debug_module & cpu0_instruction_master_read)}} | cpu0_jtag_debug_module_readdata_from_sa) &
    ({32 {~cpu0_instruction_master_read_data_valid_sdram_s1}} | {sdram_s1_readdata_from_sa[15 : 0],
    dbs_latent_16_reg_segment_0}) &
    ({32 {~cpu0_instruction_master_read_data_valid_cfi_s1}} | {incoming_data_to_and_from_the_cfi[7 : 0],
    dbs_latent_8_reg_segment_2,
    dbs_latent_8_reg_segment_1,
    dbs_latent_8_reg_segment_0});

  //actual waitrequest port, which is an e_assign
  assign cpu0_instruction_master_waitrequest = ~cpu0_instruction_master_run;

  //latent max counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu0_instruction_master_latency_counter <= 0;
      else 
        cpu0_instruction_master_latency_counter <= p1_cpu0_instruction_master_latency_counter;
    end


  //latency counter load mux, which is an e_mux
  assign p1_cpu0_instruction_master_latency_counter = ((cpu0_instruction_master_run & cpu0_instruction_master_read))? latency_load_value :
    (cpu0_instruction_master_latency_counter)? cpu0_instruction_master_latency_counter - 1 :
    0;

  //read latency load values, which is an e_mux
  assign latency_load_value = {2 {cpu0_instruction_master_requests_cfi_s1}} & 2;

  //input to latent dbs-16 stored 0, which is an e_mux
  assign p1_dbs_latent_16_reg_segment_0 = sdram_s1_readdata_from_sa;

  //dbs register for latent dbs-16 segment 0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbs_latent_16_reg_segment_0 <= 0;
      else if (dbs_rdv_count_enable & ((cpu0_instruction_master_dbs_rdv_counter[1]) == 0))
          dbs_latent_16_reg_segment_0 <= p1_dbs_latent_16_reg_segment_0;
    end


  //dbs count increment, which is an e_mux
  assign cpu0_instruction_master_dbs_increment = (cpu0_instruction_master_requests_sdram_s1)? 2 :
    (cpu0_instruction_master_requests_cfi_s1)? 1 :
    0;

  //dbs counter overflow, which is an e_assign
  assign dbs_counter_overflow = cpu0_instruction_master_dbs_address[1] & !(next_dbs_address[1]);

  //next master address, which is an e_assign
  assign next_dbs_address = cpu0_instruction_master_dbs_address + cpu0_instruction_master_dbs_increment;

  //dbs count enable, which is an e_mux
  assign dbs_count_enable = pre_dbs_count_enable;

  //dbs counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu0_instruction_master_dbs_address <= 0;
      else if (dbs_count_enable)
          cpu0_instruction_master_dbs_address <= next_dbs_address;
    end


  //p1 dbs rdv counter, which is an e_assign
  assign cpu0_instruction_master_next_dbs_rdv_counter = cpu0_instruction_master_dbs_rdv_counter + cpu0_instruction_master_dbs_rdv_counter_inc;

  //cpu0_instruction_master_rdv_inc_mux, which is an e_mux
  assign cpu0_instruction_master_dbs_rdv_counter_inc = (cpu0_instruction_master_read_data_valid_sdram_s1)? 2 :
    1;

  //master any slave rdv, which is an e_mux
  assign dbs_rdv_count_enable = cpu0_instruction_master_read_data_valid_sdram_s1 |
    cpu0_instruction_master_read_data_valid_cfi_s1;

  //dbs rdv counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu0_instruction_master_dbs_rdv_counter <= 0;
      else if (dbs_rdv_count_enable)
          cpu0_instruction_master_dbs_rdv_counter <= cpu0_instruction_master_next_dbs_rdv_counter;
    end


  //dbs rdv counter overflow, which is an e_assign
  assign dbs_rdv_counter_overflow = cpu0_instruction_master_dbs_rdv_counter[1] & ~cpu0_instruction_master_next_dbs_rdv_counter[1];

  //pre dbs count enable, which is an e_mux
  assign pre_dbs_count_enable = (cpu0_instruction_master_granted_sdram_s1 & cpu0_instruction_master_read & 1 & 1 & ~sdram_s1_waitrequest_from_sa) |
    ((cpu0_instruction_master_granted_cfi_s1 & cpu0_instruction_master_read & 1 & 1 & ({cfi_s1_wait_counter_eq_0 & ~d1_triStateBridge_avalon_slave_end_xfer})));

  //input to latent dbs-8 stored 0, which is an e_mux
  assign p1_dbs_latent_8_reg_segment_0 = incoming_data_to_and_from_the_cfi;

  //dbs register for latent dbs-8 segment 0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbs_latent_8_reg_segment_0 <= 0;
      else if (dbs_rdv_count_enable & ((cpu0_instruction_master_dbs_rdv_counter[1 : 0]) == 0))
          dbs_latent_8_reg_segment_0 <= p1_dbs_latent_8_reg_segment_0;
    end


  //input to latent dbs-8 stored 1, which is an e_mux
  assign p1_dbs_latent_8_reg_segment_1 = incoming_data_to_and_from_the_cfi;

  //dbs register for latent dbs-8 segment 1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbs_latent_8_reg_segment_1 <= 0;
      else if (dbs_rdv_count_enable & ((cpu0_instruction_master_dbs_rdv_counter[1 : 0]) == 1))
          dbs_latent_8_reg_segment_1 <= p1_dbs_latent_8_reg_segment_1;
    end


  //input to latent dbs-8 stored 2, which is an e_mux
  assign p1_dbs_latent_8_reg_segment_2 = incoming_data_to_and_from_the_cfi;

  //dbs register for latent dbs-8 segment 2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbs_latent_8_reg_segment_2 <= 0;
      else if (dbs_rdv_count_enable & ((cpu0_instruction_master_dbs_rdv_counter[1 : 0]) == 2))
          dbs_latent_8_reg_segment_2 <= p1_dbs_latent_8_reg_segment_2;
    end



//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //cpu0_instruction_master_address check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu0_instruction_master_address_last_time <= 0;
      else 
        cpu0_instruction_master_address_last_time <= cpu0_instruction_master_address;
    end


  //cpu0/instruction_master waited last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          active_and_waiting_last_time <= 0;
      else 
        active_and_waiting_last_time <= cpu0_instruction_master_waitrequest & (cpu0_instruction_master_read);
    end


  //cpu0_instruction_master_address matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (cpu0_instruction_master_address != cpu0_instruction_master_address_last_time))
        begin
          $write("%0d ns: cpu0_instruction_master_address did not heed wait!!!", $time);
          $stop;
        end
    end


  //cpu0_instruction_master_read check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu0_instruction_master_read_last_time <= 0;
      else 
        cpu0_instruction_master_read_last_time <= cpu0_instruction_master_read;
    end


  //cpu0_instruction_master_read matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (cpu0_instruction_master_read != cpu0_instruction_master_read_last_time))
        begin
          $write("%0d ns: cpu0_instruction_master_read did not heed wait!!!", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module jtag_uart_avalon_jtag_slave_arbitrator (
                                                // inputs:
                                                 clk,
                                                 cpu0_data_master_address_to_slave,
                                                 cpu0_data_master_read,
                                                 cpu0_data_master_waitrequest,
                                                 cpu0_data_master_write,
                                                 cpu0_data_master_writedata,
                                                 jtag_uart_avalon_jtag_slave_dataavailable,
                                                 jtag_uart_avalon_jtag_slave_irq,
                                                 jtag_uart_avalon_jtag_slave_readdata,
                                                 jtag_uart_avalon_jtag_slave_readyfordata,
                                                 jtag_uart_avalon_jtag_slave_waitrequest,
                                                 reset_n,

                                                // outputs:
                                                 cpu0_data_master_granted_jtag_uart_avalon_jtag_slave,
                                                 cpu0_data_master_qualified_request_jtag_uart_avalon_jtag_slave,
                                                 cpu0_data_master_read_data_valid_jtag_uart_avalon_jtag_slave,
                                                 cpu0_data_master_requests_jtag_uart_avalon_jtag_slave,
                                                 d1_jtag_uart_avalon_jtag_slave_end_xfer,
                                                 jtag_uart_avalon_jtag_slave_address,
                                                 jtag_uart_avalon_jtag_slave_chipselect,
                                                 jtag_uart_avalon_jtag_slave_dataavailable_from_sa,
                                                 jtag_uart_avalon_jtag_slave_irq_from_sa,
                                                 jtag_uart_avalon_jtag_slave_read_n,
                                                 jtag_uart_avalon_jtag_slave_readdata_from_sa,
                                                 jtag_uart_avalon_jtag_slave_readyfordata_from_sa,
                                                 jtag_uart_avalon_jtag_slave_reset_n,
                                                 jtag_uart_avalon_jtag_slave_waitrequest_from_sa,
                                                 jtag_uart_avalon_jtag_slave_write_n,
                                                 jtag_uart_avalon_jtag_slave_writedata
                                              )
;

  output           cpu0_data_master_granted_jtag_uart_avalon_jtag_slave;
  output           cpu0_data_master_qualified_request_jtag_uart_avalon_jtag_slave;
  output           cpu0_data_master_read_data_valid_jtag_uart_avalon_jtag_slave;
  output           cpu0_data_master_requests_jtag_uart_avalon_jtag_slave;
  output           d1_jtag_uart_avalon_jtag_slave_end_xfer;
  output           jtag_uart_avalon_jtag_slave_address;
  output           jtag_uart_avalon_jtag_slave_chipselect;
  output           jtag_uart_avalon_jtag_slave_dataavailable_from_sa;
  output           jtag_uart_avalon_jtag_slave_irq_from_sa;
  output           jtag_uart_avalon_jtag_slave_read_n;
  output  [ 31: 0] jtag_uart_avalon_jtag_slave_readdata_from_sa;
  output           jtag_uart_avalon_jtag_slave_readyfordata_from_sa;
  output           jtag_uart_avalon_jtag_slave_reset_n;
  output           jtag_uart_avalon_jtag_slave_waitrequest_from_sa;
  output           jtag_uart_avalon_jtag_slave_write_n;
  output  [ 31: 0] jtag_uart_avalon_jtag_slave_writedata;
  input            clk;
  input   [ 26: 0] cpu0_data_master_address_to_slave;
  input            cpu0_data_master_read;
  input            cpu0_data_master_waitrequest;
  input            cpu0_data_master_write;
  input   [ 31: 0] cpu0_data_master_writedata;
  input            jtag_uart_avalon_jtag_slave_dataavailable;
  input            jtag_uart_avalon_jtag_slave_irq;
  input   [ 31: 0] jtag_uart_avalon_jtag_slave_readdata;
  input            jtag_uart_avalon_jtag_slave_readyfordata;
  input            jtag_uart_avalon_jtag_slave_waitrequest;
  input            reset_n;

  wire             cpu0_data_master_arbiterlock;
  wire             cpu0_data_master_arbiterlock2;
  wire             cpu0_data_master_continuerequest;
  wire             cpu0_data_master_granted_jtag_uart_avalon_jtag_slave;
  wire             cpu0_data_master_qualified_request_jtag_uart_avalon_jtag_slave;
  wire             cpu0_data_master_read_data_valid_jtag_uart_avalon_jtag_slave;
  wire             cpu0_data_master_requests_jtag_uart_avalon_jtag_slave;
  wire             cpu0_data_master_saved_grant_jtag_uart_avalon_jtag_slave;
  reg              d1_jtag_uart_avalon_jtag_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             jtag_uart_avalon_jtag_slave_address;
  wire             jtag_uart_avalon_jtag_slave_allgrants;
  wire             jtag_uart_avalon_jtag_slave_allow_new_arb_cycle;
  wire             jtag_uart_avalon_jtag_slave_any_bursting_master_saved_grant;
  wire             jtag_uart_avalon_jtag_slave_any_continuerequest;
  wire             jtag_uart_avalon_jtag_slave_arb_counter_enable;
  reg     [  2: 0] jtag_uart_avalon_jtag_slave_arb_share_counter;
  wire    [  2: 0] jtag_uart_avalon_jtag_slave_arb_share_counter_next_value;
  wire    [  2: 0] jtag_uart_avalon_jtag_slave_arb_share_set_values;
  wire             jtag_uart_avalon_jtag_slave_beginbursttransfer_internal;
  wire             jtag_uart_avalon_jtag_slave_begins_xfer;
  wire             jtag_uart_avalon_jtag_slave_chipselect;
  wire             jtag_uart_avalon_jtag_slave_dataavailable_from_sa;
  wire             jtag_uart_avalon_jtag_slave_end_xfer;
  wire             jtag_uart_avalon_jtag_slave_firsttransfer;
  wire             jtag_uart_avalon_jtag_slave_grant_vector;
  wire             jtag_uart_avalon_jtag_slave_in_a_read_cycle;
  wire             jtag_uart_avalon_jtag_slave_in_a_write_cycle;
  wire             jtag_uart_avalon_jtag_slave_irq_from_sa;
  wire             jtag_uart_avalon_jtag_slave_master_qreq_vector;
  wire             jtag_uart_avalon_jtag_slave_non_bursting_master_requests;
  wire             jtag_uart_avalon_jtag_slave_read_n;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_readdata_from_sa;
  wire             jtag_uart_avalon_jtag_slave_readyfordata_from_sa;
  reg              jtag_uart_avalon_jtag_slave_reg_firsttransfer;
  wire             jtag_uart_avalon_jtag_slave_reset_n;
  reg              jtag_uart_avalon_jtag_slave_slavearbiterlockenable;
  wire             jtag_uart_avalon_jtag_slave_slavearbiterlockenable2;
  wire             jtag_uart_avalon_jtag_slave_unreg_firsttransfer;
  wire             jtag_uart_avalon_jtag_slave_waitrequest_from_sa;
  wire             jtag_uart_avalon_jtag_slave_waits_for_read;
  wire             jtag_uart_avalon_jtag_slave_waits_for_write;
  wire             jtag_uart_avalon_jtag_slave_write_n;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_writedata;
  wire    [ 26: 0] shifted_address_to_jtag_uart_avalon_jtag_slave_from_cpu0_data_master;
  wire             wait_for_jtag_uart_avalon_jtag_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~jtag_uart_avalon_jtag_slave_end_xfer;
    end


  assign jtag_uart_avalon_jtag_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu0_data_master_qualified_request_jtag_uart_avalon_jtag_slave));
  //assign jtag_uart_avalon_jtag_slave_readdata_from_sa = jtag_uart_avalon_jtag_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_readdata_from_sa = jtag_uart_avalon_jtag_slave_readdata;

  assign cpu0_data_master_requests_jtag_uart_avalon_jtag_slave = ({cpu0_data_master_address_to_slave[26 : 3] , 3'b0} == 27'h401038) & (cpu0_data_master_read | cpu0_data_master_write);
  //assign jtag_uart_avalon_jtag_slave_dataavailable_from_sa = jtag_uart_avalon_jtag_slave_dataavailable so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_dataavailable_from_sa = jtag_uart_avalon_jtag_slave_dataavailable;

  //assign jtag_uart_avalon_jtag_slave_readyfordata_from_sa = jtag_uart_avalon_jtag_slave_readyfordata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_readyfordata_from_sa = jtag_uart_avalon_jtag_slave_readyfordata;

  //assign jtag_uart_avalon_jtag_slave_waitrequest_from_sa = jtag_uart_avalon_jtag_slave_waitrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_waitrequest_from_sa = jtag_uart_avalon_jtag_slave_waitrequest;

  //jtag_uart_avalon_jtag_slave_arb_share_counter set values, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_arb_share_set_values = 1;

  //jtag_uart_avalon_jtag_slave_non_bursting_master_requests mux, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_non_bursting_master_requests = cpu0_data_master_requests_jtag_uart_avalon_jtag_slave;

  //jtag_uart_avalon_jtag_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_any_bursting_master_saved_grant = 0;

  //jtag_uart_avalon_jtag_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_arb_share_counter_next_value = jtag_uart_avalon_jtag_slave_firsttransfer ? (jtag_uart_avalon_jtag_slave_arb_share_set_values - 1) : |jtag_uart_avalon_jtag_slave_arb_share_counter ? (jtag_uart_avalon_jtag_slave_arb_share_counter - 1) : 0;

  //jtag_uart_avalon_jtag_slave_allgrants all slave grants, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_allgrants = |jtag_uart_avalon_jtag_slave_grant_vector;

  //jtag_uart_avalon_jtag_slave_end_xfer assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_end_xfer = ~(jtag_uart_avalon_jtag_slave_waits_for_read | jtag_uart_avalon_jtag_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave = jtag_uart_avalon_jtag_slave_end_xfer & (~jtag_uart_avalon_jtag_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //jtag_uart_avalon_jtag_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave & jtag_uart_avalon_jtag_slave_allgrants) | (end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave & ~jtag_uart_avalon_jtag_slave_non_bursting_master_requests);

  //jtag_uart_avalon_jtag_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          jtag_uart_avalon_jtag_slave_arb_share_counter <= 0;
      else if (jtag_uart_avalon_jtag_slave_arb_counter_enable)
          jtag_uart_avalon_jtag_slave_arb_share_counter <= jtag_uart_avalon_jtag_slave_arb_share_counter_next_value;
    end


  //jtag_uart_avalon_jtag_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          jtag_uart_avalon_jtag_slave_slavearbiterlockenable <= 0;
      else if ((|jtag_uart_avalon_jtag_slave_master_qreq_vector & end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave) | (end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave & ~jtag_uart_avalon_jtag_slave_non_bursting_master_requests))
          jtag_uart_avalon_jtag_slave_slavearbiterlockenable <= |jtag_uart_avalon_jtag_slave_arb_share_counter_next_value;
    end


  //cpu0/data_master jtag_uart/avalon_jtag_slave arbiterlock, which is an e_assign
  assign cpu0_data_master_arbiterlock = jtag_uart_avalon_jtag_slave_slavearbiterlockenable & cpu0_data_master_continuerequest;

  //jtag_uart_avalon_jtag_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_slavearbiterlockenable2 = |jtag_uart_avalon_jtag_slave_arb_share_counter_next_value;

  //cpu0/data_master jtag_uart/avalon_jtag_slave arbiterlock2, which is an e_assign
  assign cpu0_data_master_arbiterlock2 = jtag_uart_avalon_jtag_slave_slavearbiterlockenable2 & cpu0_data_master_continuerequest;

  //jtag_uart_avalon_jtag_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_any_continuerequest = 1;

  //cpu0_data_master_continuerequest continued request, which is an e_assign
  assign cpu0_data_master_continuerequest = 1;

  assign cpu0_data_master_qualified_request_jtag_uart_avalon_jtag_slave = cpu0_data_master_requests_jtag_uart_avalon_jtag_slave & ~((cpu0_data_master_read & (~cpu0_data_master_waitrequest)) | ((~cpu0_data_master_waitrequest) & cpu0_data_master_write));
  //jtag_uart_avalon_jtag_slave_writedata mux, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_writedata = cpu0_data_master_writedata;

  //master is always granted when requested
  assign cpu0_data_master_granted_jtag_uart_avalon_jtag_slave = cpu0_data_master_qualified_request_jtag_uart_avalon_jtag_slave;

  //cpu0/data_master saved-grant jtag_uart/avalon_jtag_slave, which is an e_assign
  assign cpu0_data_master_saved_grant_jtag_uart_avalon_jtag_slave = cpu0_data_master_requests_jtag_uart_avalon_jtag_slave;

  //allow new arb cycle for jtag_uart/avalon_jtag_slave, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign jtag_uart_avalon_jtag_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign jtag_uart_avalon_jtag_slave_master_qreq_vector = 1;

  //jtag_uart_avalon_jtag_slave_reset_n assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_reset_n = reset_n;

  assign jtag_uart_avalon_jtag_slave_chipselect = cpu0_data_master_granted_jtag_uart_avalon_jtag_slave;
  //jtag_uart_avalon_jtag_slave_firsttransfer first transaction, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_firsttransfer = jtag_uart_avalon_jtag_slave_begins_xfer ? jtag_uart_avalon_jtag_slave_unreg_firsttransfer : jtag_uart_avalon_jtag_slave_reg_firsttransfer;

  //jtag_uart_avalon_jtag_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_unreg_firsttransfer = ~(jtag_uart_avalon_jtag_slave_slavearbiterlockenable & jtag_uart_avalon_jtag_slave_any_continuerequest);

  //jtag_uart_avalon_jtag_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          jtag_uart_avalon_jtag_slave_reg_firsttransfer <= 1'b1;
      else if (jtag_uart_avalon_jtag_slave_begins_xfer)
          jtag_uart_avalon_jtag_slave_reg_firsttransfer <= jtag_uart_avalon_jtag_slave_unreg_firsttransfer;
    end


  //jtag_uart_avalon_jtag_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_beginbursttransfer_internal = jtag_uart_avalon_jtag_slave_begins_xfer;

  //~jtag_uart_avalon_jtag_slave_read_n assignment, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_read_n = ~(cpu0_data_master_granted_jtag_uart_avalon_jtag_slave & cpu0_data_master_read);

  //~jtag_uart_avalon_jtag_slave_write_n assignment, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_write_n = ~(cpu0_data_master_granted_jtag_uart_avalon_jtag_slave & cpu0_data_master_write);

  assign shifted_address_to_jtag_uart_avalon_jtag_slave_from_cpu0_data_master = cpu0_data_master_address_to_slave;
  //jtag_uart_avalon_jtag_slave_address mux, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_address = shifted_address_to_jtag_uart_avalon_jtag_slave_from_cpu0_data_master >> 2;

  //d1_jtag_uart_avalon_jtag_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_jtag_uart_avalon_jtag_slave_end_xfer <= 1;
      else 
        d1_jtag_uart_avalon_jtag_slave_end_xfer <= jtag_uart_avalon_jtag_slave_end_xfer;
    end


  //jtag_uart_avalon_jtag_slave_waits_for_read in a cycle, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_waits_for_read = jtag_uart_avalon_jtag_slave_in_a_read_cycle & jtag_uart_avalon_jtag_slave_waitrequest_from_sa;

  //jtag_uart_avalon_jtag_slave_in_a_read_cycle assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_in_a_read_cycle = cpu0_data_master_granted_jtag_uart_avalon_jtag_slave & cpu0_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = jtag_uart_avalon_jtag_slave_in_a_read_cycle;

  //jtag_uart_avalon_jtag_slave_waits_for_write in a cycle, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_waits_for_write = jtag_uart_avalon_jtag_slave_in_a_write_cycle & jtag_uart_avalon_jtag_slave_waitrequest_from_sa;

  //jtag_uart_avalon_jtag_slave_in_a_write_cycle assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_in_a_write_cycle = cpu0_data_master_granted_jtag_uart_avalon_jtag_slave & cpu0_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = jtag_uart_avalon_jtag_slave_in_a_write_cycle;

  assign wait_for_jtag_uart_avalon_jtag_slave_counter = 0;
  //assign jtag_uart_avalon_jtag_slave_irq_from_sa = jtag_uart_avalon_jtag_slave_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_irq_from_sa = jtag_uart_avalon_jtag_slave_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //jtag_uart/avalon_jtag_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module pio0_s1_arbitrator (
                            // inputs:
                             clk,
                             cpu0_data_master_address_to_slave,
                             cpu0_data_master_read,
                             cpu0_data_master_waitrequest,
                             cpu0_data_master_write,
                             cpu0_data_master_writedata,
                             pio0_s1_readdata,
                             reset_n,

                            // outputs:
                             cpu0_data_master_granted_pio0_s1,
                             cpu0_data_master_qualified_request_pio0_s1,
                             cpu0_data_master_read_data_valid_pio0_s1,
                             cpu0_data_master_requests_pio0_s1,
                             d1_pio0_s1_end_xfer,
                             pio0_s1_address,
                             pio0_s1_chipselect,
                             pio0_s1_readdata_from_sa,
                             pio0_s1_reset_n,
                             pio0_s1_write_n,
                             pio0_s1_writedata
                          )
;

  output           cpu0_data_master_granted_pio0_s1;
  output           cpu0_data_master_qualified_request_pio0_s1;
  output           cpu0_data_master_read_data_valid_pio0_s1;
  output           cpu0_data_master_requests_pio0_s1;
  output           d1_pio0_s1_end_xfer;
  output  [  1: 0] pio0_s1_address;
  output           pio0_s1_chipselect;
  output  [ 31: 0] pio0_s1_readdata_from_sa;
  output           pio0_s1_reset_n;
  output           pio0_s1_write_n;
  output  [ 31: 0] pio0_s1_writedata;
  input            clk;
  input   [ 26: 0] cpu0_data_master_address_to_slave;
  input            cpu0_data_master_read;
  input            cpu0_data_master_waitrequest;
  input            cpu0_data_master_write;
  input   [ 31: 0] cpu0_data_master_writedata;
  input   [ 31: 0] pio0_s1_readdata;
  input            reset_n;

  wire             cpu0_data_master_arbiterlock;
  wire             cpu0_data_master_arbiterlock2;
  wire             cpu0_data_master_continuerequest;
  wire             cpu0_data_master_granted_pio0_s1;
  wire             cpu0_data_master_qualified_request_pio0_s1;
  wire             cpu0_data_master_read_data_valid_pio0_s1;
  wire             cpu0_data_master_requests_pio0_s1;
  wire             cpu0_data_master_saved_grant_pio0_s1;
  reg              d1_pio0_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_pio0_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [  1: 0] pio0_s1_address;
  wire             pio0_s1_allgrants;
  wire             pio0_s1_allow_new_arb_cycle;
  wire             pio0_s1_any_bursting_master_saved_grant;
  wire             pio0_s1_any_continuerequest;
  wire             pio0_s1_arb_counter_enable;
  reg     [  2: 0] pio0_s1_arb_share_counter;
  wire    [  2: 0] pio0_s1_arb_share_counter_next_value;
  wire    [  2: 0] pio0_s1_arb_share_set_values;
  wire             pio0_s1_beginbursttransfer_internal;
  wire             pio0_s1_begins_xfer;
  wire             pio0_s1_chipselect;
  wire             pio0_s1_end_xfer;
  wire             pio0_s1_firsttransfer;
  wire             pio0_s1_grant_vector;
  wire             pio0_s1_in_a_read_cycle;
  wire             pio0_s1_in_a_write_cycle;
  wire             pio0_s1_master_qreq_vector;
  wire             pio0_s1_non_bursting_master_requests;
  wire    [ 31: 0] pio0_s1_readdata_from_sa;
  reg              pio0_s1_reg_firsttransfer;
  wire             pio0_s1_reset_n;
  reg              pio0_s1_slavearbiterlockenable;
  wire             pio0_s1_slavearbiterlockenable2;
  wire             pio0_s1_unreg_firsttransfer;
  wire             pio0_s1_waits_for_read;
  wire             pio0_s1_waits_for_write;
  wire             pio0_s1_write_n;
  wire    [ 31: 0] pio0_s1_writedata;
  wire    [ 26: 0] shifted_address_to_pio0_s1_from_cpu0_data_master;
  wire             wait_for_pio0_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~pio0_s1_end_xfer;
    end


  assign pio0_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu0_data_master_qualified_request_pio0_s1));
  //assign pio0_s1_readdata_from_sa = pio0_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign pio0_s1_readdata_from_sa = pio0_s1_readdata;

  assign cpu0_data_master_requests_pio0_s1 = ({cpu0_data_master_address_to_slave[26 : 4] , 4'b0} == 27'h401020) & (cpu0_data_master_read | cpu0_data_master_write);
  //pio0_s1_arb_share_counter set values, which is an e_mux
  assign pio0_s1_arb_share_set_values = 1;

  //pio0_s1_non_bursting_master_requests mux, which is an e_mux
  assign pio0_s1_non_bursting_master_requests = cpu0_data_master_requests_pio0_s1;

  //pio0_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign pio0_s1_any_bursting_master_saved_grant = 0;

  //pio0_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign pio0_s1_arb_share_counter_next_value = pio0_s1_firsttransfer ? (pio0_s1_arb_share_set_values - 1) : |pio0_s1_arb_share_counter ? (pio0_s1_arb_share_counter - 1) : 0;

  //pio0_s1_allgrants all slave grants, which is an e_mux
  assign pio0_s1_allgrants = |pio0_s1_grant_vector;

  //pio0_s1_end_xfer assignment, which is an e_assign
  assign pio0_s1_end_xfer = ~(pio0_s1_waits_for_read | pio0_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_pio0_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_pio0_s1 = pio0_s1_end_xfer & (~pio0_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //pio0_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign pio0_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_pio0_s1 & pio0_s1_allgrants) | (end_xfer_arb_share_counter_term_pio0_s1 & ~pio0_s1_non_bursting_master_requests);

  //pio0_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          pio0_s1_arb_share_counter <= 0;
      else if (pio0_s1_arb_counter_enable)
          pio0_s1_arb_share_counter <= pio0_s1_arb_share_counter_next_value;
    end


  //pio0_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          pio0_s1_slavearbiterlockenable <= 0;
      else if ((|pio0_s1_master_qreq_vector & end_xfer_arb_share_counter_term_pio0_s1) | (end_xfer_arb_share_counter_term_pio0_s1 & ~pio0_s1_non_bursting_master_requests))
          pio0_s1_slavearbiterlockenable <= |pio0_s1_arb_share_counter_next_value;
    end


  //cpu0/data_master pio0/s1 arbiterlock, which is an e_assign
  assign cpu0_data_master_arbiterlock = pio0_s1_slavearbiterlockenable & cpu0_data_master_continuerequest;

  //pio0_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign pio0_s1_slavearbiterlockenable2 = |pio0_s1_arb_share_counter_next_value;

  //cpu0/data_master pio0/s1 arbiterlock2, which is an e_assign
  assign cpu0_data_master_arbiterlock2 = pio0_s1_slavearbiterlockenable2 & cpu0_data_master_continuerequest;

  //pio0_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign pio0_s1_any_continuerequest = 1;

  //cpu0_data_master_continuerequest continued request, which is an e_assign
  assign cpu0_data_master_continuerequest = 1;

  assign cpu0_data_master_qualified_request_pio0_s1 = cpu0_data_master_requests_pio0_s1 & ~(((~cpu0_data_master_waitrequest) & cpu0_data_master_write));
  //pio0_s1_writedata mux, which is an e_mux
  assign pio0_s1_writedata = cpu0_data_master_writedata;

  //master is always granted when requested
  assign cpu0_data_master_granted_pio0_s1 = cpu0_data_master_qualified_request_pio0_s1;

  //cpu0/data_master saved-grant pio0/s1, which is an e_assign
  assign cpu0_data_master_saved_grant_pio0_s1 = cpu0_data_master_requests_pio0_s1;

  //allow new arb cycle for pio0/s1, which is an e_assign
  assign pio0_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign pio0_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign pio0_s1_master_qreq_vector = 1;

  //pio0_s1_reset_n assignment, which is an e_assign
  assign pio0_s1_reset_n = reset_n;

  assign pio0_s1_chipselect = cpu0_data_master_granted_pio0_s1;
  //pio0_s1_firsttransfer first transaction, which is an e_assign
  assign pio0_s1_firsttransfer = pio0_s1_begins_xfer ? pio0_s1_unreg_firsttransfer : pio0_s1_reg_firsttransfer;

  //pio0_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign pio0_s1_unreg_firsttransfer = ~(pio0_s1_slavearbiterlockenable & pio0_s1_any_continuerequest);

  //pio0_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          pio0_s1_reg_firsttransfer <= 1'b1;
      else if (pio0_s1_begins_xfer)
          pio0_s1_reg_firsttransfer <= pio0_s1_unreg_firsttransfer;
    end


  //pio0_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign pio0_s1_beginbursttransfer_internal = pio0_s1_begins_xfer;

  //~pio0_s1_write_n assignment, which is an e_mux
  assign pio0_s1_write_n = ~(cpu0_data_master_granted_pio0_s1 & cpu0_data_master_write);

  assign shifted_address_to_pio0_s1_from_cpu0_data_master = cpu0_data_master_address_to_slave;
  //pio0_s1_address mux, which is an e_mux
  assign pio0_s1_address = shifted_address_to_pio0_s1_from_cpu0_data_master >> 2;

  //d1_pio0_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_pio0_s1_end_xfer <= 1;
      else 
        d1_pio0_s1_end_xfer <= pio0_s1_end_xfer;
    end


  //pio0_s1_waits_for_read in a cycle, which is an e_mux
  assign pio0_s1_waits_for_read = pio0_s1_in_a_read_cycle & pio0_s1_begins_xfer;

  //pio0_s1_in_a_read_cycle assignment, which is an e_assign
  assign pio0_s1_in_a_read_cycle = cpu0_data_master_granted_pio0_s1 & cpu0_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = pio0_s1_in_a_read_cycle;

  //pio0_s1_waits_for_write in a cycle, which is an e_mux
  assign pio0_s1_waits_for_write = pio0_s1_in_a_write_cycle & 0;

  //pio0_s1_in_a_write_cycle assignment, which is an e_assign
  assign pio0_s1_in_a_write_cycle = cpu0_data_master_granted_pio0_s1 & cpu0_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = pio0_s1_in_a_write_cycle;

  assign wait_for_pio0_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //pio0/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module rdv_fifo_for_cpu0_data_master_to_sdram_s1_module (
                                                          // inputs:
                                                           clear_fifo,
                                                           clk,
                                                           data_in,
                                                           read,
                                                           reset_n,
                                                           sync_reset,
                                                           write,

                                                          // outputs:
                                                           data_out,
                                                           empty,
                                                           fifo_contains_ones_n,
                                                           full
                                                        )
;

  output           data_out;
  output           empty;
  output           fifo_contains_ones_n;
  output           full;
  input            clear_fifo;
  input            clk;
  input            data_in;
  input            read;
  input            reset_n;
  input            sync_reset;
  input            write;

  wire             data_out;
  wire             empty;
  reg              fifo_contains_ones_n;
  wire             full;
  reg              full_0;
  reg              full_1;
  reg              full_2;
  reg              full_3;
  reg              full_4;
  reg              full_5;
  reg              full_6;
  wire             full_7;
  reg     [  3: 0] how_many_ones;
  wire    [  3: 0] one_count_minus_one;
  wire    [  3: 0] one_count_plus_one;
  wire             p0_full_0;
  wire             p0_stage_0;
  wire             p1_full_1;
  wire             p1_stage_1;
  wire             p2_full_2;
  wire             p2_stage_2;
  wire             p3_full_3;
  wire             p3_stage_3;
  wire             p4_full_4;
  wire             p4_stage_4;
  wire             p5_full_5;
  wire             p5_stage_5;
  wire             p6_full_6;
  wire             p6_stage_6;
  reg              stage_0;
  reg              stage_1;
  reg              stage_2;
  reg              stage_3;
  reg              stage_4;
  reg              stage_5;
  reg              stage_6;
  wire    [  3: 0] updated_one_count;
  assign data_out = stage_0;
  assign full = full_6;
  assign empty = !full_0;
  assign full_7 = 0;
  //data_6, which is an e_mux
  assign p6_stage_6 = ((full_7 & ~clear_fifo) == 0)? data_in :
    data_in;

  //data_reg_6, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_6 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_6))
          if (sync_reset & full_6 & !((full_7 == 0) & read & write))
              stage_6 <= 0;
          else 
            stage_6 <= p6_stage_6;
    end


  //control_6, which is an e_mux
  assign p6_full_6 = ((read & !write) == 0)? full_5 :
    0;

  //control_reg_6, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_6 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_6 <= 0;
          else 
            full_6 <= p6_full_6;
    end


  //data_5, which is an e_mux
  assign p5_stage_5 = ((full_6 & ~clear_fifo) == 0)? data_in :
    stage_6;

  //data_reg_5, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_5 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_5))
          if (sync_reset & full_5 & !((full_6 == 0) & read & write))
              stage_5 <= 0;
          else 
            stage_5 <= p5_stage_5;
    end


  //control_5, which is an e_mux
  assign p5_full_5 = ((read & !write) == 0)? full_4 :
    full_6;

  //control_reg_5, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_5 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_5 <= 0;
          else 
            full_5 <= p5_full_5;
    end


  //data_4, which is an e_mux
  assign p4_stage_4 = ((full_5 & ~clear_fifo) == 0)? data_in :
    stage_5;

  //data_reg_4, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_4 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_4))
          if (sync_reset & full_4 & !((full_5 == 0) & read & write))
              stage_4 <= 0;
          else 
            stage_4 <= p4_stage_4;
    end


  //control_4, which is an e_mux
  assign p4_full_4 = ((read & !write) == 0)? full_3 :
    full_5;

  //control_reg_4, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_4 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_4 <= 0;
          else 
            full_4 <= p4_full_4;
    end


  //data_3, which is an e_mux
  assign p3_stage_3 = ((full_4 & ~clear_fifo) == 0)? data_in :
    stage_4;

  //data_reg_3, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_3 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_3))
          if (sync_reset & full_3 & !((full_4 == 0) & read & write))
              stage_3 <= 0;
          else 
            stage_3 <= p3_stage_3;
    end


  //control_3, which is an e_mux
  assign p3_full_3 = ((read & !write) == 0)? full_2 :
    full_4;

  //control_reg_3, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_3 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_3 <= 0;
          else 
            full_3 <= p3_full_3;
    end


  //data_2, which is an e_mux
  assign p2_stage_2 = ((full_3 & ~clear_fifo) == 0)? data_in :
    stage_3;

  //data_reg_2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_2 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_2))
          if (sync_reset & full_2 & !((full_3 == 0) & read & write))
              stage_2 <= 0;
          else 
            stage_2 <= p2_stage_2;
    end


  //control_2, which is an e_mux
  assign p2_full_2 = ((read & !write) == 0)? full_1 :
    full_3;

  //control_reg_2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_2 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_2 <= 0;
          else 
            full_2 <= p2_full_2;
    end


  //data_1, which is an e_mux
  assign p1_stage_1 = ((full_2 & ~clear_fifo) == 0)? data_in :
    stage_2;

  //data_reg_1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_1 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_1))
          if (sync_reset & full_1 & !((full_2 == 0) & read & write))
              stage_1 <= 0;
          else 
            stage_1 <= p1_stage_1;
    end


  //control_1, which is an e_mux
  assign p1_full_1 = ((read & !write) == 0)? full_0 :
    full_2;

  //control_reg_1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_1 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_1 <= 0;
          else 
            full_1 <= p1_full_1;
    end


  //data_0, which is an e_mux
  assign p0_stage_0 = ((full_1 & ~clear_fifo) == 0)? data_in :
    stage_1;

  //data_reg_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_0 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_0))
          if (sync_reset & full_0 & !((full_1 == 0) & read & write))
              stage_0 <= 0;
          else 
            stage_0 <= p0_stage_0;
    end


  //control_0, which is an e_mux
  assign p0_full_0 = ((read & !write) == 0)? 1 :
    full_1;

  //control_reg_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_0 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo & ~write)
              full_0 <= 0;
          else 
            full_0 <= p0_full_0;
    end


  assign one_count_plus_one = how_many_ones + 1;
  assign one_count_minus_one = how_many_ones - 1;
  //updated_one_count, which is an e_mux
  assign updated_one_count = ((((clear_fifo | sync_reset) & !write)))? 0 :
    ((((clear_fifo | sync_reset) & write)))? |data_in :
    ((read & (|data_in) & write & (|stage_0)))? how_many_ones :
    ((write & (|data_in)))? one_count_plus_one :
    ((read & (|stage_0)))? one_count_minus_one :
    how_many_ones;

  //counts how many ones in the data pipeline, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          how_many_ones <= 0;
      else if (clear_fifo | sync_reset | read | write)
          how_many_ones <= updated_one_count;
    end


  //this fifo contains ones in the data pipeline, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_contains_ones_n <= 1;
      else if (clear_fifo | sync_reset | read | write)
          fifo_contains_ones_n <= ~(|updated_one_count);
    end



endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module rdv_fifo_for_cpu0_instruction_master_to_sdram_s1_module (
                                                                 // inputs:
                                                                  clear_fifo,
                                                                  clk,
                                                                  data_in,
                                                                  read,
                                                                  reset_n,
                                                                  sync_reset,
                                                                  write,

                                                                 // outputs:
                                                                  data_out,
                                                                  empty,
                                                                  fifo_contains_ones_n,
                                                                  full
                                                               )
;

  output           data_out;
  output           empty;
  output           fifo_contains_ones_n;
  output           full;
  input            clear_fifo;
  input            clk;
  input            data_in;
  input            read;
  input            reset_n;
  input            sync_reset;
  input            write;

  wire             data_out;
  wire             empty;
  reg              fifo_contains_ones_n;
  wire             full;
  reg              full_0;
  reg              full_1;
  reg              full_2;
  reg              full_3;
  reg              full_4;
  reg              full_5;
  reg              full_6;
  wire             full_7;
  reg     [  3: 0] how_many_ones;
  wire    [  3: 0] one_count_minus_one;
  wire    [  3: 0] one_count_plus_one;
  wire             p0_full_0;
  wire             p0_stage_0;
  wire             p1_full_1;
  wire             p1_stage_1;
  wire             p2_full_2;
  wire             p2_stage_2;
  wire             p3_full_3;
  wire             p3_stage_3;
  wire             p4_full_4;
  wire             p4_stage_4;
  wire             p5_full_5;
  wire             p5_stage_5;
  wire             p6_full_6;
  wire             p6_stage_6;
  reg              stage_0;
  reg              stage_1;
  reg              stage_2;
  reg              stage_3;
  reg              stage_4;
  reg              stage_5;
  reg              stage_6;
  wire    [  3: 0] updated_one_count;
  assign data_out = stage_0;
  assign full = full_6;
  assign empty = !full_0;
  assign full_7 = 0;
  //data_6, which is an e_mux
  assign p6_stage_6 = ((full_7 & ~clear_fifo) == 0)? data_in :
    data_in;

  //data_reg_6, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_6 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_6))
          if (sync_reset & full_6 & !((full_7 == 0) & read & write))
              stage_6 <= 0;
          else 
            stage_6 <= p6_stage_6;
    end


  //control_6, which is an e_mux
  assign p6_full_6 = ((read & !write) == 0)? full_5 :
    0;

  //control_reg_6, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_6 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_6 <= 0;
          else 
            full_6 <= p6_full_6;
    end


  //data_5, which is an e_mux
  assign p5_stage_5 = ((full_6 & ~clear_fifo) == 0)? data_in :
    stage_6;

  //data_reg_5, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_5 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_5))
          if (sync_reset & full_5 & !((full_6 == 0) & read & write))
              stage_5 <= 0;
          else 
            stage_5 <= p5_stage_5;
    end


  //control_5, which is an e_mux
  assign p5_full_5 = ((read & !write) == 0)? full_4 :
    full_6;

  //control_reg_5, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_5 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_5 <= 0;
          else 
            full_5 <= p5_full_5;
    end


  //data_4, which is an e_mux
  assign p4_stage_4 = ((full_5 & ~clear_fifo) == 0)? data_in :
    stage_5;

  //data_reg_4, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_4 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_4))
          if (sync_reset & full_4 & !((full_5 == 0) & read & write))
              stage_4 <= 0;
          else 
            stage_4 <= p4_stage_4;
    end


  //control_4, which is an e_mux
  assign p4_full_4 = ((read & !write) == 0)? full_3 :
    full_5;

  //control_reg_4, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_4 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_4 <= 0;
          else 
            full_4 <= p4_full_4;
    end


  //data_3, which is an e_mux
  assign p3_stage_3 = ((full_4 & ~clear_fifo) == 0)? data_in :
    stage_4;

  //data_reg_3, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_3 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_3))
          if (sync_reset & full_3 & !((full_4 == 0) & read & write))
              stage_3 <= 0;
          else 
            stage_3 <= p3_stage_3;
    end


  //control_3, which is an e_mux
  assign p3_full_3 = ((read & !write) == 0)? full_2 :
    full_4;

  //control_reg_3, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_3 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_3 <= 0;
          else 
            full_3 <= p3_full_3;
    end


  //data_2, which is an e_mux
  assign p2_stage_2 = ((full_3 & ~clear_fifo) == 0)? data_in :
    stage_3;

  //data_reg_2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_2 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_2))
          if (sync_reset & full_2 & !((full_3 == 0) & read & write))
              stage_2 <= 0;
          else 
            stage_2 <= p2_stage_2;
    end


  //control_2, which is an e_mux
  assign p2_full_2 = ((read & !write) == 0)? full_1 :
    full_3;

  //control_reg_2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_2 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_2 <= 0;
          else 
            full_2 <= p2_full_2;
    end


  //data_1, which is an e_mux
  assign p1_stage_1 = ((full_2 & ~clear_fifo) == 0)? data_in :
    stage_2;

  //data_reg_1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_1 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_1))
          if (sync_reset & full_1 & !((full_2 == 0) & read & write))
              stage_1 <= 0;
          else 
            stage_1 <= p1_stage_1;
    end


  //control_1, which is an e_mux
  assign p1_full_1 = ((read & !write) == 0)? full_0 :
    full_2;

  //control_reg_1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_1 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_1 <= 0;
          else 
            full_1 <= p1_full_1;
    end


  //data_0, which is an e_mux
  assign p0_stage_0 = ((full_1 & ~clear_fifo) == 0)? data_in :
    stage_1;

  //data_reg_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_0 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_0))
          if (sync_reset & full_0 & !((full_1 == 0) & read & write))
              stage_0 <= 0;
          else 
            stage_0 <= p0_stage_0;
    end


  //control_0, which is an e_mux
  assign p0_full_0 = ((read & !write) == 0)? 1 :
    full_1;

  //control_reg_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_0 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo & ~write)
              full_0 <= 0;
          else 
            full_0 <= p0_full_0;
    end


  assign one_count_plus_one = how_many_ones + 1;
  assign one_count_minus_one = how_many_ones - 1;
  //updated_one_count, which is an e_mux
  assign updated_one_count = ((((clear_fifo | sync_reset) & !write)))? 0 :
    ((((clear_fifo | sync_reset) & write)))? |data_in :
    ((read & (|data_in) & write & (|stage_0)))? how_many_ones :
    ((write & (|data_in)))? one_count_plus_one :
    ((read & (|stage_0)))? one_count_minus_one :
    how_many_ones;

  //counts how many ones in the data pipeline, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          how_many_ones <= 0;
      else if (clear_fifo | sync_reset | read | write)
          how_many_ones <= updated_one_count;
    end


  //this fifo contains ones in the data pipeline, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_contains_ones_n <= 1;
      else if (clear_fifo | sync_reset | read | write)
          fifo_contains_ones_n <= ~(|updated_one_count);
    end



endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module sdram_s1_arbitrator (
                             // inputs:
                              clk,
                              cpu0_data_master_address_to_slave,
                              cpu0_data_master_byteenable,
                              cpu0_data_master_dbs_address,
                              cpu0_data_master_dbs_write_16,
                              cpu0_data_master_no_byte_enables_and_last_term,
                              cpu0_data_master_read,
                              cpu0_data_master_waitrequest,
                              cpu0_data_master_write,
                              cpu0_instruction_master_address_to_slave,
                              cpu0_instruction_master_dbs_address,
                              cpu0_instruction_master_latency_counter,
                              cpu0_instruction_master_read,
                              reset_n,
                              sdram_s1_readdata,
                              sdram_s1_readdatavalid,
                              sdram_s1_waitrequest,

                             // outputs:
                              cpu0_data_master_byteenable_sdram_s1,
                              cpu0_data_master_granted_sdram_s1,
                              cpu0_data_master_qualified_request_sdram_s1,
                              cpu0_data_master_read_data_valid_sdram_s1,
                              cpu0_data_master_read_data_valid_sdram_s1_shift_register,
                              cpu0_data_master_requests_sdram_s1,
                              cpu0_instruction_master_granted_sdram_s1,
                              cpu0_instruction_master_qualified_request_sdram_s1,
                              cpu0_instruction_master_read_data_valid_sdram_s1,
                              cpu0_instruction_master_read_data_valid_sdram_s1_shift_register,
                              cpu0_instruction_master_requests_sdram_s1,
                              d1_sdram_s1_end_xfer,
                              sdram_s1_address,
                              sdram_s1_byteenable_n,
                              sdram_s1_chipselect,
                              sdram_s1_read_n,
                              sdram_s1_readdata_from_sa,
                              sdram_s1_reset_n,
                              sdram_s1_waitrequest_from_sa,
                              sdram_s1_write_n,
                              sdram_s1_writedata
                           )
;

  output  [  1: 0] cpu0_data_master_byteenable_sdram_s1;
  output           cpu0_data_master_granted_sdram_s1;
  output           cpu0_data_master_qualified_request_sdram_s1;
  output           cpu0_data_master_read_data_valid_sdram_s1;
  output           cpu0_data_master_read_data_valid_sdram_s1_shift_register;
  output           cpu0_data_master_requests_sdram_s1;
  output           cpu0_instruction_master_granted_sdram_s1;
  output           cpu0_instruction_master_qualified_request_sdram_s1;
  output           cpu0_instruction_master_read_data_valid_sdram_s1;
  output           cpu0_instruction_master_read_data_valid_sdram_s1_shift_register;
  output           cpu0_instruction_master_requests_sdram_s1;
  output           d1_sdram_s1_end_xfer;
  output  [ 23: 0] sdram_s1_address;
  output  [  1: 0] sdram_s1_byteenable_n;
  output           sdram_s1_chipselect;
  output           sdram_s1_read_n;
  output  [ 15: 0] sdram_s1_readdata_from_sa;
  output           sdram_s1_reset_n;
  output           sdram_s1_waitrequest_from_sa;
  output           sdram_s1_write_n;
  output  [ 15: 0] sdram_s1_writedata;
  input            clk;
  input   [ 26: 0] cpu0_data_master_address_to_slave;
  input   [  3: 0] cpu0_data_master_byteenable;
  input   [  1: 0] cpu0_data_master_dbs_address;
  input   [ 15: 0] cpu0_data_master_dbs_write_16;
  input            cpu0_data_master_no_byte_enables_and_last_term;
  input            cpu0_data_master_read;
  input            cpu0_data_master_waitrequest;
  input            cpu0_data_master_write;
  input   [ 26: 0] cpu0_instruction_master_address_to_slave;
  input   [  1: 0] cpu0_instruction_master_dbs_address;
  input   [  1: 0] cpu0_instruction_master_latency_counter;
  input            cpu0_instruction_master_read;
  input            reset_n;
  input   [ 15: 0] sdram_s1_readdata;
  input            sdram_s1_readdatavalid;
  input            sdram_s1_waitrequest;

  wire             cpu0_data_master_arbiterlock;
  wire             cpu0_data_master_arbiterlock2;
  wire    [  1: 0] cpu0_data_master_byteenable_sdram_s1;
  wire    [  1: 0] cpu0_data_master_byteenable_sdram_s1_segment_0;
  wire    [  1: 0] cpu0_data_master_byteenable_sdram_s1_segment_1;
  wire             cpu0_data_master_continuerequest;
  wire             cpu0_data_master_granted_sdram_s1;
  wire             cpu0_data_master_qualified_request_sdram_s1;
  wire             cpu0_data_master_rdv_fifo_empty_sdram_s1;
  wire             cpu0_data_master_rdv_fifo_output_from_sdram_s1;
  wire             cpu0_data_master_read_data_valid_sdram_s1;
  wire             cpu0_data_master_read_data_valid_sdram_s1_shift_register;
  wire             cpu0_data_master_requests_sdram_s1;
  wire             cpu0_data_master_saved_grant_sdram_s1;
  wire             cpu0_instruction_master_arbiterlock;
  wire             cpu0_instruction_master_arbiterlock2;
  wire             cpu0_instruction_master_continuerequest;
  wire             cpu0_instruction_master_granted_sdram_s1;
  wire             cpu0_instruction_master_qualified_request_sdram_s1;
  wire             cpu0_instruction_master_rdv_fifo_empty_sdram_s1;
  wire             cpu0_instruction_master_rdv_fifo_output_from_sdram_s1;
  wire             cpu0_instruction_master_read_data_valid_sdram_s1;
  wire             cpu0_instruction_master_read_data_valid_sdram_s1_shift_register;
  wire             cpu0_instruction_master_requests_sdram_s1;
  wire             cpu0_instruction_master_saved_grant_sdram_s1;
  reg              d1_reasons_to_wait;
  reg              d1_sdram_s1_end_xfer;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_sdram_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg              last_cycle_cpu0_data_master_granted_slave_sdram_s1;
  reg              last_cycle_cpu0_instruction_master_granted_slave_sdram_s1;
  wire    [ 23: 0] sdram_s1_address;
  wire             sdram_s1_allgrants;
  wire             sdram_s1_allow_new_arb_cycle;
  wire             sdram_s1_any_bursting_master_saved_grant;
  wire             sdram_s1_any_continuerequest;
  reg     [  1: 0] sdram_s1_arb_addend;
  wire             sdram_s1_arb_counter_enable;
  reg     [  2: 0] sdram_s1_arb_share_counter;
  wire    [  2: 0] sdram_s1_arb_share_counter_next_value;
  wire    [  2: 0] sdram_s1_arb_share_set_values;
  wire    [  1: 0] sdram_s1_arb_winner;
  wire             sdram_s1_arbitration_holdoff_internal;
  wire             sdram_s1_beginbursttransfer_internal;
  wire             sdram_s1_begins_xfer;
  wire    [  1: 0] sdram_s1_byteenable_n;
  wire             sdram_s1_chipselect;
  wire    [  3: 0] sdram_s1_chosen_master_double_vector;
  wire    [  1: 0] sdram_s1_chosen_master_rot_left;
  wire             sdram_s1_end_xfer;
  wire             sdram_s1_firsttransfer;
  wire    [  1: 0] sdram_s1_grant_vector;
  wire             sdram_s1_in_a_read_cycle;
  wire             sdram_s1_in_a_write_cycle;
  wire    [  1: 0] sdram_s1_master_qreq_vector;
  wire             sdram_s1_move_on_to_next_transaction;
  wire             sdram_s1_non_bursting_master_requests;
  wire             sdram_s1_read_n;
  wire    [ 15: 0] sdram_s1_readdata_from_sa;
  wire             sdram_s1_readdatavalid_from_sa;
  reg              sdram_s1_reg_firsttransfer;
  wire             sdram_s1_reset_n;
  reg     [  1: 0] sdram_s1_saved_chosen_master_vector;
  reg              sdram_s1_slavearbiterlockenable;
  wire             sdram_s1_slavearbiterlockenable2;
  wire             sdram_s1_unreg_firsttransfer;
  wire             sdram_s1_waitrequest_from_sa;
  wire             sdram_s1_waits_for_read;
  wire             sdram_s1_waits_for_write;
  wire             sdram_s1_write_n;
  wire    [ 15: 0] sdram_s1_writedata;
  wire    [ 26: 0] shifted_address_to_sdram_s1_from_cpu0_data_master;
  wire    [ 26: 0] shifted_address_to_sdram_s1_from_cpu0_instruction_master;
  wire             wait_for_sdram_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~sdram_s1_end_xfer;
    end


  assign sdram_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu0_data_master_qualified_request_sdram_s1 | cpu0_instruction_master_qualified_request_sdram_s1));
  //assign sdram_s1_readdatavalid_from_sa = sdram_s1_readdatavalid so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign sdram_s1_readdatavalid_from_sa = sdram_s1_readdatavalid;

  //assign sdram_s1_readdata_from_sa = sdram_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign sdram_s1_readdata_from_sa = sdram_s1_readdata;

  assign cpu0_data_master_requests_sdram_s1 = ({cpu0_data_master_address_to_slave[26 : 25] , 25'b0} == 27'h4000000) & (cpu0_data_master_read | cpu0_data_master_write);
  //assign sdram_s1_waitrequest_from_sa = sdram_s1_waitrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign sdram_s1_waitrequest_from_sa = sdram_s1_waitrequest;

  //sdram_s1_arb_share_counter set values, which is an e_mux
  assign sdram_s1_arb_share_set_values = (cpu0_data_master_granted_sdram_s1)? 2 :
    (cpu0_instruction_master_granted_sdram_s1)? 2 :
    (cpu0_data_master_granted_sdram_s1)? 2 :
    (cpu0_instruction_master_granted_sdram_s1)? 2 :
    1;

  //sdram_s1_non_bursting_master_requests mux, which is an e_mux
  assign sdram_s1_non_bursting_master_requests = cpu0_data_master_requests_sdram_s1 |
    cpu0_instruction_master_requests_sdram_s1 |
    cpu0_data_master_requests_sdram_s1 |
    cpu0_instruction_master_requests_sdram_s1;

  //sdram_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign sdram_s1_any_bursting_master_saved_grant = 0;

  //sdram_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign sdram_s1_arb_share_counter_next_value = sdram_s1_firsttransfer ? (sdram_s1_arb_share_set_values - 1) : |sdram_s1_arb_share_counter ? (sdram_s1_arb_share_counter - 1) : 0;

  //sdram_s1_allgrants all slave grants, which is an e_mux
  assign sdram_s1_allgrants = (|sdram_s1_grant_vector) |
    (|sdram_s1_grant_vector) |
    (|sdram_s1_grant_vector) |
    (|sdram_s1_grant_vector);

  //sdram_s1_end_xfer assignment, which is an e_assign
  assign sdram_s1_end_xfer = ~(sdram_s1_waits_for_read | sdram_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_sdram_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_sdram_s1 = sdram_s1_end_xfer & (~sdram_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //sdram_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign sdram_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_sdram_s1 & sdram_s1_allgrants) | (end_xfer_arb_share_counter_term_sdram_s1 & ~sdram_s1_non_bursting_master_requests);

  //sdram_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sdram_s1_arb_share_counter <= 0;
      else if (sdram_s1_arb_counter_enable)
          sdram_s1_arb_share_counter <= sdram_s1_arb_share_counter_next_value;
    end


  //sdram_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sdram_s1_slavearbiterlockenable <= 0;
      else if ((|sdram_s1_master_qreq_vector & end_xfer_arb_share_counter_term_sdram_s1) | (end_xfer_arb_share_counter_term_sdram_s1 & ~sdram_s1_non_bursting_master_requests))
          sdram_s1_slavearbiterlockenable <= |sdram_s1_arb_share_counter_next_value;
    end


  //cpu0/data_master sdram/s1 arbiterlock, which is an e_assign
  assign cpu0_data_master_arbiterlock = sdram_s1_slavearbiterlockenable & cpu0_data_master_continuerequest;

  //sdram_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign sdram_s1_slavearbiterlockenable2 = |sdram_s1_arb_share_counter_next_value;

  //cpu0/data_master sdram/s1 arbiterlock2, which is an e_assign
  assign cpu0_data_master_arbiterlock2 = sdram_s1_slavearbiterlockenable2 & cpu0_data_master_continuerequest;

  //cpu0/instruction_master sdram/s1 arbiterlock, which is an e_assign
  assign cpu0_instruction_master_arbiterlock = sdram_s1_slavearbiterlockenable & cpu0_instruction_master_continuerequest;

  //cpu0/instruction_master sdram/s1 arbiterlock2, which is an e_assign
  assign cpu0_instruction_master_arbiterlock2 = sdram_s1_slavearbiterlockenable2 & cpu0_instruction_master_continuerequest;

  //cpu0/instruction_master granted sdram/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu0_instruction_master_granted_slave_sdram_s1 <= 0;
      else 
        last_cycle_cpu0_instruction_master_granted_slave_sdram_s1 <= cpu0_instruction_master_saved_grant_sdram_s1 ? 1 : (sdram_s1_arbitration_holdoff_internal | ~cpu0_instruction_master_requests_sdram_s1) ? 0 : last_cycle_cpu0_instruction_master_granted_slave_sdram_s1;
    end


  //cpu0_instruction_master_continuerequest continued request, which is an e_mux
  assign cpu0_instruction_master_continuerequest = last_cycle_cpu0_instruction_master_granted_slave_sdram_s1 & cpu0_instruction_master_requests_sdram_s1;

  //sdram_s1_any_continuerequest at least one master continues requesting, which is an e_mux
  assign sdram_s1_any_continuerequest = cpu0_instruction_master_continuerequest |
    cpu0_data_master_continuerequest;

  assign cpu0_data_master_qualified_request_sdram_s1 = cpu0_data_master_requests_sdram_s1 & ~((cpu0_data_master_read & (~cpu0_data_master_waitrequest | (|cpu0_data_master_read_data_valid_sdram_s1_shift_register))) | ((~cpu0_data_master_waitrequest | cpu0_data_master_no_byte_enables_and_last_term | !cpu0_data_master_byteenable_sdram_s1) & cpu0_data_master_write) | cpu0_instruction_master_arbiterlock);
  //unique name for sdram_s1_move_on_to_next_transaction, which is an e_assign
  assign sdram_s1_move_on_to_next_transaction = sdram_s1_readdatavalid_from_sa;

  //rdv_fifo_for_cpu0_data_master_to_sdram_s1, which is an e_fifo_with_registered_outputs
  rdv_fifo_for_cpu0_data_master_to_sdram_s1_module rdv_fifo_for_cpu0_data_master_to_sdram_s1
    (
      .clear_fifo           (1'b0),
      .clk                  (clk),
      .data_in              (cpu0_data_master_granted_sdram_s1),
      .data_out             (cpu0_data_master_rdv_fifo_output_from_sdram_s1),
      .empty                (),
      .fifo_contains_ones_n (cpu0_data_master_rdv_fifo_empty_sdram_s1),
      .full                 (),
      .read                 (sdram_s1_move_on_to_next_transaction),
      .reset_n              (reset_n),
      .sync_reset           (1'b0),
      .write                (in_a_read_cycle & ~sdram_s1_waits_for_read)
    );

  assign cpu0_data_master_read_data_valid_sdram_s1_shift_register = ~cpu0_data_master_rdv_fifo_empty_sdram_s1;
  //local readdatavalid cpu0_data_master_read_data_valid_sdram_s1, which is an e_mux
  assign cpu0_data_master_read_data_valid_sdram_s1 = (sdram_s1_readdatavalid_from_sa & cpu0_data_master_rdv_fifo_output_from_sdram_s1) & ~ cpu0_data_master_rdv_fifo_empty_sdram_s1;

  //sdram_s1_writedata mux, which is an e_mux
  assign sdram_s1_writedata = cpu0_data_master_dbs_write_16;

  assign cpu0_instruction_master_requests_sdram_s1 = (({cpu0_instruction_master_address_to_slave[26 : 25] , 25'b0} == 27'h4000000) & (cpu0_instruction_master_read)) & cpu0_instruction_master_read;
  //cpu0/data_master granted sdram/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu0_data_master_granted_slave_sdram_s1 <= 0;
      else 
        last_cycle_cpu0_data_master_granted_slave_sdram_s1 <= cpu0_data_master_saved_grant_sdram_s1 ? 1 : (sdram_s1_arbitration_holdoff_internal | ~cpu0_data_master_requests_sdram_s1) ? 0 : last_cycle_cpu0_data_master_granted_slave_sdram_s1;
    end


  //cpu0_data_master_continuerequest continued request, which is an e_mux
  assign cpu0_data_master_continuerequest = last_cycle_cpu0_data_master_granted_slave_sdram_s1 & cpu0_data_master_requests_sdram_s1;

  assign cpu0_instruction_master_qualified_request_sdram_s1 = cpu0_instruction_master_requests_sdram_s1 & ~((cpu0_instruction_master_read & ((cpu0_instruction_master_latency_counter != 0) | (1 < cpu0_instruction_master_latency_counter))) | cpu0_data_master_arbiterlock);
  //rdv_fifo_for_cpu0_instruction_master_to_sdram_s1, which is an e_fifo_with_registered_outputs
  rdv_fifo_for_cpu0_instruction_master_to_sdram_s1_module rdv_fifo_for_cpu0_instruction_master_to_sdram_s1
    (
      .clear_fifo           (1'b0),
      .clk                  (clk),
      .data_in              (cpu0_instruction_master_granted_sdram_s1),
      .data_out             (cpu0_instruction_master_rdv_fifo_output_from_sdram_s1),
      .empty                (),
      .fifo_contains_ones_n (cpu0_instruction_master_rdv_fifo_empty_sdram_s1),
      .full                 (),
      .read                 (sdram_s1_move_on_to_next_transaction),
      .reset_n              (reset_n),
      .sync_reset           (1'b0),
      .write                (in_a_read_cycle & ~sdram_s1_waits_for_read)
    );

  assign cpu0_instruction_master_read_data_valid_sdram_s1_shift_register = ~cpu0_instruction_master_rdv_fifo_empty_sdram_s1;
  //local readdatavalid cpu0_instruction_master_read_data_valid_sdram_s1, which is an e_mux
  assign cpu0_instruction_master_read_data_valid_sdram_s1 = (sdram_s1_readdatavalid_from_sa & cpu0_instruction_master_rdv_fifo_output_from_sdram_s1) & ~ cpu0_instruction_master_rdv_fifo_empty_sdram_s1;

  //allow new arb cycle for sdram/s1, which is an e_assign
  assign sdram_s1_allow_new_arb_cycle = ~cpu0_data_master_arbiterlock & ~cpu0_instruction_master_arbiterlock;

  //cpu0/instruction_master assignment into master qualified-requests vector for sdram/s1, which is an e_assign
  assign sdram_s1_master_qreq_vector[0] = cpu0_instruction_master_qualified_request_sdram_s1;

  //cpu0/instruction_master grant sdram/s1, which is an e_assign
  assign cpu0_instruction_master_granted_sdram_s1 = sdram_s1_grant_vector[0];

  //cpu0/instruction_master saved-grant sdram/s1, which is an e_assign
  assign cpu0_instruction_master_saved_grant_sdram_s1 = sdram_s1_arb_winner[0] && cpu0_instruction_master_requests_sdram_s1;

  //cpu0/data_master assignment into master qualified-requests vector for sdram/s1, which is an e_assign
  assign sdram_s1_master_qreq_vector[1] = cpu0_data_master_qualified_request_sdram_s1;

  //cpu0/data_master grant sdram/s1, which is an e_assign
  assign cpu0_data_master_granted_sdram_s1 = sdram_s1_grant_vector[1];

  //cpu0/data_master saved-grant sdram/s1, which is an e_assign
  assign cpu0_data_master_saved_grant_sdram_s1 = sdram_s1_arb_winner[1] && cpu0_data_master_requests_sdram_s1;

  //sdram/s1 chosen-master double-vector, which is an e_assign
  assign sdram_s1_chosen_master_double_vector = {sdram_s1_master_qreq_vector, sdram_s1_master_qreq_vector} & ({~sdram_s1_master_qreq_vector, ~sdram_s1_master_qreq_vector} + sdram_s1_arb_addend);

  //stable onehot encoding of arb winner
  assign sdram_s1_arb_winner = (sdram_s1_allow_new_arb_cycle & | sdram_s1_grant_vector) ? sdram_s1_grant_vector : sdram_s1_saved_chosen_master_vector;

  //saved sdram_s1_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sdram_s1_saved_chosen_master_vector <= 0;
      else if (sdram_s1_allow_new_arb_cycle)
          sdram_s1_saved_chosen_master_vector <= |sdram_s1_grant_vector ? sdram_s1_grant_vector : sdram_s1_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign sdram_s1_grant_vector = {(sdram_s1_chosen_master_double_vector[1] | sdram_s1_chosen_master_double_vector[3]),
    (sdram_s1_chosen_master_double_vector[0] | sdram_s1_chosen_master_double_vector[2])};

  //sdram/s1 chosen master rotated left, which is an e_assign
  assign sdram_s1_chosen_master_rot_left = (sdram_s1_arb_winner << 1) ? (sdram_s1_arb_winner << 1) : 1;

  //sdram/s1's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sdram_s1_arb_addend <= 1;
      else if (|sdram_s1_grant_vector)
          sdram_s1_arb_addend <= sdram_s1_end_xfer? sdram_s1_chosen_master_rot_left : sdram_s1_grant_vector;
    end


  //sdram_s1_reset_n assignment, which is an e_assign
  assign sdram_s1_reset_n = reset_n;

  assign sdram_s1_chipselect = cpu0_data_master_granted_sdram_s1 | cpu0_instruction_master_granted_sdram_s1;
  //sdram_s1_firsttransfer first transaction, which is an e_assign
  assign sdram_s1_firsttransfer = sdram_s1_begins_xfer ? sdram_s1_unreg_firsttransfer : sdram_s1_reg_firsttransfer;

  //sdram_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign sdram_s1_unreg_firsttransfer = ~(sdram_s1_slavearbiterlockenable & sdram_s1_any_continuerequest);

  //sdram_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sdram_s1_reg_firsttransfer <= 1'b1;
      else if (sdram_s1_begins_xfer)
          sdram_s1_reg_firsttransfer <= sdram_s1_unreg_firsttransfer;
    end


  //sdram_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign sdram_s1_beginbursttransfer_internal = sdram_s1_begins_xfer;

  //sdram_s1_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign sdram_s1_arbitration_holdoff_internal = sdram_s1_begins_xfer & sdram_s1_firsttransfer;

  //~sdram_s1_read_n assignment, which is an e_mux
  assign sdram_s1_read_n = ~((cpu0_data_master_granted_sdram_s1 & cpu0_data_master_read) | (cpu0_instruction_master_granted_sdram_s1 & cpu0_instruction_master_read));

  //~sdram_s1_write_n assignment, which is an e_mux
  assign sdram_s1_write_n = ~(cpu0_data_master_granted_sdram_s1 & cpu0_data_master_write);

  assign shifted_address_to_sdram_s1_from_cpu0_data_master = {cpu0_data_master_address_to_slave >> 2,
    cpu0_data_master_dbs_address[1],
    {1 {1'b0}}};

  //sdram_s1_address mux, which is an e_mux
  assign sdram_s1_address = (cpu0_data_master_granted_sdram_s1)? (shifted_address_to_sdram_s1_from_cpu0_data_master >> 1) :
    (shifted_address_to_sdram_s1_from_cpu0_instruction_master >> 1);

  assign shifted_address_to_sdram_s1_from_cpu0_instruction_master = {cpu0_instruction_master_address_to_slave >> 2,
    cpu0_instruction_master_dbs_address[1],
    {1 {1'b0}}};

  //d1_sdram_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_sdram_s1_end_xfer <= 1;
      else 
        d1_sdram_s1_end_xfer <= sdram_s1_end_xfer;
    end


  //sdram_s1_waits_for_read in a cycle, which is an e_mux
  assign sdram_s1_waits_for_read = sdram_s1_in_a_read_cycle & sdram_s1_waitrequest_from_sa;

  //sdram_s1_in_a_read_cycle assignment, which is an e_assign
  assign sdram_s1_in_a_read_cycle = (cpu0_data_master_granted_sdram_s1 & cpu0_data_master_read) | (cpu0_instruction_master_granted_sdram_s1 & cpu0_instruction_master_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = sdram_s1_in_a_read_cycle;

  //sdram_s1_waits_for_write in a cycle, which is an e_mux
  assign sdram_s1_waits_for_write = sdram_s1_in_a_write_cycle & sdram_s1_waitrequest_from_sa;

  //sdram_s1_in_a_write_cycle assignment, which is an e_assign
  assign sdram_s1_in_a_write_cycle = cpu0_data_master_granted_sdram_s1 & cpu0_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = sdram_s1_in_a_write_cycle;

  assign wait_for_sdram_s1_counter = 0;
  //~sdram_s1_byteenable_n byte enable port mux, which is an e_mux
  assign sdram_s1_byteenable_n = ~((cpu0_data_master_granted_sdram_s1)? cpu0_data_master_byteenable_sdram_s1 :
    -1);

  assign {cpu0_data_master_byteenable_sdram_s1_segment_1,
cpu0_data_master_byteenable_sdram_s1_segment_0} = cpu0_data_master_byteenable;
  assign cpu0_data_master_byteenable_sdram_s1 = ((cpu0_data_master_dbs_address[1] == 0))? cpu0_data_master_byteenable_sdram_s1_segment_0 :
    cpu0_data_master_byteenable_sdram_s1_segment_1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //sdram/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu0_data_master_granted_sdram_s1 + cpu0_instruction_master_granted_sdram_s1 > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu0_data_master_saved_grant_sdram_s1 + cpu0_instruction_master_saved_grant_sdram_s1 > 1)
        begin
          $write("%0d ns: > 1 of saved_grant signals are active simultaneously", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module sysid_control_slave_arbitrator (
                                        // inputs:
                                         clk,
                                         cpu0_data_master_address_to_slave,
                                         cpu0_data_master_read,
                                         cpu0_data_master_write,
                                         reset_n,
                                         sysid_control_slave_readdata,

                                        // outputs:
                                         cpu0_data_master_granted_sysid_control_slave,
                                         cpu0_data_master_qualified_request_sysid_control_slave,
                                         cpu0_data_master_read_data_valid_sysid_control_slave,
                                         cpu0_data_master_requests_sysid_control_slave,
                                         d1_sysid_control_slave_end_xfer,
                                         sysid_control_slave_address,
                                         sysid_control_slave_readdata_from_sa,
                                         sysid_control_slave_reset_n
                                      )
;

  output           cpu0_data_master_granted_sysid_control_slave;
  output           cpu0_data_master_qualified_request_sysid_control_slave;
  output           cpu0_data_master_read_data_valid_sysid_control_slave;
  output           cpu0_data_master_requests_sysid_control_slave;
  output           d1_sysid_control_slave_end_xfer;
  output           sysid_control_slave_address;
  output  [ 31: 0] sysid_control_slave_readdata_from_sa;
  output           sysid_control_slave_reset_n;
  input            clk;
  input   [ 26: 0] cpu0_data_master_address_to_slave;
  input            cpu0_data_master_read;
  input            cpu0_data_master_write;
  input            reset_n;
  input   [ 31: 0] sysid_control_slave_readdata;

  wire             cpu0_data_master_arbiterlock;
  wire             cpu0_data_master_arbiterlock2;
  wire             cpu0_data_master_continuerequest;
  wire             cpu0_data_master_granted_sysid_control_slave;
  wire             cpu0_data_master_qualified_request_sysid_control_slave;
  wire             cpu0_data_master_read_data_valid_sysid_control_slave;
  wire             cpu0_data_master_requests_sysid_control_slave;
  wire             cpu0_data_master_saved_grant_sysid_control_slave;
  reg              d1_reasons_to_wait;
  reg              d1_sysid_control_slave_end_xfer;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_sysid_control_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 26: 0] shifted_address_to_sysid_control_slave_from_cpu0_data_master;
  wire             sysid_control_slave_address;
  wire             sysid_control_slave_allgrants;
  wire             sysid_control_slave_allow_new_arb_cycle;
  wire             sysid_control_slave_any_bursting_master_saved_grant;
  wire             sysid_control_slave_any_continuerequest;
  wire             sysid_control_slave_arb_counter_enable;
  reg     [  2: 0] sysid_control_slave_arb_share_counter;
  wire    [  2: 0] sysid_control_slave_arb_share_counter_next_value;
  wire    [  2: 0] sysid_control_slave_arb_share_set_values;
  wire             sysid_control_slave_beginbursttransfer_internal;
  wire             sysid_control_slave_begins_xfer;
  wire             sysid_control_slave_end_xfer;
  wire             sysid_control_slave_firsttransfer;
  wire             sysid_control_slave_grant_vector;
  wire             sysid_control_slave_in_a_read_cycle;
  wire             sysid_control_slave_in_a_write_cycle;
  wire             sysid_control_slave_master_qreq_vector;
  wire             sysid_control_slave_non_bursting_master_requests;
  wire    [ 31: 0] sysid_control_slave_readdata_from_sa;
  reg              sysid_control_slave_reg_firsttransfer;
  wire             sysid_control_slave_reset_n;
  reg              sysid_control_slave_slavearbiterlockenable;
  wire             sysid_control_slave_slavearbiterlockenable2;
  wire             sysid_control_slave_unreg_firsttransfer;
  wire             sysid_control_slave_waits_for_read;
  wire             sysid_control_slave_waits_for_write;
  wire             wait_for_sysid_control_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~sysid_control_slave_end_xfer;
    end


  assign sysid_control_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu0_data_master_qualified_request_sysid_control_slave));
  //assign sysid_control_slave_readdata_from_sa = sysid_control_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign sysid_control_slave_readdata_from_sa = sysid_control_slave_readdata;

  assign cpu0_data_master_requests_sysid_control_slave = (({cpu0_data_master_address_to_slave[26 : 3] , 3'b0} == 27'h401030) & (cpu0_data_master_read | cpu0_data_master_write)) & cpu0_data_master_read;
  //sysid_control_slave_arb_share_counter set values, which is an e_mux
  assign sysid_control_slave_arb_share_set_values = 1;

  //sysid_control_slave_non_bursting_master_requests mux, which is an e_mux
  assign sysid_control_slave_non_bursting_master_requests = cpu0_data_master_requests_sysid_control_slave;

  //sysid_control_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign sysid_control_slave_any_bursting_master_saved_grant = 0;

  //sysid_control_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign sysid_control_slave_arb_share_counter_next_value = sysid_control_slave_firsttransfer ? (sysid_control_slave_arb_share_set_values - 1) : |sysid_control_slave_arb_share_counter ? (sysid_control_slave_arb_share_counter - 1) : 0;

  //sysid_control_slave_allgrants all slave grants, which is an e_mux
  assign sysid_control_slave_allgrants = |sysid_control_slave_grant_vector;

  //sysid_control_slave_end_xfer assignment, which is an e_assign
  assign sysid_control_slave_end_xfer = ~(sysid_control_slave_waits_for_read | sysid_control_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_sysid_control_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_sysid_control_slave = sysid_control_slave_end_xfer & (~sysid_control_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //sysid_control_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign sysid_control_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_sysid_control_slave & sysid_control_slave_allgrants) | (end_xfer_arb_share_counter_term_sysid_control_slave & ~sysid_control_slave_non_bursting_master_requests);

  //sysid_control_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sysid_control_slave_arb_share_counter <= 0;
      else if (sysid_control_slave_arb_counter_enable)
          sysid_control_slave_arb_share_counter <= sysid_control_slave_arb_share_counter_next_value;
    end


  //sysid_control_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sysid_control_slave_slavearbiterlockenable <= 0;
      else if ((|sysid_control_slave_master_qreq_vector & end_xfer_arb_share_counter_term_sysid_control_slave) | (end_xfer_arb_share_counter_term_sysid_control_slave & ~sysid_control_slave_non_bursting_master_requests))
          sysid_control_slave_slavearbiterlockenable <= |sysid_control_slave_arb_share_counter_next_value;
    end


  //cpu0/data_master sysid/control_slave arbiterlock, which is an e_assign
  assign cpu0_data_master_arbiterlock = sysid_control_slave_slavearbiterlockenable & cpu0_data_master_continuerequest;

  //sysid_control_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign sysid_control_slave_slavearbiterlockenable2 = |sysid_control_slave_arb_share_counter_next_value;

  //cpu0/data_master sysid/control_slave arbiterlock2, which is an e_assign
  assign cpu0_data_master_arbiterlock2 = sysid_control_slave_slavearbiterlockenable2 & cpu0_data_master_continuerequest;

  //sysid_control_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign sysid_control_slave_any_continuerequest = 1;

  //cpu0_data_master_continuerequest continued request, which is an e_assign
  assign cpu0_data_master_continuerequest = 1;

  assign cpu0_data_master_qualified_request_sysid_control_slave = cpu0_data_master_requests_sysid_control_slave;
  //master is always granted when requested
  assign cpu0_data_master_granted_sysid_control_slave = cpu0_data_master_qualified_request_sysid_control_slave;

  //cpu0/data_master saved-grant sysid/control_slave, which is an e_assign
  assign cpu0_data_master_saved_grant_sysid_control_slave = cpu0_data_master_requests_sysid_control_slave;

  //allow new arb cycle for sysid/control_slave, which is an e_assign
  assign sysid_control_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign sysid_control_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign sysid_control_slave_master_qreq_vector = 1;

  //sysid_control_slave_reset_n assignment, which is an e_assign
  assign sysid_control_slave_reset_n = reset_n;

  //sysid_control_slave_firsttransfer first transaction, which is an e_assign
  assign sysid_control_slave_firsttransfer = sysid_control_slave_begins_xfer ? sysid_control_slave_unreg_firsttransfer : sysid_control_slave_reg_firsttransfer;

  //sysid_control_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign sysid_control_slave_unreg_firsttransfer = ~(sysid_control_slave_slavearbiterlockenable & sysid_control_slave_any_continuerequest);

  //sysid_control_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sysid_control_slave_reg_firsttransfer <= 1'b1;
      else if (sysid_control_slave_begins_xfer)
          sysid_control_slave_reg_firsttransfer <= sysid_control_slave_unreg_firsttransfer;
    end


  //sysid_control_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign sysid_control_slave_beginbursttransfer_internal = sysid_control_slave_begins_xfer;

  assign shifted_address_to_sysid_control_slave_from_cpu0_data_master = cpu0_data_master_address_to_slave;
  //sysid_control_slave_address mux, which is an e_mux
  assign sysid_control_slave_address = shifted_address_to_sysid_control_slave_from_cpu0_data_master >> 2;

  //d1_sysid_control_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_sysid_control_slave_end_xfer <= 1;
      else 
        d1_sysid_control_slave_end_xfer <= sysid_control_slave_end_xfer;
    end


  //sysid_control_slave_waits_for_read in a cycle, which is an e_mux
  assign sysid_control_slave_waits_for_read = sysid_control_slave_in_a_read_cycle & sysid_control_slave_begins_xfer;

  //sysid_control_slave_in_a_read_cycle assignment, which is an e_assign
  assign sysid_control_slave_in_a_read_cycle = cpu0_data_master_granted_sysid_control_slave & cpu0_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = sysid_control_slave_in_a_read_cycle;

  //sysid_control_slave_waits_for_write in a cycle, which is an e_mux
  assign sysid_control_slave_waits_for_write = sysid_control_slave_in_a_write_cycle & 0;

  //sysid_control_slave_in_a_write_cycle assignment, which is an e_assign
  assign sysid_control_slave_in_a_write_cycle = cpu0_data_master_granted_sysid_control_slave & cpu0_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = sysid_control_slave_in_a_write_cycle;

  assign wait_for_sysid_control_slave_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //sysid/control_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module timer0_s1_arbitrator (
                              // inputs:
                               clk,
                               cpu0_data_master_address_to_slave,
                               cpu0_data_master_read,
                               cpu0_data_master_waitrequest,
                               cpu0_data_master_write,
                               cpu0_data_master_writedata,
                               reset_n,
                               timer0_s1_irq,
                               timer0_s1_readdata,

                              // outputs:
                               cpu0_data_master_granted_timer0_s1,
                               cpu0_data_master_qualified_request_timer0_s1,
                               cpu0_data_master_read_data_valid_timer0_s1,
                               cpu0_data_master_requests_timer0_s1,
                               d1_timer0_s1_end_xfer,
                               timer0_s1_address,
                               timer0_s1_chipselect,
                               timer0_s1_irq_from_sa,
                               timer0_s1_readdata_from_sa,
                               timer0_s1_reset_n,
                               timer0_s1_write_n,
                               timer0_s1_writedata
                            )
;

  output           cpu0_data_master_granted_timer0_s1;
  output           cpu0_data_master_qualified_request_timer0_s1;
  output           cpu0_data_master_read_data_valid_timer0_s1;
  output           cpu0_data_master_requests_timer0_s1;
  output           d1_timer0_s1_end_xfer;
  output  [  2: 0] timer0_s1_address;
  output           timer0_s1_chipselect;
  output           timer0_s1_irq_from_sa;
  output  [ 15: 0] timer0_s1_readdata_from_sa;
  output           timer0_s1_reset_n;
  output           timer0_s1_write_n;
  output  [ 15: 0] timer0_s1_writedata;
  input            clk;
  input   [ 26: 0] cpu0_data_master_address_to_slave;
  input            cpu0_data_master_read;
  input            cpu0_data_master_waitrequest;
  input            cpu0_data_master_write;
  input   [ 31: 0] cpu0_data_master_writedata;
  input            reset_n;
  input            timer0_s1_irq;
  input   [ 15: 0] timer0_s1_readdata;

  wire             cpu0_data_master_arbiterlock;
  wire             cpu0_data_master_arbiterlock2;
  wire             cpu0_data_master_continuerequest;
  wire             cpu0_data_master_granted_timer0_s1;
  wire             cpu0_data_master_qualified_request_timer0_s1;
  wire             cpu0_data_master_read_data_valid_timer0_s1;
  wire             cpu0_data_master_requests_timer0_s1;
  wire             cpu0_data_master_saved_grant_timer0_s1;
  reg              d1_reasons_to_wait;
  reg              d1_timer0_s1_end_xfer;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_timer0_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 26: 0] shifted_address_to_timer0_s1_from_cpu0_data_master;
  wire    [  2: 0] timer0_s1_address;
  wire             timer0_s1_allgrants;
  wire             timer0_s1_allow_new_arb_cycle;
  wire             timer0_s1_any_bursting_master_saved_grant;
  wire             timer0_s1_any_continuerequest;
  wire             timer0_s1_arb_counter_enable;
  reg     [  2: 0] timer0_s1_arb_share_counter;
  wire    [  2: 0] timer0_s1_arb_share_counter_next_value;
  wire    [  2: 0] timer0_s1_arb_share_set_values;
  wire             timer0_s1_beginbursttransfer_internal;
  wire             timer0_s1_begins_xfer;
  wire             timer0_s1_chipselect;
  wire             timer0_s1_end_xfer;
  wire             timer0_s1_firsttransfer;
  wire             timer0_s1_grant_vector;
  wire             timer0_s1_in_a_read_cycle;
  wire             timer0_s1_in_a_write_cycle;
  wire             timer0_s1_irq_from_sa;
  wire             timer0_s1_master_qreq_vector;
  wire             timer0_s1_non_bursting_master_requests;
  wire    [ 15: 0] timer0_s1_readdata_from_sa;
  reg              timer0_s1_reg_firsttransfer;
  wire             timer0_s1_reset_n;
  reg              timer0_s1_slavearbiterlockenable;
  wire             timer0_s1_slavearbiterlockenable2;
  wire             timer0_s1_unreg_firsttransfer;
  wire             timer0_s1_waits_for_read;
  wire             timer0_s1_waits_for_write;
  wire             timer0_s1_write_n;
  wire    [ 15: 0] timer0_s1_writedata;
  wire             wait_for_timer0_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~timer0_s1_end_xfer;
    end


  assign timer0_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu0_data_master_qualified_request_timer0_s1));
  //assign timer0_s1_readdata_from_sa = timer0_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign timer0_s1_readdata_from_sa = timer0_s1_readdata;

  assign cpu0_data_master_requests_timer0_s1 = ({cpu0_data_master_address_to_slave[26 : 5] , 5'b0} == 27'h401000) & (cpu0_data_master_read | cpu0_data_master_write);
  //timer0_s1_arb_share_counter set values, which is an e_mux
  assign timer0_s1_arb_share_set_values = 1;

  //timer0_s1_non_bursting_master_requests mux, which is an e_mux
  assign timer0_s1_non_bursting_master_requests = cpu0_data_master_requests_timer0_s1;

  //timer0_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign timer0_s1_any_bursting_master_saved_grant = 0;

  //timer0_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign timer0_s1_arb_share_counter_next_value = timer0_s1_firsttransfer ? (timer0_s1_arb_share_set_values - 1) : |timer0_s1_arb_share_counter ? (timer0_s1_arb_share_counter - 1) : 0;

  //timer0_s1_allgrants all slave grants, which is an e_mux
  assign timer0_s1_allgrants = |timer0_s1_grant_vector;

  //timer0_s1_end_xfer assignment, which is an e_assign
  assign timer0_s1_end_xfer = ~(timer0_s1_waits_for_read | timer0_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_timer0_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_timer0_s1 = timer0_s1_end_xfer & (~timer0_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //timer0_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign timer0_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_timer0_s1 & timer0_s1_allgrants) | (end_xfer_arb_share_counter_term_timer0_s1 & ~timer0_s1_non_bursting_master_requests);

  //timer0_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          timer0_s1_arb_share_counter <= 0;
      else if (timer0_s1_arb_counter_enable)
          timer0_s1_arb_share_counter <= timer0_s1_arb_share_counter_next_value;
    end


  //timer0_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          timer0_s1_slavearbiterlockenable <= 0;
      else if ((|timer0_s1_master_qreq_vector & end_xfer_arb_share_counter_term_timer0_s1) | (end_xfer_arb_share_counter_term_timer0_s1 & ~timer0_s1_non_bursting_master_requests))
          timer0_s1_slavearbiterlockenable <= |timer0_s1_arb_share_counter_next_value;
    end


  //cpu0/data_master timer0/s1 arbiterlock, which is an e_assign
  assign cpu0_data_master_arbiterlock = timer0_s1_slavearbiterlockenable & cpu0_data_master_continuerequest;

  //timer0_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign timer0_s1_slavearbiterlockenable2 = |timer0_s1_arb_share_counter_next_value;

  //cpu0/data_master timer0/s1 arbiterlock2, which is an e_assign
  assign cpu0_data_master_arbiterlock2 = timer0_s1_slavearbiterlockenable2 & cpu0_data_master_continuerequest;

  //timer0_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign timer0_s1_any_continuerequest = 1;

  //cpu0_data_master_continuerequest continued request, which is an e_assign
  assign cpu0_data_master_continuerequest = 1;

  assign cpu0_data_master_qualified_request_timer0_s1 = cpu0_data_master_requests_timer0_s1 & ~(((~cpu0_data_master_waitrequest) & cpu0_data_master_write));
  //timer0_s1_writedata mux, which is an e_mux
  assign timer0_s1_writedata = cpu0_data_master_writedata;

  //master is always granted when requested
  assign cpu0_data_master_granted_timer0_s1 = cpu0_data_master_qualified_request_timer0_s1;

  //cpu0/data_master saved-grant timer0/s1, which is an e_assign
  assign cpu0_data_master_saved_grant_timer0_s1 = cpu0_data_master_requests_timer0_s1;

  //allow new arb cycle for timer0/s1, which is an e_assign
  assign timer0_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign timer0_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign timer0_s1_master_qreq_vector = 1;

  //timer0_s1_reset_n assignment, which is an e_assign
  assign timer0_s1_reset_n = reset_n;

  assign timer0_s1_chipselect = cpu0_data_master_granted_timer0_s1;
  //timer0_s1_firsttransfer first transaction, which is an e_assign
  assign timer0_s1_firsttransfer = timer0_s1_begins_xfer ? timer0_s1_unreg_firsttransfer : timer0_s1_reg_firsttransfer;

  //timer0_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign timer0_s1_unreg_firsttransfer = ~(timer0_s1_slavearbiterlockenable & timer0_s1_any_continuerequest);

  //timer0_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          timer0_s1_reg_firsttransfer <= 1'b1;
      else if (timer0_s1_begins_xfer)
          timer0_s1_reg_firsttransfer <= timer0_s1_unreg_firsttransfer;
    end


  //timer0_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign timer0_s1_beginbursttransfer_internal = timer0_s1_begins_xfer;

  //~timer0_s1_write_n assignment, which is an e_mux
  assign timer0_s1_write_n = ~(cpu0_data_master_granted_timer0_s1 & cpu0_data_master_write);

  assign shifted_address_to_timer0_s1_from_cpu0_data_master = cpu0_data_master_address_to_slave;
  //timer0_s1_address mux, which is an e_mux
  assign timer0_s1_address = shifted_address_to_timer0_s1_from_cpu0_data_master >> 2;

  //d1_timer0_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_timer0_s1_end_xfer <= 1;
      else 
        d1_timer0_s1_end_xfer <= timer0_s1_end_xfer;
    end


  //timer0_s1_waits_for_read in a cycle, which is an e_mux
  assign timer0_s1_waits_for_read = timer0_s1_in_a_read_cycle & timer0_s1_begins_xfer;

  //timer0_s1_in_a_read_cycle assignment, which is an e_assign
  assign timer0_s1_in_a_read_cycle = cpu0_data_master_granted_timer0_s1 & cpu0_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = timer0_s1_in_a_read_cycle;

  //timer0_s1_waits_for_write in a cycle, which is an e_mux
  assign timer0_s1_waits_for_write = timer0_s1_in_a_write_cycle & 0;

  //timer0_s1_in_a_write_cycle assignment, which is an e_assign
  assign timer0_s1_in_a_write_cycle = cpu0_data_master_granted_timer0_s1 & cpu0_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = timer0_s1_in_a_write_cycle;

  assign wait_for_timer0_s1_counter = 0;
  //assign timer0_s1_irq_from_sa = timer0_s1_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign timer0_s1_irq_from_sa = timer0_s1_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //timer0/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module triStateBridge_avalon_slave_arbitrator (
                                                // inputs:
                                                 clk,
                                                 cpu0_data_master_address_to_slave,
                                                 cpu0_data_master_byteenable,
                                                 cpu0_data_master_dbs_address,
                                                 cpu0_data_master_dbs_write_8,
                                                 cpu0_data_master_no_byte_enables_and_last_term,
                                                 cpu0_data_master_read,
                                                 cpu0_data_master_write,
                                                 cpu0_instruction_master_address_to_slave,
                                                 cpu0_instruction_master_dbs_address,
                                                 cpu0_instruction_master_latency_counter,
                                                 cpu0_instruction_master_read,
                                                 cpu0_instruction_master_read_data_valid_sdram_s1_shift_register,
                                                 reset_n,

                                                // outputs:
                                                 address_to_the_cfi,
                                                 cfi_s1_wait_counter_eq_0,
                                                 cfi_s1_wait_counter_eq_1,
                                                 cpu0_data_master_byteenable_cfi_s1,
                                                 cpu0_data_master_granted_cfi_s1,
                                                 cpu0_data_master_qualified_request_cfi_s1,
                                                 cpu0_data_master_read_data_valid_cfi_s1,
                                                 cpu0_data_master_requests_cfi_s1,
                                                 cpu0_instruction_master_granted_cfi_s1,
                                                 cpu0_instruction_master_qualified_request_cfi_s1,
                                                 cpu0_instruction_master_read_data_valid_cfi_s1,
                                                 cpu0_instruction_master_requests_cfi_s1,
                                                 d1_triStateBridge_avalon_slave_end_xfer,
                                                 data_to_and_from_the_cfi,
                                                 incoming_data_to_and_from_the_cfi,
                                                 incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0,
                                                 read_n_to_the_cfi,
                                                 registered_cpu0_data_master_read_data_valid_cfi_s1,
                                                 select_n_to_the_cfi,
                                                 write_n_to_the_cfi
                                              )
;

  output  [ 21: 0] address_to_the_cfi;
  output           cfi_s1_wait_counter_eq_0;
  output           cfi_s1_wait_counter_eq_1;
  output           cpu0_data_master_byteenable_cfi_s1;
  output           cpu0_data_master_granted_cfi_s1;
  output           cpu0_data_master_qualified_request_cfi_s1;
  output           cpu0_data_master_read_data_valid_cfi_s1;
  output           cpu0_data_master_requests_cfi_s1;
  output           cpu0_instruction_master_granted_cfi_s1;
  output           cpu0_instruction_master_qualified_request_cfi_s1;
  output           cpu0_instruction_master_read_data_valid_cfi_s1;
  output           cpu0_instruction_master_requests_cfi_s1;
  output           d1_triStateBridge_avalon_slave_end_xfer;
  inout   [  7: 0] data_to_and_from_the_cfi;
  output  [  7: 0] incoming_data_to_and_from_the_cfi;
  output  [  7: 0] incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0;
  output           read_n_to_the_cfi;
  output           registered_cpu0_data_master_read_data_valid_cfi_s1;
  output           select_n_to_the_cfi;
  output           write_n_to_the_cfi;
  input            clk;
  input   [ 26: 0] cpu0_data_master_address_to_slave;
  input   [  3: 0] cpu0_data_master_byteenable;
  input   [  1: 0] cpu0_data_master_dbs_address;
  input   [  7: 0] cpu0_data_master_dbs_write_8;
  input            cpu0_data_master_no_byte_enables_and_last_term;
  input            cpu0_data_master_read;
  input            cpu0_data_master_write;
  input   [ 26: 0] cpu0_instruction_master_address_to_slave;
  input   [  1: 0] cpu0_instruction_master_dbs_address;
  input   [  1: 0] cpu0_instruction_master_latency_counter;
  input            cpu0_instruction_master_read;
  input            cpu0_instruction_master_read_data_valid_sdram_s1_shift_register;
  input            reset_n;

  reg     [ 21: 0] address_to_the_cfi /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_REGISTER=ON"  */;
  wire    [  4: 0] cfi_s1_counter_load_value;
  wire             cfi_s1_in_a_read_cycle;
  wire             cfi_s1_in_a_write_cycle;
  wire             cfi_s1_pretend_byte_enable;
  reg     [  4: 0] cfi_s1_wait_counter;
  wire             cfi_s1_wait_counter_eq_0;
  wire             cfi_s1_wait_counter_eq_1;
  wire             cfi_s1_waits_for_read;
  wire             cfi_s1_waits_for_write;
  wire             cfi_s1_with_write_latency;
  wire             cpu0_data_master_arbiterlock;
  wire             cpu0_data_master_arbiterlock2;
  wire             cpu0_data_master_byteenable_cfi_s1;
  wire             cpu0_data_master_byteenable_cfi_s1_segment_0;
  wire             cpu0_data_master_byteenable_cfi_s1_segment_1;
  wire             cpu0_data_master_byteenable_cfi_s1_segment_2;
  wire             cpu0_data_master_byteenable_cfi_s1_segment_3;
  wire             cpu0_data_master_continuerequest;
  wire             cpu0_data_master_granted_cfi_s1;
  wire             cpu0_data_master_qualified_request_cfi_s1;
  wire             cpu0_data_master_read_data_valid_cfi_s1;
  reg     [  1: 0] cpu0_data_master_read_data_valid_cfi_s1_shift_register;
  wire             cpu0_data_master_read_data_valid_cfi_s1_shift_register_in;
  wire             cpu0_data_master_requests_cfi_s1;
  wire             cpu0_data_master_saved_grant_cfi_s1;
  wire             cpu0_instruction_master_arbiterlock;
  wire             cpu0_instruction_master_arbiterlock2;
  wire             cpu0_instruction_master_continuerequest;
  wire             cpu0_instruction_master_granted_cfi_s1;
  wire             cpu0_instruction_master_qualified_request_cfi_s1;
  wire             cpu0_instruction_master_read_data_valid_cfi_s1;
  reg     [  1: 0] cpu0_instruction_master_read_data_valid_cfi_s1_shift_register;
  wire             cpu0_instruction_master_read_data_valid_cfi_s1_shift_register_in;
  wire             cpu0_instruction_master_requests_cfi_s1;
  wire             cpu0_instruction_master_saved_grant_cfi_s1;
  reg              d1_in_a_write_cycle /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_ENABLE_REGISTER=ON"  */;
  reg     [  7: 0] d1_outgoing_data_to_and_from_the_cfi /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_REGISTER=ON"  */;
  reg              d1_reasons_to_wait;
  reg              d1_triStateBridge_avalon_slave_end_xfer;
  wire    [  7: 0] data_to_and_from_the_cfi;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_triStateBridge_avalon_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg     [  7: 0] incoming_data_to_and_from_the_cfi /* synthesis ALTERA_ATTRIBUTE = "FAST_INPUT_REGISTER=ON"  */;
  wire             incoming_data_to_and_from_the_cfi_bit_0_is_x;
  wire             incoming_data_to_and_from_the_cfi_bit_1_is_x;
  wire             incoming_data_to_and_from_the_cfi_bit_2_is_x;
  wire             incoming_data_to_and_from_the_cfi_bit_3_is_x;
  wire             incoming_data_to_and_from_the_cfi_bit_4_is_x;
  wire             incoming_data_to_and_from_the_cfi_bit_5_is_x;
  wire             incoming_data_to_and_from_the_cfi_bit_6_is_x;
  wire             incoming_data_to_and_from_the_cfi_bit_7_is_x;
  wire    [  7: 0] incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0;
  reg              last_cycle_cpu0_data_master_granted_slave_cfi_s1;
  reg              last_cycle_cpu0_instruction_master_granted_slave_cfi_s1;
  wire    [  7: 0] outgoing_data_to_and_from_the_cfi;
  wire    [ 21: 0] p1_address_to_the_cfi;
  wire    [  1: 0] p1_cpu0_data_master_read_data_valid_cfi_s1_shift_register;
  wire    [  1: 0] p1_cpu0_instruction_master_read_data_valid_cfi_s1_shift_register;
  wire             p1_read_n_to_the_cfi;
  wire             p1_select_n_to_the_cfi;
  wire             p1_write_n_to_the_cfi;
  reg              read_n_to_the_cfi /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_REGISTER=ON"  */;
  wire             registered_cpu0_data_master_read_data_valid_cfi_s1;
  reg              select_n_to_the_cfi /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_REGISTER=ON"  */;
  wire             time_to_write;
  wire             triStateBridge_avalon_slave_allgrants;
  wire             triStateBridge_avalon_slave_allow_new_arb_cycle;
  wire             triStateBridge_avalon_slave_any_bursting_master_saved_grant;
  wire             triStateBridge_avalon_slave_any_continuerequest;
  reg     [  1: 0] triStateBridge_avalon_slave_arb_addend;
  wire             triStateBridge_avalon_slave_arb_counter_enable;
  reg     [  2: 0] triStateBridge_avalon_slave_arb_share_counter;
  wire    [  2: 0] triStateBridge_avalon_slave_arb_share_counter_next_value;
  wire    [  2: 0] triStateBridge_avalon_slave_arb_share_set_values;
  wire    [  1: 0] triStateBridge_avalon_slave_arb_winner;
  wire             triStateBridge_avalon_slave_arbitration_holdoff_internal;
  wire             triStateBridge_avalon_slave_beginbursttransfer_internal;
  wire             triStateBridge_avalon_slave_begins_xfer;
  wire    [  3: 0] triStateBridge_avalon_slave_chosen_master_double_vector;
  wire    [  1: 0] triStateBridge_avalon_slave_chosen_master_rot_left;
  wire             triStateBridge_avalon_slave_end_xfer;
  wire             triStateBridge_avalon_slave_firsttransfer;
  wire    [  1: 0] triStateBridge_avalon_slave_grant_vector;
  wire    [  1: 0] triStateBridge_avalon_slave_master_qreq_vector;
  wire             triStateBridge_avalon_slave_non_bursting_master_requests;
  wire             triStateBridge_avalon_slave_read_pending;
  reg              triStateBridge_avalon_slave_reg_firsttransfer;
  reg     [  1: 0] triStateBridge_avalon_slave_saved_chosen_master_vector;
  reg              triStateBridge_avalon_slave_slavearbiterlockenable;
  wire             triStateBridge_avalon_slave_slavearbiterlockenable2;
  wire             triStateBridge_avalon_slave_unreg_firsttransfer;
  wire             triStateBridge_avalon_slave_write_pending;
  wire             wait_for_cfi_s1_counter;
  reg              write_n_to_the_cfi /* synthesis ALTERA_ATTRIBUTE = "FAST_OUTPUT_REGISTER=ON"  */;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~triStateBridge_avalon_slave_end_xfer;
    end


  assign triStateBridge_avalon_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu0_data_master_qualified_request_cfi_s1 | cpu0_instruction_master_qualified_request_cfi_s1));
  assign cpu0_data_master_requests_cfi_s1 = ({cpu0_data_master_address_to_slave[26 : 22] , 22'b0} == 27'h0) & (cpu0_data_master_read | cpu0_data_master_write);
  //~select_n_to_the_cfi of type chipselect to ~p1_select_n_to_the_cfi, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          select_n_to_the_cfi <= ~0;
      else 
        select_n_to_the_cfi <= p1_select_n_to_the_cfi;
    end


  assign triStateBridge_avalon_slave_write_pending = 0;
  //triStateBridge/avalon_slave read pending calc, which is an e_assign
  assign triStateBridge_avalon_slave_read_pending = 0;

  //registered rdv signal_name registered_cpu0_data_master_read_data_valid_cfi_s1 assignment, which is an e_assign
  assign registered_cpu0_data_master_read_data_valid_cfi_s1 = cpu0_data_master_read_data_valid_cfi_s1_shift_register[0];

  //triStateBridge_avalon_slave_arb_share_counter set values, which is an e_mux
  assign triStateBridge_avalon_slave_arb_share_set_values = (cpu0_data_master_granted_cfi_s1)? 4 :
    (cpu0_instruction_master_granted_cfi_s1)? 4 :
    (cpu0_data_master_granted_cfi_s1)? 4 :
    (cpu0_instruction_master_granted_cfi_s1)? 4 :
    1;

  //triStateBridge_avalon_slave_non_bursting_master_requests mux, which is an e_mux
  assign triStateBridge_avalon_slave_non_bursting_master_requests = cpu0_data_master_requests_cfi_s1 |
    cpu0_instruction_master_requests_cfi_s1 |
    cpu0_data_master_requests_cfi_s1 |
    cpu0_instruction_master_requests_cfi_s1;

  //triStateBridge_avalon_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign triStateBridge_avalon_slave_any_bursting_master_saved_grant = 0;

  //triStateBridge_avalon_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign triStateBridge_avalon_slave_arb_share_counter_next_value = triStateBridge_avalon_slave_firsttransfer ? (triStateBridge_avalon_slave_arb_share_set_values - 1) : |triStateBridge_avalon_slave_arb_share_counter ? (triStateBridge_avalon_slave_arb_share_counter - 1) : 0;

  //triStateBridge_avalon_slave_allgrants all slave grants, which is an e_mux
  assign triStateBridge_avalon_slave_allgrants = (|triStateBridge_avalon_slave_grant_vector) |
    (|triStateBridge_avalon_slave_grant_vector) |
    (|triStateBridge_avalon_slave_grant_vector) |
    (|triStateBridge_avalon_slave_grant_vector);

  //triStateBridge_avalon_slave_end_xfer assignment, which is an e_assign
  assign triStateBridge_avalon_slave_end_xfer = ~(cfi_s1_waits_for_read | cfi_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_triStateBridge_avalon_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_triStateBridge_avalon_slave = triStateBridge_avalon_slave_end_xfer & (~triStateBridge_avalon_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //triStateBridge_avalon_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign triStateBridge_avalon_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_triStateBridge_avalon_slave & triStateBridge_avalon_slave_allgrants) | (end_xfer_arb_share_counter_term_triStateBridge_avalon_slave & ~triStateBridge_avalon_slave_non_bursting_master_requests);

  //triStateBridge_avalon_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          triStateBridge_avalon_slave_arb_share_counter <= 0;
      else if (triStateBridge_avalon_slave_arb_counter_enable)
          triStateBridge_avalon_slave_arb_share_counter <= triStateBridge_avalon_slave_arb_share_counter_next_value;
    end


  //triStateBridge_avalon_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          triStateBridge_avalon_slave_slavearbiterlockenable <= 0;
      else if ((|triStateBridge_avalon_slave_master_qreq_vector & end_xfer_arb_share_counter_term_triStateBridge_avalon_slave) | (end_xfer_arb_share_counter_term_triStateBridge_avalon_slave & ~triStateBridge_avalon_slave_non_bursting_master_requests))
          triStateBridge_avalon_slave_slavearbiterlockenable <= |triStateBridge_avalon_slave_arb_share_counter_next_value;
    end


  //cpu0/data_master triStateBridge/avalon_slave arbiterlock, which is an e_assign
  assign cpu0_data_master_arbiterlock = triStateBridge_avalon_slave_slavearbiterlockenable & cpu0_data_master_continuerequest;

  //triStateBridge_avalon_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign triStateBridge_avalon_slave_slavearbiterlockenable2 = |triStateBridge_avalon_slave_arb_share_counter_next_value;

  //cpu0/data_master triStateBridge/avalon_slave arbiterlock2, which is an e_assign
  assign cpu0_data_master_arbiterlock2 = triStateBridge_avalon_slave_slavearbiterlockenable2 & cpu0_data_master_continuerequest;

  //cpu0/instruction_master triStateBridge/avalon_slave arbiterlock, which is an e_assign
  assign cpu0_instruction_master_arbiterlock = triStateBridge_avalon_slave_slavearbiterlockenable & cpu0_instruction_master_continuerequest;

  //cpu0/instruction_master triStateBridge/avalon_slave arbiterlock2, which is an e_assign
  assign cpu0_instruction_master_arbiterlock2 = triStateBridge_avalon_slave_slavearbiterlockenable2 & cpu0_instruction_master_continuerequest;

  //cpu0/instruction_master granted cfi/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu0_instruction_master_granted_slave_cfi_s1 <= 0;
      else 
        last_cycle_cpu0_instruction_master_granted_slave_cfi_s1 <= cpu0_instruction_master_saved_grant_cfi_s1 ? 1 : (triStateBridge_avalon_slave_arbitration_holdoff_internal | ~cpu0_instruction_master_requests_cfi_s1) ? 0 : last_cycle_cpu0_instruction_master_granted_slave_cfi_s1;
    end


  //cpu0_instruction_master_continuerequest continued request, which is an e_mux
  assign cpu0_instruction_master_continuerequest = last_cycle_cpu0_instruction_master_granted_slave_cfi_s1 & cpu0_instruction_master_requests_cfi_s1;

  //triStateBridge_avalon_slave_any_continuerequest at least one master continues requesting, which is an e_mux
  assign triStateBridge_avalon_slave_any_continuerequest = cpu0_instruction_master_continuerequest |
    cpu0_data_master_continuerequest;

  assign cpu0_data_master_qualified_request_cfi_s1 = cpu0_data_master_requests_cfi_s1 & ~((cpu0_data_master_read & (triStateBridge_avalon_slave_write_pending | (triStateBridge_avalon_slave_read_pending) | (|cpu0_data_master_read_data_valid_cfi_s1_shift_register))) | ((triStateBridge_avalon_slave_read_pending | cpu0_data_master_no_byte_enables_and_last_term | !cpu0_data_master_byteenable_cfi_s1) & cpu0_data_master_write) | cpu0_instruction_master_arbiterlock);
  //cpu0_data_master_read_data_valid_cfi_s1_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu0_data_master_read_data_valid_cfi_s1_shift_register_in = cpu0_data_master_granted_cfi_s1 & cpu0_data_master_read & ~cfi_s1_waits_for_read & ~(|cpu0_data_master_read_data_valid_cfi_s1_shift_register);

  //shift register p1 cpu0_data_master_read_data_valid_cfi_s1_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu0_data_master_read_data_valid_cfi_s1_shift_register = {cpu0_data_master_read_data_valid_cfi_s1_shift_register, cpu0_data_master_read_data_valid_cfi_s1_shift_register_in};

  //cpu0_data_master_read_data_valid_cfi_s1_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu0_data_master_read_data_valid_cfi_s1_shift_register <= 0;
      else 
        cpu0_data_master_read_data_valid_cfi_s1_shift_register <= p1_cpu0_data_master_read_data_valid_cfi_s1_shift_register;
    end


  //local readdatavalid cpu0_data_master_read_data_valid_cfi_s1, which is an e_mux
  assign cpu0_data_master_read_data_valid_cfi_s1 = cpu0_data_master_read_data_valid_cfi_s1_shift_register[1];

  //data_to_and_from_the_cfi register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          incoming_data_to_and_from_the_cfi <= 0;
      else 
        incoming_data_to_and_from_the_cfi <= data_to_and_from_the_cfi;
    end


  //cfi_s1_with_write_latency assignment, which is an e_assign
  assign cfi_s1_with_write_latency = in_a_write_cycle & (cpu0_data_master_qualified_request_cfi_s1 | cpu0_instruction_master_qualified_request_cfi_s1);

  //time to write the data, which is an e_mux
  assign time_to_write = (cfi_s1_with_write_latency)? 1 :
    0;

  //d1_outgoing_data_to_and_from_the_cfi register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_outgoing_data_to_and_from_the_cfi <= 0;
      else 
        d1_outgoing_data_to_and_from_the_cfi <= outgoing_data_to_and_from_the_cfi;
    end


  //write cycle delayed by 1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_in_a_write_cycle <= 0;
      else 
        d1_in_a_write_cycle <= time_to_write;
    end


  //d1_outgoing_data_to_and_from_the_cfi tristate driver, which is an e_assign
  assign data_to_and_from_the_cfi = (d1_in_a_write_cycle)? d1_outgoing_data_to_and_from_the_cfi:{8{1'bz}};

  //outgoing_data_to_and_from_the_cfi mux, which is an e_mux
  assign outgoing_data_to_and_from_the_cfi = cpu0_data_master_dbs_write_8;

  assign cpu0_instruction_master_requests_cfi_s1 = (({cpu0_instruction_master_address_to_slave[26 : 22] , 22'b0} == 27'h0) & (cpu0_instruction_master_read)) & cpu0_instruction_master_read;
  //cpu0/data_master granted cfi/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu0_data_master_granted_slave_cfi_s1 <= 0;
      else 
        last_cycle_cpu0_data_master_granted_slave_cfi_s1 <= cpu0_data_master_saved_grant_cfi_s1 ? 1 : (triStateBridge_avalon_slave_arbitration_holdoff_internal | ~cpu0_data_master_requests_cfi_s1) ? 0 : last_cycle_cpu0_data_master_granted_slave_cfi_s1;
    end


  //cpu0_data_master_continuerequest continued request, which is an e_mux
  assign cpu0_data_master_continuerequest = last_cycle_cpu0_data_master_granted_slave_cfi_s1 & cpu0_data_master_requests_cfi_s1;

  assign cpu0_instruction_master_qualified_request_cfi_s1 = cpu0_instruction_master_requests_cfi_s1 & ~((cpu0_instruction_master_read & (triStateBridge_avalon_slave_write_pending | (triStateBridge_avalon_slave_read_pending) | (2 < cpu0_instruction_master_latency_counter) | (|cpu0_instruction_master_read_data_valid_sdram_s1_shift_register))) | cpu0_data_master_arbiterlock);
  //cpu0_instruction_master_read_data_valid_cfi_s1_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu0_instruction_master_read_data_valid_cfi_s1_shift_register_in = cpu0_instruction_master_granted_cfi_s1 & cpu0_instruction_master_read & ~cfi_s1_waits_for_read;

  //shift register p1 cpu0_instruction_master_read_data_valid_cfi_s1_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu0_instruction_master_read_data_valid_cfi_s1_shift_register = {cpu0_instruction_master_read_data_valid_cfi_s1_shift_register, cpu0_instruction_master_read_data_valid_cfi_s1_shift_register_in};

  //cpu0_instruction_master_read_data_valid_cfi_s1_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu0_instruction_master_read_data_valid_cfi_s1_shift_register <= 0;
      else 
        cpu0_instruction_master_read_data_valid_cfi_s1_shift_register <= p1_cpu0_instruction_master_read_data_valid_cfi_s1_shift_register;
    end


  //local readdatavalid cpu0_instruction_master_read_data_valid_cfi_s1, which is an e_mux
  assign cpu0_instruction_master_read_data_valid_cfi_s1 = cpu0_instruction_master_read_data_valid_cfi_s1_shift_register[1];

  //allow new arb cycle for triStateBridge/avalon_slave, which is an e_assign
  assign triStateBridge_avalon_slave_allow_new_arb_cycle = ~cpu0_data_master_arbiterlock & ~cpu0_instruction_master_arbiterlock;

  //cpu0/instruction_master assignment into master qualified-requests vector for cfi/s1, which is an e_assign
  assign triStateBridge_avalon_slave_master_qreq_vector[0] = cpu0_instruction_master_qualified_request_cfi_s1;

  //cpu0/instruction_master grant cfi/s1, which is an e_assign
  assign cpu0_instruction_master_granted_cfi_s1 = triStateBridge_avalon_slave_grant_vector[0];

  //cpu0/instruction_master saved-grant cfi/s1, which is an e_assign
  assign cpu0_instruction_master_saved_grant_cfi_s1 = triStateBridge_avalon_slave_arb_winner[0] && cpu0_instruction_master_requests_cfi_s1;

  //cpu0/data_master assignment into master qualified-requests vector for cfi/s1, which is an e_assign
  assign triStateBridge_avalon_slave_master_qreq_vector[1] = cpu0_data_master_qualified_request_cfi_s1;

  //cpu0/data_master grant cfi/s1, which is an e_assign
  assign cpu0_data_master_granted_cfi_s1 = triStateBridge_avalon_slave_grant_vector[1];

  //cpu0/data_master saved-grant cfi/s1, which is an e_assign
  assign cpu0_data_master_saved_grant_cfi_s1 = triStateBridge_avalon_slave_arb_winner[1] && cpu0_data_master_requests_cfi_s1;

  //triStateBridge/avalon_slave chosen-master double-vector, which is an e_assign
  assign triStateBridge_avalon_slave_chosen_master_double_vector = {triStateBridge_avalon_slave_master_qreq_vector, triStateBridge_avalon_slave_master_qreq_vector} & ({~triStateBridge_avalon_slave_master_qreq_vector, ~triStateBridge_avalon_slave_master_qreq_vector} + triStateBridge_avalon_slave_arb_addend);

  //stable onehot encoding of arb winner
  assign triStateBridge_avalon_slave_arb_winner = (triStateBridge_avalon_slave_allow_new_arb_cycle & | triStateBridge_avalon_slave_grant_vector) ? triStateBridge_avalon_slave_grant_vector : triStateBridge_avalon_slave_saved_chosen_master_vector;

  //saved triStateBridge_avalon_slave_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          triStateBridge_avalon_slave_saved_chosen_master_vector <= 0;
      else if (triStateBridge_avalon_slave_allow_new_arb_cycle)
          triStateBridge_avalon_slave_saved_chosen_master_vector <= |triStateBridge_avalon_slave_grant_vector ? triStateBridge_avalon_slave_grant_vector : triStateBridge_avalon_slave_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign triStateBridge_avalon_slave_grant_vector = {(triStateBridge_avalon_slave_chosen_master_double_vector[1] | triStateBridge_avalon_slave_chosen_master_double_vector[3]),
    (triStateBridge_avalon_slave_chosen_master_double_vector[0] | triStateBridge_avalon_slave_chosen_master_double_vector[2])};

  //triStateBridge/avalon_slave chosen master rotated left, which is an e_assign
  assign triStateBridge_avalon_slave_chosen_master_rot_left = (triStateBridge_avalon_slave_arb_winner << 1) ? (triStateBridge_avalon_slave_arb_winner << 1) : 1;

  //triStateBridge/avalon_slave's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          triStateBridge_avalon_slave_arb_addend <= 1;
      else if (|triStateBridge_avalon_slave_grant_vector)
          triStateBridge_avalon_slave_arb_addend <= triStateBridge_avalon_slave_end_xfer? triStateBridge_avalon_slave_chosen_master_rot_left : triStateBridge_avalon_slave_grant_vector;
    end


  assign p1_select_n_to_the_cfi = ~(cpu0_data_master_granted_cfi_s1 | cpu0_instruction_master_granted_cfi_s1);
  //triStateBridge_avalon_slave_firsttransfer first transaction, which is an e_assign
  assign triStateBridge_avalon_slave_firsttransfer = triStateBridge_avalon_slave_begins_xfer ? triStateBridge_avalon_slave_unreg_firsttransfer : triStateBridge_avalon_slave_reg_firsttransfer;

  //triStateBridge_avalon_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign triStateBridge_avalon_slave_unreg_firsttransfer = ~(triStateBridge_avalon_slave_slavearbiterlockenable & triStateBridge_avalon_slave_any_continuerequest);

  //triStateBridge_avalon_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          triStateBridge_avalon_slave_reg_firsttransfer <= 1'b1;
      else if (triStateBridge_avalon_slave_begins_xfer)
          triStateBridge_avalon_slave_reg_firsttransfer <= triStateBridge_avalon_slave_unreg_firsttransfer;
    end


  //triStateBridge_avalon_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign triStateBridge_avalon_slave_beginbursttransfer_internal = triStateBridge_avalon_slave_begins_xfer;

  //triStateBridge_avalon_slave_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign triStateBridge_avalon_slave_arbitration_holdoff_internal = triStateBridge_avalon_slave_begins_xfer & triStateBridge_avalon_slave_firsttransfer;

  //~read_n_to_the_cfi of type read to ~p1_read_n_to_the_cfi, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          read_n_to_the_cfi <= ~0;
      else 
        read_n_to_the_cfi <= p1_read_n_to_the_cfi;
    end


  //~p1_read_n_to_the_cfi assignment, which is an e_mux
  assign p1_read_n_to_the_cfi = ~(((cpu0_data_master_granted_cfi_s1 & cpu0_data_master_read) | (cpu0_instruction_master_granted_cfi_s1 & cpu0_instruction_master_read))& ~triStateBridge_avalon_slave_begins_xfer & (cfi_s1_wait_counter < 16));

  //~write_n_to_the_cfi of type write to ~p1_write_n_to_the_cfi, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          write_n_to_the_cfi <= ~0;
      else 
        write_n_to_the_cfi <= p1_write_n_to_the_cfi;
    end


  //~p1_write_n_to_the_cfi assignment, which is an e_mux
  assign p1_write_n_to_the_cfi = ~(((cpu0_data_master_granted_cfi_s1 & cpu0_data_master_write)) & ~triStateBridge_avalon_slave_begins_xfer & (cfi_s1_wait_counter >= 4) & (cfi_s1_wait_counter < 20) & cfi_s1_pretend_byte_enable);

  //address_to_the_cfi of type address to p1_address_to_the_cfi, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          address_to_the_cfi <= 0;
      else 
        address_to_the_cfi <= p1_address_to_the_cfi;
    end


  //p1_address_to_the_cfi mux, which is an e_mux
  assign p1_address_to_the_cfi = (cpu0_data_master_granted_cfi_s1)? ({cpu0_data_master_address_to_slave >> 2,
    cpu0_data_master_dbs_address[1 : 0]}) :
    ({cpu0_instruction_master_address_to_slave >> 2,
    cpu0_instruction_master_dbs_address[1 : 0]});

  //d1_triStateBridge_avalon_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_triStateBridge_avalon_slave_end_xfer <= 1;
      else 
        d1_triStateBridge_avalon_slave_end_xfer <= triStateBridge_avalon_slave_end_xfer;
    end


  //cfi_s1_wait_counter_eq_1 assignment, which is an e_assign
  assign cfi_s1_wait_counter_eq_1 = cfi_s1_wait_counter == 1;

  //cfi_s1_waits_for_read in a cycle, which is an e_mux
  assign cfi_s1_waits_for_read = cfi_s1_in_a_read_cycle & wait_for_cfi_s1_counter;

  //cfi_s1_in_a_read_cycle assignment, which is an e_assign
  assign cfi_s1_in_a_read_cycle = (cpu0_data_master_granted_cfi_s1 & cpu0_data_master_read) | (cpu0_instruction_master_granted_cfi_s1 & cpu0_instruction_master_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = cfi_s1_in_a_read_cycle;

  //cfi_s1_waits_for_write in a cycle, which is an e_mux
  assign cfi_s1_waits_for_write = cfi_s1_in_a_write_cycle & wait_for_cfi_s1_counter;

  //cfi_s1_in_a_write_cycle assignment, which is an e_assign
  assign cfi_s1_in_a_write_cycle = cpu0_data_master_granted_cfi_s1 & cpu0_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = cfi_s1_in_a_write_cycle;

  assign cfi_s1_wait_counter_eq_0 = cfi_s1_wait_counter == 0;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cfi_s1_wait_counter <= 0;
      else 
        cfi_s1_wait_counter <= cfi_s1_counter_load_value;
    end


  assign cfi_s1_counter_load_value = ((cfi_s1_in_a_write_cycle & triStateBridge_avalon_slave_begins_xfer))? 22 :
    ((cfi_s1_in_a_read_cycle & triStateBridge_avalon_slave_begins_xfer))? 18 :
    (~cfi_s1_wait_counter_eq_0)? cfi_s1_wait_counter - 1 :
    0;

  assign wait_for_cfi_s1_counter = triStateBridge_avalon_slave_begins_xfer | ~cfi_s1_wait_counter_eq_0;
  //cfi_s1_pretend_byte_enable byte enable port mux, which is an e_mux
  assign cfi_s1_pretend_byte_enable = (cpu0_data_master_granted_cfi_s1)? cpu0_data_master_byteenable_cfi_s1 :
    -1;

  assign {cpu0_data_master_byteenable_cfi_s1_segment_3,
cpu0_data_master_byteenable_cfi_s1_segment_2,
cpu0_data_master_byteenable_cfi_s1_segment_1,
cpu0_data_master_byteenable_cfi_s1_segment_0} = cpu0_data_master_byteenable;
  assign cpu0_data_master_byteenable_cfi_s1 = ((cpu0_data_master_dbs_address[1 : 0] == 0))? cpu0_data_master_byteenable_cfi_s1_segment_0 :
    ((cpu0_data_master_dbs_address[1 : 0] == 1))? cpu0_data_master_byteenable_cfi_s1_segment_1 :
    ((cpu0_data_master_dbs_address[1 : 0] == 2))? cpu0_data_master_byteenable_cfi_s1_segment_2 :
    cpu0_data_master_byteenable_cfi_s1_segment_3;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //incoming_data_to_and_from_the_cfi_bit_0_is_x x check, which is an e_assign_is_x
  assign incoming_data_to_and_from_the_cfi_bit_0_is_x = ^(incoming_data_to_and_from_the_cfi[0]) === 1'bx;

  //Crush incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0[0] Xs to 0, which is an e_assign
  assign incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0[0] = incoming_data_to_and_from_the_cfi_bit_0_is_x ? 1'b0 : incoming_data_to_and_from_the_cfi[0];

  //incoming_data_to_and_from_the_cfi_bit_1_is_x x check, which is an e_assign_is_x
  assign incoming_data_to_and_from_the_cfi_bit_1_is_x = ^(incoming_data_to_and_from_the_cfi[1]) === 1'bx;

  //Crush incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0[1] Xs to 0, which is an e_assign
  assign incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0[1] = incoming_data_to_and_from_the_cfi_bit_1_is_x ? 1'b0 : incoming_data_to_and_from_the_cfi[1];

  //incoming_data_to_and_from_the_cfi_bit_2_is_x x check, which is an e_assign_is_x
  assign incoming_data_to_and_from_the_cfi_bit_2_is_x = ^(incoming_data_to_and_from_the_cfi[2]) === 1'bx;

  //Crush incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0[2] Xs to 0, which is an e_assign
  assign incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0[2] = incoming_data_to_and_from_the_cfi_bit_2_is_x ? 1'b0 : incoming_data_to_and_from_the_cfi[2];

  //incoming_data_to_and_from_the_cfi_bit_3_is_x x check, which is an e_assign_is_x
  assign incoming_data_to_and_from_the_cfi_bit_3_is_x = ^(incoming_data_to_and_from_the_cfi[3]) === 1'bx;

  //Crush incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0[3] Xs to 0, which is an e_assign
  assign incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0[3] = incoming_data_to_and_from_the_cfi_bit_3_is_x ? 1'b0 : incoming_data_to_and_from_the_cfi[3];

  //incoming_data_to_and_from_the_cfi_bit_4_is_x x check, which is an e_assign_is_x
  assign incoming_data_to_and_from_the_cfi_bit_4_is_x = ^(incoming_data_to_and_from_the_cfi[4]) === 1'bx;

  //Crush incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0[4] Xs to 0, which is an e_assign
  assign incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0[4] = incoming_data_to_and_from_the_cfi_bit_4_is_x ? 1'b0 : incoming_data_to_and_from_the_cfi[4];

  //incoming_data_to_and_from_the_cfi_bit_5_is_x x check, which is an e_assign_is_x
  assign incoming_data_to_and_from_the_cfi_bit_5_is_x = ^(incoming_data_to_and_from_the_cfi[5]) === 1'bx;

  //Crush incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0[5] Xs to 0, which is an e_assign
  assign incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0[5] = incoming_data_to_and_from_the_cfi_bit_5_is_x ? 1'b0 : incoming_data_to_and_from_the_cfi[5];

  //incoming_data_to_and_from_the_cfi_bit_6_is_x x check, which is an e_assign_is_x
  assign incoming_data_to_and_from_the_cfi_bit_6_is_x = ^(incoming_data_to_and_from_the_cfi[6]) === 1'bx;

  //Crush incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0[6] Xs to 0, which is an e_assign
  assign incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0[6] = incoming_data_to_and_from_the_cfi_bit_6_is_x ? 1'b0 : incoming_data_to_and_from_the_cfi[6];

  //incoming_data_to_and_from_the_cfi_bit_7_is_x x check, which is an e_assign_is_x
  assign incoming_data_to_and_from_the_cfi_bit_7_is_x = ^(incoming_data_to_and_from_the_cfi[7]) === 1'bx;

  //Crush incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0[7] Xs to 0, which is an e_assign
  assign incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0[7] = incoming_data_to_and_from_the_cfi_bit_7_is_x ? 1'b0 : incoming_data_to_and_from_the_cfi[7];

  //cfi/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu0_data_master_granted_cfi_s1 + cpu0_instruction_master_granted_cfi_s1 > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu0_data_master_saved_grant_cfi_s1 + cpu0_instruction_master_saved_grant_cfi_s1 > 1)
        begin
          $write("%0d ns: > 1 of saved_grant signals are active simultaneously", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on
//synthesis read_comments_as_HDL on
//  
//  assign incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0 = incoming_data_to_and_from_the_cfi;
//
//synthesis read_comments_as_HDL off

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module triStateBridge_bridge_arbitrator 
;



endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module Nios2Core2_reset_clk_0_domain_synch_module (
                                                    // inputs:
                                                     clk,
                                                     data_in,
                                                     reset_n,

                                                    // outputs:
                                                     data_out
                                                  )
;

  output           data_out;
  input            clk;
  input            data_in;
  input            reset_n;

  reg              data_in_d1 /* synthesis ALTERA_ATTRIBUTE = "{-from \"*\"} CUT=ON ; PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg              data_out /* synthesis ALTERA_ATTRIBUTE = "PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_in_d1 <= 0;
      else 
        data_in_d1 <= data_in;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_out <= 0;
      else 
        data_out <= data_in_d1;
    end



endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module Nios2Core2 (
                    // 1) global signals:
                     clk_0,
                     reset_n,

                    // the_pio0
                     out_port_from_the_pio0,

                    // the_sdram
                     zs_addr_from_the_sdram,
                     zs_ba_from_the_sdram,
                     zs_cas_n_from_the_sdram,
                     zs_cke_from_the_sdram,
                     zs_cs_n_from_the_sdram,
                     zs_dq_to_and_from_the_sdram,
                     zs_dqm_from_the_sdram,
                     zs_ras_n_from_the_sdram,
                     zs_we_n_from_the_sdram,

                    // the_triStateBridge_avalon_slave
                     address_to_the_cfi,
                     data_to_and_from_the_cfi,
                     read_n_to_the_cfi,
                     select_n_to_the_cfi,
                     write_n_to_the_cfi
                  )
;

  output  [ 21: 0] address_to_the_cfi;
  inout   [  7: 0] data_to_and_from_the_cfi;
  output  [  1: 0] out_port_from_the_pio0;
  output           read_n_to_the_cfi;
  output           select_n_to_the_cfi;
  output           write_n_to_the_cfi;
  output  [ 12: 0] zs_addr_from_the_sdram;
  output  [  1: 0] zs_ba_from_the_sdram;
  output           zs_cas_n_from_the_sdram;
  output           zs_cke_from_the_sdram;
  output           zs_cs_n_from_the_sdram;
  inout   [ 15: 0] zs_dq_to_and_from_the_sdram;
  output  [  1: 0] zs_dqm_from_the_sdram;
  output           zs_ras_n_from_the_sdram;
  output           zs_we_n_from_the_sdram;
  input            clk_0;
  input            reset_n;

  wire    [ 21: 0] address_to_the_cfi;
  wire             cfi_s1_wait_counter_eq_0;
  wire             cfi_s1_wait_counter_eq_1;
  wire             clk_0_reset_n;
  wire    [ 26: 0] cpu0_data_master_address;
  wire    [ 26: 0] cpu0_data_master_address_to_slave;
  wire    [  3: 0] cpu0_data_master_byteenable;
  wire             cpu0_data_master_byteenable_cfi_s1;
  wire    [  1: 0] cpu0_data_master_byteenable_sdram_s1;
  wire    [  1: 0] cpu0_data_master_dbs_address;
  wire    [ 15: 0] cpu0_data_master_dbs_write_16;
  wire    [  7: 0] cpu0_data_master_dbs_write_8;
  wire             cpu0_data_master_debugaccess;
  wire             cpu0_data_master_granted_cfi_s1;
  wire             cpu0_data_master_granted_cpu0_jtag_debug_module;
  wire             cpu0_data_master_granted_jtag_uart_avalon_jtag_slave;
  wire             cpu0_data_master_granted_pio0_s1;
  wire             cpu0_data_master_granted_sdram_s1;
  wire             cpu0_data_master_granted_sysid_control_slave;
  wire             cpu0_data_master_granted_timer0_s1;
  wire    [ 31: 0] cpu0_data_master_irq;
  wire             cpu0_data_master_no_byte_enables_and_last_term;
  wire             cpu0_data_master_qualified_request_cfi_s1;
  wire             cpu0_data_master_qualified_request_cpu0_jtag_debug_module;
  wire             cpu0_data_master_qualified_request_jtag_uart_avalon_jtag_slave;
  wire             cpu0_data_master_qualified_request_pio0_s1;
  wire             cpu0_data_master_qualified_request_sdram_s1;
  wire             cpu0_data_master_qualified_request_sysid_control_slave;
  wire             cpu0_data_master_qualified_request_timer0_s1;
  wire             cpu0_data_master_read;
  wire             cpu0_data_master_read_data_valid_cfi_s1;
  wire             cpu0_data_master_read_data_valid_cpu0_jtag_debug_module;
  wire             cpu0_data_master_read_data_valid_jtag_uart_avalon_jtag_slave;
  wire             cpu0_data_master_read_data_valid_pio0_s1;
  wire             cpu0_data_master_read_data_valid_sdram_s1;
  wire             cpu0_data_master_read_data_valid_sdram_s1_shift_register;
  wire             cpu0_data_master_read_data_valid_sysid_control_slave;
  wire             cpu0_data_master_read_data_valid_timer0_s1;
  wire    [ 31: 0] cpu0_data_master_readdata;
  wire             cpu0_data_master_requests_cfi_s1;
  wire             cpu0_data_master_requests_cpu0_jtag_debug_module;
  wire             cpu0_data_master_requests_jtag_uart_avalon_jtag_slave;
  wire             cpu0_data_master_requests_pio0_s1;
  wire             cpu0_data_master_requests_sdram_s1;
  wire             cpu0_data_master_requests_sysid_control_slave;
  wire             cpu0_data_master_requests_timer0_s1;
  wire             cpu0_data_master_waitrequest;
  wire             cpu0_data_master_write;
  wire    [ 31: 0] cpu0_data_master_writedata;
  wire    [ 26: 0] cpu0_instruction_master_address;
  wire    [ 26: 0] cpu0_instruction_master_address_to_slave;
  wire    [  1: 0] cpu0_instruction_master_dbs_address;
  wire             cpu0_instruction_master_granted_cfi_s1;
  wire             cpu0_instruction_master_granted_cpu0_jtag_debug_module;
  wire             cpu0_instruction_master_granted_sdram_s1;
  wire    [  1: 0] cpu0_instruction_master_latency_counter;
  wire             cpu0_instruction_master_qualified_request_cfi_s1;
  wire             cpu0_instruction_master_qualified_request_cpu0_jtag_debug_module;
  wire             cpu0_instruction_master_qualified_request_sdram_s1;
  wire             cpu0_instruction_master_read;
  wire             cpu0_instruction_master_read_data_valid_cfi_s1;
  wire             cpu0_instruction_master_read_data_valid_cpu0_jtag_debug_module;
  wire             cpu0_instruction_master_read_data_valid_sdram_s1;
  wire             cpu0_instruction_master_read_data_valid_sdram_s1_shift_register;
  wire    [ 31: 0] cpu0_instruction_master_readdata;
  wire             cpu0_instruction_master_readdatavalid;
  wire             cpu0_instruction_master_requests_cfi_s1;
  wire             cpu0_instruction_master_requests_cpu0_jtag_debug_module;
  wire             cpu0_instruction_master_requests_sdram_s1;
  wire             cpu0_instruction_master_waitrequest;
  wire    [  8: 0] cpu0_jtag_debug_module_address;
  wire             cpu0_jtag_debug_module_begintransfer;
  wire    [  3: 0] cpu0_jtag_debug_module_byteenable;
  wire             cpu0_jtag_debug_module_chipselect;
  wire             cpu0_jtag_debug_module_debugaccess;
  wire    [ 31: 0] cpu0_jtag_debug_module_readdata;
  wire    [ 31: 0] cpu0_jtag_debug_module_readdata_from_sa;
  wire             cpu0_jtag_debug_module_reset_n;
  wire             cpu0_jtag_debug_module_resetrequest;
  wire             cpu0_jtag_debug_module_resetrequest_from_sa;
  wire             cpu0_jtag_debug_module_write;
  wire    [ 31: 0] cpu0_jtag_debug_module_writedata;
  wire             d1_cpu0_jtag_debug_module_end_xfer;
  wire             d1_jtag_uart_avalon_jtag_slave_end_xfer;
  wire             d1_pio0_s1_end_xfer;
  wire             d1_sdram_s1_end_xfer;
  wire             d1_sysid_control_slave_end_xfer;
  wire             d1_timer0_s1_end_xfer;
  wire             d1_triStateBridge_avalon_slave_end_xfer;
  wire    [  7: 0] data_to_and_from_the_cfi;
  wire    [  7: 0] incoming_data_to_and_from_the_cfi;
  wire    [  7: 0] incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0;
  wire             jtag_uart_avalon_jtag_slave_address;
  wire             jtag_uart_avalon_jtag_slave_chipselect;
  wire             jtag_uart_avalon_jtag_slave_dataavailable;
  wire             jtag_uart_avalon_jtag_slave_dataavailable_from_sa;
  wire             jtag_uart_avalon_jtag_slave_irq;
  wire             jtag_uart_avalon_jtag_slave_irq_from_sa;
  wire             jtag_uart_avalon_jtag_slave_read_n;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_readdata;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_readdata_from_sa;
  wire             jtag_uart_avalon_jtag_slave_readyfordata;
  wire             jtag_uart_avalon_jtag_slave_readyfordata_from_sa;
  wire             jtag_uart_avalon_jtag_slave_reset_n;
  wire             jtag_uart_avalon_jtag_slave_waitrequest;
  wire             jtag_uart_avalon_jtag_slave_waitrequest_from_sa;
  wire             jtag_uart_avalon_jtag_slave_write_n;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_writedata;
  wire    [  1: 0] out_port_from_the_pio0;
  wire    [  1: 0] pio0_s1_address;
  wire             pio0_s1_chipselect;
  wire    [ 31: 0] pio0_s1_readdata;
  wire    [ 31: 0] pio0_s1_readdata_from_sa;
  wire             pio0_s1_reset_n;
  wire             pio0_s1_write_n;
  wire    [ 31: 0] pio0_s1_writedata;
  wire             read_n_to_the_cfi;
  wire             registered_cpu0_data_master_read_data_valid_cfi_s1;
  wire             reset_n_sources;
  wire    [ 23: 0] sdram_s1_address;
  wire    [  1: 0] sdram_s1_byteenable_n;
  wire             sdram_s1_chipselect;
  wire             sdram_s1_read_n;
  wire    [ 15: 0] sdram_s1_readdata;
  wire    [ 15: 0] sdram_s1_readdata_from_sa;
  wire             sdram_s1_readdatavalid;
  wire             sdram_s1_reset_n;
  wire             sdram_s1_waitrequest;
  wire             sdram_s1_waitrequest_from_sa;
  wire             sdram_s1_write_n;
  wire    [ 15: 0] sdram_s1_writedata;
  wire             select_n_to_the_cfi;
  wire             sysid_control_slave_address;
  wire             sysid_control_slave_clock;
  wire    [ 31: 0] sysid_control_slave_readdata;
  wire    [ 31: 0] sysid_control_slave_readdata_from_sa;
  wire             sysid_control_slave_reset_n;
  wire    [  2: 0] timer0_s1_address;
  wire             timer0_s1_chipselect;
  wire             timer0_s1_irq;
  wire             timer0_s1_irq_from_sa;
  wire    [ 15: 0] timer0_s1_readdata;
  wire    [ 15: 0] timer0_s1_readdata_from_sa;
  wire             timer0_s1_reset_n;
  wire             timer0_s1_write_n;
  wire    [ 15: 0] timer0_s1_writedata;
  wire             write_n_to_the_cfi;
  wire    [ 12: 0] zs_addr_from_the_sdram;
  wire    [  1: 0] zs_ba_from_the_sdram;
  wire             zs_cas_n_from_the_sdram;
  wire             zs_cke_from_the_sdram;
  wire             zs_cs_n_from_the_sdram;
  wire    [ 15: 0] zs_dq_to_and_from_the_sdram;
  wire    [  1: 0] zs_dqm_from_the_sdram;
  wire             zs_ras_n_from_the_sdram;
  wire             zs_we_n_from_the_sdram;
  cpu0_jtag_debug_module_arbitrator the_cpu0_jtag_debug_module
    (
      .clk                                                              (clk_0),
      .cpu0_data_master_address_to_slave                                (cpu0_data_master_address_to_slave),
      .cpu0_data_master_byteenable                                      (cpu0_data_master_byteenable),
      .cpu0_data_master_debugaccess                                     (cpu0_data_master_debugaccess),
      .cpu0_data_master_granted_cpu0_jtag_debug_module                  (cpu0_data_master_granted_cpu0_jtag_debug_module),
      .cpu0_data_master_qualified_request_cpu0_jtag_debug_module        (cpu0_data_master_qualified_request_cpu0_jtag_debug_module),
      .cpu0_data_master_read                                            (cpu0_data_master_read),
      .cpu0_data_master_read_data_valid_cpu0_jtag_debug_module          (cpu0_data_master_read_data_valid_cpu0_jtag_debug_module),
      .cpu0_data_master_requests_cpu0_jtag_debug_module                 (cpu0_data_master_requests_cpu0_jtag_debug_module),
      .cpu0_data_master_waitrequest                                     (cpu0_data_master_waitrequest),
      .cpu0_data_master_write                                           (cpu0_data_master_write),
      .cpu0_data_master_writedata                                       (cpu0_data_master_writedata),
      .cpu0_instruction_master_address_to_slave                         (cpu0_instruction_master_address_to_slave),
      .cpu0_instruction_master_granted_cpu0_jtag_debug_module           (cpu0_instruction_master_granted_cpu0_jtag_debug_module),
      .cpu0_instruction_master_latency_counter                          (cpu0_instruction_master_latency_counter),
      .cpu0_instruction_master_qualified_request_cpu0_jtag_debug_module (cpu0_instruction_master_qualified_request_cpu0_jtag_debug_module),
      .cpu0_instruction_master_read                                     (cpu0_instruction_master_read),
      .cpu0_instruction_master_read_data_valid_cpu0_jtag_debug_module   (cpu0_instruction_master_read_data_valid_cpu0_jtag_debug_module),
      .cpu0_instruction_master_read_data_valid_sdram_s1_shift_register  (cpu0_instruction_master_read_data_valid_sdram_s1_shift_register),
      .cpu0_instruction_master_requests_cpu0_jtag_debug_module          (cpu0_instruction_master_requests_cpu0_jtag_debug_module),
      .cpu0_jtag_debug_module_address                                   (cpu0_jtag_debug_module_address),
      .cpu0_jtag_debug_module_begintransfer                             (cpu0_jtag_debug_module_begintransfer),
      .cpu0_jtag_debug_module_byteenable                                (cpu0_jtag_debug_module_byteenable),
      .cpu0_jtag_debug_module_chipselect                                (cpu0_jtag_debug_module_chipselect),
      .cpu0_jtag_debug_module_debugaccess                               (cpu0_jtag_debug_module_debugaccess),
      .cpu0_jtag_debug_module_readdata                                  (cpu0_jtag_debug_module_readdata),
      .cpu0_jtag_debug_module_readdata_from_sa                          (cpu0_jtag_debug_module_readdata_from_sa),
      .cpu0_jtag_debug_module_reset_n                                   (cpu0_jtag_debug_module_reset_n),
      .cpu0_jtag_debug_module_resetrequest                              (cpu0_jtag_debug_module_resetrequest),
      .cpu0_jtag_debug_module_resetrequest_from_sa                      (cpu0_jtag_debug_module_resetrequest_from_sa),
      .cpu0_jtag_debug_module_write                                     (cpu0_jtag_debug_module_write),
      .cpu0_jtag_debug_module_writedata                                 (cpu0_jtag_debug_module_writedata),
      .d1_cpu0_jtag_debug_module_end_xfer                               (d1_cpu0_jtag_debug_module_end_xfer),
      .reset_n                                                          (clk_0_reset_n)
    );

  cpu0_data_master_arbitrator the_cpu0_data_master
    (
      .cfi_s1_wait_counter_eq_0                                       (cfi_s1_wait_counter_eq_0),
      .cfi_s1_wait_counter_eq_1                                       (cfi_s1_wait_counter_eq_1),
      .clk                                                            (clk_0),
      .cpu0_data_master_address                                       (cpu0_data_master_address),
      .cpu0_data_master_address_to_slave                              (cpu0_data_master_address_to_slave),
      .cpu0_data_master_byteenable_cfi_s1                             (cpu0_data_master_byteenable_cfi_s1),
      .cpu0_data_master_byteenable_sdram_s1                           (cpu0_data_master_byteenable_sdram_s1),
      .cpu0_data_master_dbs_address                                   (cpu0_data_master_dbs_address),
      .cpu0_data_master_dbs_write_16                                  (cpu0_data_master_dbs_write_16),
      .cpu0_data_master_dbs_write_8                                   (cpu0_data_master_dbs_write_8),
      .cpu0_data_master_granted_cfi_s1                                (cpu0_data_master_granted_cfi_s1),
      .cpu0_data_master_granted_cpu0_jtag_debug_module                (cpu0_data_master_granted_cpu0_jtag_debug_module),
      .cpu0_data_master_granted_jtag_uart_avalon_jtag_slave           (cpu0_data_master_granted_jtag_uart_avalon_jtag_slave),
      .cpu0_data_master_granted_pio0_s1                               (cpu0_data_master_granted_pio0_s1),
      .cpu0_data_master_granted_sdram_s1                              (cpu0_data_master_granted_sdram_s1),
      .cpu0_data_master_granted_sysid_control_slave                   (cpu0_data_master_granted_sysid_control_slave),
      .cpu0_data_master_granted_timer0_s1                             (cpu0_data_master_granted_timer0_s1),
      .cpu0_data_master_irq                                           (cpu0_data_master_irq),
      .cpu0_data_master_no_byte_enables_and_last_term                 (cpu0_data_master_no_byte_enables_and_last_term),
      .cpu0_data_master_qualified_request_cfi_s1                      (cpu0_data_master_qualified_request_cfi_s1),
      .cpu0_data_master_qualified_request_cpu0_jtag_debug_module      (cpu0_data_master_qualified_request_cpu0_jtag_debug_module),
      .cpu0_data_master_qualified_request_jtag_uart_avalon_jtag_slave (cpu0_data_master_qualified_request_jtag_uart_avalon_jtag_slave),
      .cpu0_data_master_qualified_request_pio0_s1                     (cpu0_data_master_qualified_request_pio0_s1),
      .cpu0_data_master_qualified_request_sdram_s1                    (cpu0_data_master_qualified_request_sdram_s1),
      .cpu0_data_master_qualified_request_sysid_control_slave         (cpu0_data_master_qualified_request_sysid_control_slave),
      .cpu0_data_master_qualified_request_timer0_s1                   (cpu0_data_master_qualified_request_timer0_s1),
      .cpu0_data_master_read                                          (cpu0_data_master_read),
      .cpu0_data_master_read_data_valid_cfi_s1                        (cpu0_data_master_read_data_valid_cfi_s1),
      .cpu0_data_master_read_data_valid_cpu0_jtag_debug_module        (cpu0_data_master_read_data_valid_cpu0_jtag_debug_module),
      .cpu0_data_master_read_data_valid_jtag_uart_avalon_jtag_slave   (cpu0_data_master_read_data_valid_jtag_uart_avalon_jtag_slave),
      .cpu0_data_master_read_data_valid_pio0_s1                       (cpu0_data_master_read_data_valid_pio0_s1),
      .cpu0_data_master_read_data_valid_sdram_s1                      (cpu0_data_master_read_data_valid_sdram_s1),
      .cpu0_data_master_read_data_valid_sdram_s1_shift_register       (cpu0_data_master_read_data_valid_sdram_s1_shift_register),
      .cpu0_data_master_read_data_valid_sysid_control_slave           (cpu0_data_master_read_data_valid_sysid_control_slave),
      .cpu0_data_master_read_data_valid_timer0_s1                     (cpu0_data_master_read_data_valid_timer0_s1),
      .cpu0_data_master_readdata                                      (cpu0_data_master_readdata),
      .cpu0_data_master_requests_cfi_s1                               (cpu0_data_master_requests_cfi_s1),
      .cpu0_data_master_requests_cpu0_jtag_debug_module               (cpu0_data_master_requests_cpu0_jtag_debug_module),
      .cpu0_data_master_requests_jtag_uart_avalon_jtag_slave          (cpu0_data_master_requests_jtag_uart_avalon_jtag_slave),
      .cpu0_data_master_requests_pio0_s1                              (cpu0_data_master_requests_pio0_s1),
      .cpu0_data_master_requests_sdram_s1                             (cpu0_data_master_requests_sdram_s1),
      .cpu0_data_master_requests_sysid_control_slave                  (cpu0_data_master_requests_sysid_control_slave),
      .cpu0_data_master_requests_timer0_s1                            (cpu0_data_master_requests_timer0_s1),
      .cpu0_data_master_waitrequest                                   (cpu0_data_master_waitrequest),
      .cpu0_data_master_write                                         (cpu0_data_master_write),
      .cpu0_data_master_writedata                                     (cpu0_data_master_writedata),
      .cpu0_jtag_debug_module_readdata_from_sa                        (cpu0_jtag_debug_module_readdata_from_sa),
      .d1_cpu0_jtag_debug_module_end_xfer                             (d1_cpu0_jtag_debug_module_end_xfer),
      .d1_jtag_uart_avalon_jtag_slave_end_xfer                        (d1_jtag_uart_avalon_jtag_slave_end_xfer),
      .d1_pio0_s1_end_xfer                                            (d1_pio0_s1_end_xfer),
      .d1_sdram_s1_end_xfer                                           (d1_sdram_s1_end_xfer),
      .d1_sysid_control_slave_end_xfer                                (d1_sysid_control_slave_end_xfer),
      .d1_timer0_s1_end_xfer                                          (d1_timer0_s1_end_xfer),
      .d1_triStateBridge_avalon_slave_end_xfer                        (d1_triStateBridge_avalon_slave_end_xfer),
      .incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0       (incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0),
      .jtag_uart_avalon_jtag_slave_irq_from_sa                        (jtag_uart_avalon_jtag_slave_irq_from_sa),
      .jtag_uart_avalon_jtag_slave_readdata_from_sa                   (jtag_uart_avalon_jtag_slave_readdata_from_sa),
      .jtag_uart_avalon_jtag_slave_waitrequest_from_sa                (jtag_uart_avalon_jtag_slave_waitrequest_from_sa),
      .pio0_s1_readdata_from_sa                                       (pio0_s1_readdata_from_sa),
      .registered_cpu0_data_master_read_data_valid_cfi_s1             (registered_cpu0_data_master_read_data_valid_cfi_s1),
      .reset_n                                                        (clk_0_reset_n),
      .sdram_s1_readdata_from_sa                                      (sdram_s1_readdata_from_sa),
      .sdram_s1_waitrequest_from_sa                                   (sdram_s1_waitrequest_from_sa),
      .sysid_control_slave_readdata_from_sa                           (sysid_control_slave_readdata_from_sa),
      .timer0_s1_irq_from_sa                                          (timer0_s1_irq_from_sa),
      .timer0_s1_readdata_from_sa                                     (timer0_s1_readdata_from_sa)
    );

  cpu0_instruction_master_arbitrator the_cpu0_instruction_master
    (
      .cfi_s1_wait_counter_eq_0                                         (cfi_s1_wait_counter_eq_0),
      .cfi_s1_wait_counter_eq_1                                         (cfi_s1_wait_counter_eq_1),
      .clk                                                              (clk_0),
      .cpu0_instruction_master_address                                  (cpu0_instruction_master_address),
      .cpu0_instruction_master_address_to_slave                         (cpu0_instruction_master_address_to_slave),
      .cpu0_instruction_master_dbs_address                              (cpu0_instruction_master_dbs_address),
      .cpu0_instruction_master_granted_cfi_s1                           (cpu0_instruction_master_granted_cfi_s1),
      .cpu0_instruction_master_granted_cpu0_jtag_debug_module           (cpu0_instruction_master_granted_cpu0_jtag_debug_module),
      .cpu0_instruction_master_granted_sdram_s1                         (cpu0_instruction_master_granted_sdram_s1),
      .cpu0_instruction_master_latency_counter                          (cpu0_instruction_master_latency_counter),
      .cpu0_instruction_master_qualified_request_cfi_s1                 (cpu0_instruction_master_qualified_request_cfi_s1),
      .cpu0_instruction_master_qualified_request_cpu0_jtag_debug_module (cpu0_instruction_master_qualified_request_cpu0_jtag_debug_module),
      .cpu0_instruction_master_qualified_request_sdram_s1               (cpu0_instruction_master_qualified_request_sdram_s1),
      .cpu0_instruction_master_read                                     (cpu0_instruction_master_read),
      .cpu0_instruction_master_read_data_valid_cfi_s1                   (cpu0_instruction_master_read_data_valid_cfi_s1),
      .cpu0_instruction_master_read_data_valid_cpu0_jtag_debug_module   (cpu0_instruction_master_read_data_valid_cpu0_jtag_debug_module),
      .cpu0_instruction_master_read_data_valid_sdram_s1                 (cpu0_instruction_master_read_data_valid_sdram_s1),
      .cpu0_instruction_master_read_data_valid_sdram_s1_shift_register  (cpu0_instruction_master_read_data_valid_sdram_s1_shift_register),
      .cpu0_instruction_master_readdata                                 (cpu0_instruction_master_readdata),
      .cpu0_instruction_master_readdatavalid                            (cpu0_instruction_master_readdatavalid),
      .cpu0_instruction_master_requests_cfi_s1                          (cpu0_instruction_master_requests_cfi_s1),
      .cpu0_instruction_master_requests_cpu0_jtag_debug_module          (cpu0_instruction_master_requests_cpu0_jtag_debug_module),
      .cpu0_instruction_master_requests_sdram_s1                        (cpu0_instruction_master_requests_sdram_s1),
      .cpu0_instruction_master_waitrequest                              (cpu0_instruction_master_waitrequest),
      .cpu0_jtag_debug_module_readdata_from_sa                          (cpu0_jtag_debug_module_readdata_from_sa),
      .d1_cpu0_jtag_debug_module_end_xfer                               (d1_cpu0_jtag_debug_module_end_xfer),
      .d1_sdram_s1_end_xfer                                             (d1_sdram_s1_end_xfer),
      .d1_triStateBridge_avalon_slave_end_xfer                          (d1_triStateBridge_avalon_slave_end_xfer),
      .incoming_data_to_and_from_the_cfi                                (incoming_data_to_and_from_the_cfi),
      .reset_n                                                          (clk_0_reset_n),
      .sdram_s1_readdata_from_sa                                        (sdram_s1_readdata_from_sa),
      .sdram_s1_waitrequest_from_sa                                     (sdram_s1_waitrequest_from_sa)
    );

  cpu0 the_cpu0
    (
      .clk                                   (clk_0),
      .d_address                             (cpu0_data_master_address),
      .d_byteenable                          (cpu0_data_master_byteenable),
      .d_irq                                 (cpu0_data_master_irq),
      .d_read                                (cpu0_data_master_read),
      .d_readdata                            (cpu0_data_master_readdata),
      .d_waitrequest                         (cpu0_data_master_waitrequest),
      .d_write                               (cpu0_data_master_write),
      .d_writedata                           (cpu0_data_master_writedata),
      .i_address                             (cpu0_instruction_master_address),
      .i_read                                (cpu0_instruction_master_read),
      .i_readdata                            (cpu0_instruction_master_readdata),
      .i_readdatavalid                       (cpu0_instruction_master_readdatavalid),
      .i_waitrequest                         (cpu0_instruction_master_waitrequest),
      .jtag_debug_module_address             (cpu0_jtag_debug_module_address),
      .jtag_debug_module_begintransfer       (cpu0_jtag_debug_module_begintransfer),
      .jtag_debug_module_byteenable          (cpu0_jtag_debug_module_byteenable),
      .jtag_debug_module_debugaccess         (cpu0_jtag_debug_module_debugaccess),
      .jtag_debug_module_debugaccess_to_roms (cpu0_data_master_debugaccess),
      .jtag_debug_module_readdata            (cpu0_jtag_debug_module_readdata),
      .jtag_debug_module_resetrequest        (cpu0_jtag_debug_module_resetrequest),
      .jtag_debug_module_select              (cpu0_jtag_debug_module_chipselect),
      .jtag_debug_module_write               (cpu0_jtag_debug_module_write),
      .jtag_debug_module_writedata           (cpu0_jtag_debug_module_writedata),
      .reset_n                               (cpu0_jtag_debug_module_reset_n)
    );

  jtag_uart_avalon_jtag_slave_arbitrator the_jtag_uart_avalon_jtag_slave
    (
      .clk                                                            (clk_0),
      .cpu0_data_master_address_to_slave                              (cpu0_data_master_address_to_slave),
      .cpu0_data_master_granted_jtag_uart_avalon_jtag_slave           (cpu0_data_master_granted_jtag_uart_avalon_jtag_slave),
      .cpu0_data_master_qualified_request_jtag_uart_avalon_jtag_slave (cpu0_data_master_qualified_request_jtag_uart_avalon_jtag_slave),
      .cpu0_data_master_read                                          (cpu0_data_master_read),
      .cpu0_data_master_read_data_valid_jtag_uart_avalon_jtag_slave   (cpu0_data_master_read_data_valid_jtag_uart_avalon_jtag_slave),
      .cpu0_data_master_requests_jtag_uart_avalon_jtag_slave          (cpu0_data_master_requests_jtag_uart_avalon_jtag_slave),
      .cpu0_data_master_waitrequest                                   (cpu0_data_master_waitrequest),
      .cpu0_data_master_write                                         (cpu0_data_master_write),
      .cpu0_data_master_writedata                                     (cpu0_data_master_writedata),
      .d1_jtag_uart_avalon_jtag_slave_end_xfer                        (d1_jtag_uart_avalon_jtag_slave_end_xfer),
      .jtag_uart_avalon_jtag_slave_address                            (jtag_uart_avalon_jtag_slave_address),
      .jtag_uart_avalon_jtag_slave_chipselect                         (jtag_uart_avalon_jtag_slave_chipselect),
      .jtag_uart_avalon_jtag_slave_dataavailable                      (jtag_uart_avalon_jtag_slave_dataavailable),
      .jtag_uart_avalon_jtag_slave_dataavailable_from_sa              (jtag_uart_avalon_jtag_slave_dataavailable_from_sa),
      .jtag_uart_avalon_jtag_slave_irq                                (jtag_uart_avalon_jtag_slave_irq),
      .jtag_uart_avalon_jtag_slave_irq_from_sa                        (jtag_uart_avalon_jtag_slave_irq_from_sa),
      .jtag_uart_avalon_jtag_slave_read_n                             (jtag_uart_avalon_jtag_slave_read_n),
      .jtag_uart_avalon_jtag_slave_readdata                           (jtag_uart_avalon_jtag_slave_readdata),
      .jtag_uart_avalon_jtag_slave_readdata_from_sa                   (jtag_uart_avalon_jtag_slave_readdata_from_sa),
      .jtag_uart_avalon_jtag_slave_readyfordata                       (jtag_uart_avalon_jtag_slave_readyfordata),
      .jtag_uart_avalon_jtag_slave_readyfordata_from_sa               (jtag_uart_avalon_jtag_slave_readyfordata_from_sa),
      .jtag_uart_avalon_jtag_slave_reset_n                            (jtag_uart_avalon_jtag_slave_reset_n),
      .jtag_uart_avalon_jtag_slave_waitrequest                        (jtag_uart_avalon_jtag_slave_waitrequest),
      .jtag_uart_avalon_jtag_slave_waitrequest_from_sa                (jtag_uart_avalon_jtag_slave_waitrequest_from_sa),
      .jtag_uart_avalon_jtag_slave_write_n                            (jtag_uart_avalon_jtag_slave_write_n),
      .jtag_uart_avalon_jtag_slave_writedata                          (jtag_uart_avalon_jtag_slave_writedata),
      .reset_n                                                        (clk_0_reset_n)
    );

  jtag_uart the_jtag_uart
    (
      .av_address     (jtag_uart_avalon_jtag_slave_address),
      .av_chipselect  (jtag_uart_avalon_jtag_slave_chipselect),
      .av_irq         (jtag_uart_avalon_jtag_slave_irq),
      .av_read_n      (jtag_uart_avalon_jtag_slave_read_n),
      .av_readdata    (jtag_uart_avalon_jtag_slave_readdata),
      .av_waitrequest (jtag_uart_avalon_jtag_slave_waitrequest),
      .av_write_n     (jtag_uart_avalon_jtag_slave_write_n),
      .av_writedata   (jtag_uart_avalon_jtag_slave_writedata),
      .clk            (clk_0),
      .dataavailable  (jtag_uart_avalon_jtag_slave_dataavailable),
      .readyfordata   (jtag_uart_avalon_jtag_slave_readyfordata),
      .rst_n          (jtag_uart_avalon_jtag_slave_reset_n)
    );

  pio0_s1_arbitrator the_pio0_s1
    (
      .clk                                        (clk_0),
      .cpu0_data_master_address_to_slave          (cpu0_data_master_address_to_slave),
      .cpu0_data_master_granted_pio0_s1           (cpu0_data_master_granted_pio0_s1),
      .cpu0_data_master_qualified_request_pio0_s1 (cpu0_data_master_qualified_request_pio0_s1),
      .cpu0_data_master_read                      (cpu0_data_master_read),
      .cpu0_data_master_read_data_valid_pio0_s1   (cpu0_data_master_read_data_valid_pio0_s1),
      .cpu0_data_master_requests_pio0_s1          (cpu0_data_master_requests_pio0_s1),
      .cpu0_data_master_waitrequest               (cpu0_data_master_waitrequest),
      .cpu0_data_master_write                     (cpu0_data_master_write),
      .cpu0_data_master_writedata                 (cpu0_data_master_writedata),
      .d1_pio0_s1_end_xfer                        (d1_pio0_s1_end_xfer),
      .pio0_s1_address                            (pio0_s1_address),
      .pio0_s1_chipselect                         (pio0_s1_chipselect),
      .pio0_s1_readdata                           (pio0_s1_readdata),
      .pio0_s1_readdata_from_sa                   (pio0_s1_readdata_from_sa),
      .pio0_s1_reset_n                            (pio0_s1_reset_n),
      .pio0_s1_write_n                            (pio0_s1_write_n),
      .pio0_s1_writedata                          (pio0_s1_writedata),
      .reset_n                                    (clk_0_reset_n)
    );

  pio0 the_pio0
    (
      .address    (pio0_s1_address),
      .chipselect (pio0_s1_chipselect),
      .clk        (clk_0),
      .out_port   (out_port_from_the_pio0),
      .readdata   (pio0_s1_readdata),
      .reset_n    (pio0_s1_reset_n),
      .write_n    (pio0_s1_write_n),
      .writedata  (pio0_s1_writedata)
    );

  sdram_s1_arbitrator the_sdram_s1
    (
      .clk                                                             (clk_0),
      .cpu0_data_master_address_to_slave                               (cpu0_data_master_address_to_slave),
      .cpu0_data_master_byteenable                                     (cpu0_data_master_byteenable),
      .cpu0_data_master_byteenable_sdram_s1                            (cpu0_data_master_byteenable_sdram_s1),
      .cpu0_data_master_dbs_address                                    (cpu0_data_master_dbs_address),
      .cpu0_data_master_dbs_write_16                                   (cpu0_data_master_dbs_write_16),
      .cpu0_data_master_granted_sdram_s1                               (cpu0_data_master_granted_sdram_s1),
      .cpu0_data_master_no_byte_enables_and_last_term                  (cpu0_data_master_no_byte_enables_and_last_term),
      .cpu0_data_master_qualified_request_sdram_s1                     (cpu0_data_master_qualified_request_sdram_s1),
      .cpu0_data_master_read                                           (cpu0_data_master_read),
      .cpu0_data_master_read_data_valid_sdram_s1                       (cpu0_data_master_read_data_valid_sdram_s1),
      .cpu0_data_master_read_data_valid_sdram_s1_shift_register        (cpu0_data_master_read_data_valid_sdram_s1_shift_register),
      .cpu0_data_master_requests_sdram_s1                              (cpu0_data_master_requests_sdram_s1),
      .cpu0_data_master_waitrequest                                    (cpu0_data_master_waitrequest),
      .cpu0_data_master_write                                          (cpu0_data_master_write),
      .cpu0_instruction_master_address_to_slave                        (cpu0_instruction_master_address_to_slave),
      .cpu0_instruction_master_dbs_address                             (cpu0_instruction_master_dbs_address),
      .cpu0_instruction_master_granted_sdram_s1                        (cpu0_instruction_master_granted_sdram_s1),
      .cpu0_instruction_master_latency_counter                         (cpu0_instruction_master_latency_counter),
      .cpu0_instruction_master_qualified_request_sdram_s1              (cpu0_instruction_master_qualified_request_sdram_s1),
      .cpu0_instruction_master_read                                    (cpu0_instruction_master_read),
      .cpu0_instruction_master_read_data_valid_sdram_s1                (cpu0_instruction_master_read_data_valid_sdram_s1),
      .cpu0_instruction_master_read_data_valid_sdram_s1_shift_register (cpu0_instruction_master_read_data_valid_sdram_s1_shift_register),
      .cpu0_instruction_master_requests_sdram_s1                       (cpu0_instruction_master_requests_sdram_s1),
      .d1_sdram_s1_end_xfer                                            (d1_sdram_s1_end_xfer),
      .reset_n                                                         (clk_0_reset_n),
      .sdram_s1_address                                                (sdram_s1_address),
      .sdram_s1_byteenable_n                                           (sdram_s1_byteenable_n),
      .sdram_s1_chipselect                                             (sdram_s1_chipselect),
      .sdram_s1_read_n                                                 (sdram_s1_read_n),
      .sdram_s1_readdata                                               (sdram_s1_readdata),
      .sdram_s1_readdata_from_sa                                       (sdram_s1_readdata_from_sa),
      .sdram_s1_readdatavalid                                          (sdram_s1_readdatavalid),
      .sdram_s1_reset_n                                                (sdram_s1_reset_n),
      .sdram_s1_waitrequest                                            (sdram_s1_waitrequest),
      .sdram_s1_waitrequest_from_sa                                    (sdram_s1_waitrequest_from_sa),
      .sdram_s1_write_n                                                (sdram_s1_write_n),
      .sdram_s1_writedata                                              (sdram_s1_writedata)
    );

  sdram the_sdram
    (
      .az_addr        (sdram_s1_address),
      .az_be_n        (sdram_s1_byteenable_n),
      .az_cs          (sdram_s1_chipselect),
      .az_data        (sdram_s1_writedata),
      .az_rd_n        (sdram_s1_read_n),
      .az_wr_n        (sdram_s1_write_n),
      .clk            (clk_0),
      .reset_n        (sdram_s1_reset_n),
      .za_data        (sdram_s1_readdata),
      .za_valid       (sdram_s1_readdatavalid),
      .za_waitrequest (sdram_s1_waitrequest),
      .zs_addr        (zs_addr_from_the_sdram),
      .zs_ba          (zs_ba_from_the_sdram),
      .zs_cas_n       (zs_cas_n_from_the_sdram),
      .zs_cke         (zs_cke_from_the_sdram),
      .zs_cs_n        (zs_cs_n_from_the_sdram),
      .zs_dq          (zs_dq_to_and_from_the_sdram),
      .zs_dqm         (zs_dqm_from_the_sdram),
      .zs_ras_n       (zs_ras_n_from_the_sdram),
      .zs_we_n        (zs_we_n_from_the_sdram)
    );

  sysid_control_slave_arbitrator the_sysid_control_slave
    (
      .clk                                                    (clk_0),
      .cpu0_data_master_address_to_slave                      (cpu0_data_master_address_to_slave),
      .cpu0_data_master_granted_sysid_control_slave           (cpu0_data_master_granted_sysid_control_slave),
      .cpu0_data_master_qualified_request_sysid_control_slave (cpu0_data_master_qualified_request_sysid_control_slave),
      .cpu0_data_master_read                                  (cpu0_data_master_read),
      .cpu0_data_master_read_data_valid_sysid_control_slave   (cpu0_data_master_read_data_valid_sysid_control_slave),
      .cpu0_data_master_requests_sysid_control_slave          (cpu0_data_master_requests_sysid_control_slave),
      .cpu0_data_master_write                                 (cpu0_data_master_write),
      .d1_sysid_control_slave_end_xfer                        (d1_sysid_control_slave_end_xfer),
      .reset_n                                                (clk_0_reset_n),
      .sysid_control_slave_address                            (sysid_control_slave_address),
      .sysid_control_slave_readdata                           (sysid_control_slave_readdata),
      .sysid_control_slave_readdata_from_sa                   (sysid_control_slave_readdata_from_sa),
      .sysid_control_slave_reset_n                            (sysid_control_slave_reset_n)
    );

  sysid the_sysid
    (
      .address  (sysid_control_slave_address),
      .clock    (sysid_control_slave_clock),
      .readdata (sysid_control_slave_readdata),
      .reset_n  (sysid_control_slave_reset_n)
    );

  timer0_s1_arbitrator the_timer0_s1
    (
      .clk                                          (clk_0),
      .cpu0_data_master_address_to_slave            (cpu0_data_master_address_to_slave),
      .cpu0_data_master_granted_timer0_s1           (cpu0_data_master_granted_timer0_s1),
      .cpu0_data_master_qualified_request_timer0_s1 (cpu0_data_master_qualified_request_timer0_s1),
      .cpu0_data_master_read                        (cpu0_data_master_read),
      .cpu0_data_master_read_data_valid_timer0_s1   (cpu0_data_master_read_data_valid_timer0_s1),
      .cpu0_data_master_requests_timer0_s1          (cpu0_data_master_requests_timer0_s1),
      .cpu0_data_master_waitrequest                 (cpu0_data_master_waitrequest),
      .cpu0_data_master_write                       (cpu0_data_master_write),
      .cpu0_data_master_writedata                   (cpu0_data_master_writedata),
      .d1_timer0_s1_end_xfer                        (d1_timer0_s1_end_xfer),
      .reset_n                                      (clk_0_reset_n),
      .timer0_s1_address                            (timer0_s1_address),
      .timer0_s1_chipselect                         (timer0_s1_chipselect),
      .timer0_s1_irq                                (timer0_s1_irq),
      .timer0_s1_irq_from_sa                        (timer0_s1_irq_from_sa),
      .timer0_s1_readdata                           (timer0_s1_readdata),
      .timer0_s1_readdata_from_sa                   (timer0_s1_readdata_from_sa),
      .timer0_s1_reset_n                            (timer0_s1_reset_n),
      .timer0_s1_write_n                            (timer0_s1_write_n),
      .timer0_s1_writedata                          (timer0_s1_writedata)
    );

  timer0 the_timer0
    (
      .address    (timer0_s1_address),
      .chipselect (timer0_s1_chipselect),
      .clk        (clk_0),
      .irq        (timer0_s1_irq),
      .readdata   (timer0_s1_readdata),
      .reset_n    (timer0_s1_reset_n),
      .write_n    (timer0_s1_write_n),
      .writedata  (timer0_s1_writedata)
    );

  triStateBridge_avalon_slave_arbitrator the_triStateBridge_avalon_slave
    (
      .address_to_the_cfi                                              (address_to_the_cfi),
      .cfi_s1_wait_counter_eq_0                                        (cfi_s1_wait_counter_eq_0),
      .cfi_s1_wait_counter_eq_1                                        (cfi_s1_wait_counter_eq_1),
      .clk                                                             (clk_0),
      .cpu0_data_master_address_to_slave                               (cpu0_data_master_address_to_slave),
      .cpu0_data_master_byteenable                                     (cpu0_data_master_byteenable),
      .cpu0_data_master_byteenable_cfi_s1                              (cpu0_data_master_byteenable_cfi_s1),
      .cpu0_data_master_dbs_address                                    (cpu0_data_master_dbs_address),
      .cpu0_data_master_dbs_write_8                                    (cpu0_data_master_dbs_write_8),
      .cpu0_data_master_granted_cfi_s1                                 (cpu0_data_master_granted_cfi_s1),
      .cpu0_data_master_no_byte_enables_and_last_term                  (cpu0_data_master_no_byte_enables_and_last_term),
      .cpu0_data_master_qualified_request_cfi_s1                       (cpu0_data_master_qualified_request_cfi_s1),
      .cpu0_data_master_read                                           (cpu0_data_master_read),
      .cpu0_data_master_read_data_valid_cfi_s1                         (cpu0_data_master_read_data_valid_cfi_s1),
      .cpu0_data_master_requests_cfi_s1                                (cpu0_data_master_requests_cfi_s1),
      .cpu0_data_master_write                                          (cpu0_data_master_write),
      .cpu0_instruction_master_address_to_slave                        (cpu0_instruction_master_address_to_slave),
      .cpu0_instruction_master_dbs_address                             (cpu0_instruction_master_dbs_address),
      .cpu0_instruction_master_granted_cfi_s1                          (cpu0_instruction_master_granted_cfi_s1),
      .cpu0_instruction_master_latency_counter                         (cpu0_instruction_master_latency_counter),
      .cpu0_instruction_master_qualified_request_cfi_s1                (cpu0_instruction_master_qualified_request_cfi_s1),
      .cpu0_instruction_master_read                                    (cpu0_instruction_master_read),
      .cpu0_instruction_master_read_data_valid_cfi_s1                  (cpu0_instruction_master_read_data_valid_cfi_s1),
      .cpu0_instruction_master_read_data_valid_sdram_s1_shift_register (cpu0_instruction_master_read_data_valid_sdram_s1_shift_register),
      .cpu0_instruction_master_requests_cfi_s1                         (cpu0_instruction_master_requests_cfi_s1),
      .d1_triStateBridge_avalon_slave_end_xfer                         (d1_triStateBridge_avalon_slave_end_xfer),
      .data_to_and_from_the_cfi                                        (data_to_and_from_the_cfi),
      .incoming_data_to_and_from_the_cfi                               (incoming_data_to_and_from_the_cfi),
      .incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0        (incoming_data_to_and_from_the_cfi_with_Xs_converted_to_0),
      .read_n_to_the_cfi                                               (read_n_to_the_cfi),
      .registered_cpu0_data_master_read_data_valid_cfi_s1              (registered_cpu0_data_master_read_data_valid_cfi_s1),
      .reset_n                                                         (clk_0_reset_n),
      .select_n_to_the_cfi                                             (select_n_to_the_cfi),
      .write_n_to_the_cfi                                              (write_n_to_the_cfi)
    );

  //reset is asserted asynchronously and deasserted synchronously
  Nios2Core2_reset_clk_0_domain_synch_module Nios2Core2_reset_clk_0_domain_synch
    (
      .clk      (clk_0),
      .data_in  (1'b1),
      .data_out (clk_0_reset_n),
      .reset_n  (reset_n_sources)
    );

  //reset sources mux, which is an e_mux
  assign reset_n_sources = ~(~reset_n |
    0 |
    cpu0_jtag_debug_module_resetrequest_from_sa |
    cpu0_jtag_debug_module_resetrequest_from_sa);

  //sysid_control_slave_clock of type clock does not connect to anything so wire it to default (0)
  assign sysid_control_slave_clock = 0;


endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cfi_lane0_module (
                          // inputs:
                           data,
                           rdaddress,
                           rdclken,
                           wraddress,
                           wrclock,
                           wren,

                          // outputs:
                           q
                        )
;

  output  [  7: 0] q;
  input   [  7: 0] data;
  input   [ 21: 0] rdaddress;
  input            rdclken;
  input   [ 21: 0] wraddress;
  input            wrclock;
  input            wren;

  reg     [  7: 0] mem_array [4194303: 0];
  wire    [  7: 0] q;
  reg     [ 21: 0] read_address;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  always @(rdaddress)
    begin
      read_address = rdaddress;
    end


  // Data read is asynchronous.
  assign q = mem_array[read_address];

initial
    $readmemh("cfi.dat", mem_array);
  always @(posedge wrclock)
    begin
      // Write data
      if (wren)
          mem_array[wraddress] <= data;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on
//synthesis read_comments_as_HDL on
//  always @(rdaddress)
//    begin
//      read_address = rdaddress;
//    end
//
//
//  lpm_ram_dp lpm_ram_dp_component
//    (
//      .data (data),
//      .q (q),
//      .rdaddress (read_address),
//      .rdclken (rdclken),
//      .wraddress (wraddress),
//      .wrclock (wrclock),
//      .wren (wren)
//    );
//
//  defparam lpm_ram_dp_component.lpm_file = "cfi.mif",
//           lpm_ram_dp_component.lpm_hint = "USE_EAB=ON",
//           lpm_ram_dp_component.lpm_indata = "REGISTERED",
//           lpm_ram_dp_component.lpm_outdata = "UNREGISTERED",
//           lpm_ram_dp_component.lpm_rdaddress_control = "UNREGISTERED",
//           lpm_ram_dp_component.lpm_width = 8,
//           lpm_ram_dp_component.lpm_widthad = 22,
//           lpm_ram_dp_component.lpm_wraddress_control = "REGISTERED",
//           lpm_ram_dp_component.suppress_memory_conversion_warnings = "ON";
//
//synthesis read_comments_as_HDL off

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cfi (
             // inputs:
              address,
              read_n,
              select_n,
              write_n,

             // outputs:
              data
           )
;

  inout   [  7: 0] data;
  input   [ 21: 0] address;
  input            read_n;
  input            select_n;
  input            write_n;

  wire    [  7: 0] data;
  wire    [  7: 0] data_0;
  wire    [  7: 0] logic_vector_gasket;
  wire    [  7: 0] q_0;
  //s1, which is an e_ptf_slave

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  assign logic_vector_gasket = data;
  assign data_0 = logic_vector_gasket[7 : 0];
  //cfi_lane0, which is an e_ram
  cfi_lane0_module cfi_lane0
    (
      .data      (data_0),
      .q         (q_0),
      .rdaddress (address),
      .rdclken   (1'b1),
      .wraddress (address),
      .wrclock   (write_n),
      .wren      (~select_n)
    );

  assign data = (~select_n & ~read_n)? q_0: {8{1'bz}};

//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule


//synthesis translate_off



// <ALTERA_NOTE> CODE INSERTED BETWEEN HERE

// AND HERE WILL BE PRESERVED </ALTERA_NOTE>


// If user logic components use Altsync_Ram with convert_hex2ver.dll,
// set USE_convert_hex2ver in the user comments section above

// `ifdef USE_convert_hex2ver
// `else
// `define NO_PLI 1
// `endif

`include "d:/altera/11.0/quartus/eda/sim_lib/altera_mf.v"
`include "d:/altera/11.0/quartus/eda/sim_lib/220model.v"
`include "d:/altera/11.0/quartus/eda/sim_lib/sgate.v"
`include "pio0.v"
`include "jtag_uart.v"
`include "sysid.v"
`include "sdram.v"
`include "cpu0_test_bench.v"
`include "cpu0_mult_cell.v"
`include "cpu0_oci_test_bench.v"
`include "cpu0_jtag_debug_module_tck.v"
`include "cpu0_jtag_debug_module_sysclk.v"
`include "cpu0_jtag_debug_module_wrapper.v"
`include "cpu0.v"
`include "timer0.v"

`timescale 1ns / 1ps

module test_bench 
;


  wire    [ 21: 0] address_to_the_cfi;
  wire             clk;
  reg              clk_0;
  wire    [  7: 0] data_to_and_from_the_cfi;
  wire             jtag_uart_avalon_jtag_slave_dataavailable_from_sa;
  wire             jtag_uart_avalon_jtag_slave_readyfordata_from_sa;
  wire    [  1: 0] out_port_from_the_pio0;
  wire             read_n_to_the_cfi;
  reg              reset_n;
  wire             select_n_to_the_cfi;
  wire             sysid_control_slave_clock;
  wire             write_n_to_the_cfi;
  wire    [ 12: 0] zs_addr_from_the_sdram;
  wire    [  1: 0] zs_ba_from_the_sdram;
  wire             zs_cas_n_from_the_sdram;
  wire             zs_cke_from_the_sdram;
  wire             zs_cs_n_from_the_sdram;
  wire    [ 15: 0] zs_dq_to_and_from_the_sdram;
  wire    [  1: 0] zs_dqm_from_the_sdram;
  wire             zs_ras_n_from_the_sdram;
  wire             zs_we_n_from_the_sdram;


// <ALTERA_NOTE> CODE INSERTED BETWEEN HERE
//  add your signals and additional architecture here
// AND HERE WILL BE PRESERVED </ALTERA_NOTE>

  //Set us up the Dut
  Nios2Core2 DUT
    (
      .address_to_the_cfi          (address_to_the_cfi),
      .clk_0                       (clk_0),
      .data_to_and_from_the_cfi    (data_to_and_from_the_cfi),
      .out_port_from_the_pio0      (out_port_from_the_pio0),
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

  cfi the_cfi
    (
      .address  (address_to_the_cfi),
      .data     (data_to_and_from_the_cfi),
      .read_n   (read_n_to_the_cfi),
      .select_n (select_n_to_the_cfi),
      .write_n  (write_n_to_the_cfi)
    );

  initial
    clk_0 = 1'b0;
  always
    #5 clk_0 <= ~clk_0;
  
  initial 
    begin
      reset_n <= 0;
      #100 reset_n <= 1;
    end

endmodule


//synthesis translate_on