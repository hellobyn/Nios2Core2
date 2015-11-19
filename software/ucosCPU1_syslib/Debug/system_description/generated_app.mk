# generated_app.mk
#
# Machine generated for a CPU named "cpu1" as defined in:
# e:\MyProject\My_project\Altera\Q11MultiCore\software\ucosCPU1_syslib\..\..\Nios2Core2.ptf
#
# Generated: 2015-11-18 22:05:52.458

# DO NOT MODIFY THIS FILE
#
#   Changing this file will have subtle consequences
#   which will almost certainly lead to a nonfunctioning
#   system. If you do modify this file, be aware that your
#   changes will be overwritten and lost when this file
#   is generated again.
#
# DO NOT MODIFY THIS FILE

# assuming the Quartus project directory is the same as the PTF directory
QUARTUS_PROJECT_DIR = E:/MyProject/My_project/Altera/Q11MultiCore

# the simulation directory is a subdirectory of the PTF directory
SIMDIR = $(QUARTUS_PROJECT_DIR)/Nios2Core2_sim

DBL_QUOTE := "


# macros defined by/for cfi
CFI_FLASHTARGET_ALT_SIM_PREFIX = $(CFI_FLASHTARGET_TMP1:0=)
CFI_FLASHTARGET_TMP1 = $(ALT_SIM_OPTIMIZE:1=RUN_ON_HDL_SIMULATOR_ONLY_)
BOOT_COPIER = boot_loader_cfi.srec
CPU_CLASS = altera_nios2
CPU_RESET_ADDRESS = 0x200000


all: delete_placeholder_warning flashfiles sim

delete_placeholder_warning: do_delete_placeholder_warning
.PHONY: delete_placeholder_warning

flashfiles: $(CFI_FLASHTARGET_ALT_SIM_PREFIX)cfi.flash
.PHONY: flashfiles

sim: $(SIMDIR)/dummy_file
.PHONY: sim

verifysysid: dummy_verifysysid_file
.PHONY: verifysysid

do_delete_placeholder_warning:
	rm -f $(SIMDIR)/contents_file_warning.txt
.PHONY: do_delete_placeholder_warning

$(CFI_FLASHTARGET_ALT_SIM_PREFIX)cfi.flash: $(ELF)
	@echo Post-processing to create $(notdir $@)
	elf2flash --input=$(ELF) --flash= --boot=$(DBL_QUOTE)$(shell $(DBL_QUOTE)$(QUARTUS_ROOTDIR)/sopc_builder/bin/find_sopc_component_dir$(DBL_QUOTE) $(CPU_CLASS) $(QUARTUS_PROJECT_DIR))/$(BOOT_COPIER)$(DBL_QUOTE) --outfile=$(CFI_FLASHTARGET_ALT_SIM_PREFIX)cfi.flash --sim_optimize=$(ALT_SIM_OPTIMIZE) --base=0x0 --end=0x3FFFFF --reset=$(CPU_RESET_ADDRESS)

$(SIMDIR)/dummy_file: $(ELF)
	if [ ! -d $(SIMDIR) ]; then mkdir $(SIMDIR) ; fi
	@echo Hardware simulation is not enabled for the target SOPC Builder system. Skipping creation of hardware simulation model contents and simulation symbol files. \(Note: This does not affect the instruction set simulator.\)
	touch $(SIMDIR)/dummy_file

dummy_verifysysid_file:
	nios2-download $(JTAG_CABLE)                                --sidp=0x00401030 --id=11 --timestamp=1447854940
.PHONY: dummy_verifysysid_file


generated_app_clean:
	$(RM) $(CFI_FLASHTARGET_ALT_SIM_PREFIX)cfi.flash
	$(RM) $(SIMDIR)/dummy_file
.PHONY: generated_app_clean