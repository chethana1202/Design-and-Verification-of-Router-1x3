#Makefile for UVM Testbench - Lab 10

# SIMULATOR = Questa for Mentor's Questasim
# SIMULATOR = VCS for Synopsys's VCS

SIMULATOR = VCS

FSDB_PATH=/home/cad/eda/SYNOPSYS/VERDI_2022/verdi/T-2022.06-SP1/share/PLI/VCS/LINUX64


RTL= ../rtl/*
work= work #library name
SVTB1= ../tb/top.sv
INC = +incdir+../tb +incdir+../test +incdir+../src_agnt_top +incdir+../dest_agnt_top
SVTB2 = ../test/router_pkg.sv
VSIMOPT= -vopt -voptargs=+acc 
VSIMCOV= -coverage -sva 
VSIMBATCH1= -c -do  " log -r /* ;coverage save -onexit mem_cov1;run -all; exit"
VSIMBATCH2= -c -do  " log -r /* ;coverage save -onexit mem_cov2;run -all; exit"
VSIMBATCH3= -c -do  " log -r /* ;coverage save -onexit mem_cov3;run -all; exit"
VSIMBATCH4= -c -do  " log -r /* ;coverage save -onexit mem_cov4;run -all; exit"
VSIMBATCH5= -c -do  " log -r /* ;coverage save -onexit mem_cov5;run -all; exit"
VSIMBATCH6= -c -do  " log -r /* ;coverage save -onexit mem_cov6;run -all; exit"
VSIMBATCH7= -c -do  " log -r /* ;coverage save -onexit mem_cov7;run -all; exit"

help:
	@echo =============================================================================================================
	@echo "! USAGE   	--  make target                  														!"
	@echo "! clean   	=>  clean the earlier log and intermediate files.  										!"
	@echo "! sv_cmp    	=>  Create library and compile the code.           										!"
	@echo "! run_test	=>  clean, compile & run the simulation for small_sequence_test in batch mode.			!" 
	@echo "! run_test1	=>  clean, compile & run the simulation for medium_sequence_test in batch mode.			!" 
	@echo "! run_test2	=>  clean, compile & run the simulation for large_sequence_test in batch mode.			!"
	@echo "! run_test3  =>  clean, compile and run the simulation for addr0_test in batch mode					!"
	@echo "! run_test4  =>  clean, compile and run the simulation for addr1_test in batch mode				!"
	@echo "! run_test5  =>  clean, compile and run the simulation for soft_reset_test in batch mode				 	!"
	@echo "! run_test6  =>  clean, compile and run the simulation for error_test in batch mode				 	!"
	@echo "! regress    =>  clean, compile and run all testcases in batch mode.		    						!"
	@echo "! cov        =>  To open merged code coverage report in html format.										!"
	@echo ====================================================================================================================

clean : clean_$(SIMULATOR)
sv_cmp : sv_cmp_$(SIMULATOR)
run_test : run_test_$(SIMULATOR)
run_test1 : run_test1_$(SIMULATOR)
run_test2 : run_test2_$(SIMULATOR)
run_test3 : run_test3_$(SIMULATOR)
run_test4 : run_test4_$(SIMULATOR)
run_test5 : run_test5_$(SIMULATOR)
run_test6 : run_test6_$(SIMULATOR)	
regress : regress_$(SIMULATOR)
cov : cov_$(SIMULATOR)

# ----------------------------- Start of Definitions for Synopsys's VCS Specific Targets -------------------------------#

sv_cmp_VCS:
	vcs -l vcs.log -timescale=1ns/1ps -cm line+tgl+fsm+branch+cond -sverilog -ntb_opts uvm -debug_access+all -full64 -kdb -uvmDebug -P  $(FSDB_PATH)/novas.tab $(FSDB_PATH)/pli.a $(RTL) $(INC) $(SVTB2) $(SVTB1)

run_test_VCS:	clean  sv_cmp_VCS
	./simv -a vcs.log +fsdbfile+wave1.fsdb +ntb_random_seed_automatic +UVM_TESTNAME=small_sequence_test -cm line+tgl+fsm+branch+cond
	
run_test1_VCS:	
	./simv -a vcs.log +fsdbfile+wave2.fsdb +ntb_random_seed_automatic +UVM_TESTNAME=medium_sequence_test -cm line+tgl+fsm+branch+cond
	
run_test2_VCS:	
	./simv -a vcs.log +fsdbfile+wave3.fsdb +ntb_random_seed_automatic +UVM_TESTNAME=large_sequence_test -cm line+tgl+fsm+branch+cond
	
run_test3_VCS:
	./simv -a vcs.log +fsdbfile+wave4.fsdb +ntb_random_seed_automatic +UVM_TESTNAME=addr0_test -cm line+tgl+fsm+branch+cond
	
run_test4_VCS:
	./simv -a vcs.log +fsdbfile+wave5.fsdb +ntb_random_seed_automatic +UVM_TESTNAME=addr1_test -cm line+tgl+fsm+branch+cond
	
run_test5_VCS:
	./simv -a vcs.log +fsdbfile+wave6.fsdb +ntb_random_seed_automatic +UVM_TESTNAME=soft_reset_test -cm line+tgl+fsm+branch+cond
	
run_test6_VCS:
	./simv -a vcs.log +fsdbfile+wave7.fsdb +ntb_random_seed_automatic +UVM_TESTNAME=error_test -cm line+tgl+fsm+branch+cond
	

regress_VCS: clean_VCS sv_cmp_VCS run_test_VCS run_test1_VCS run_test2_VCS run_test3_VCS run_test4_VCS run_test5_VCS run_test6 report_VCS

cov_VCS:
	#verdi -cov -covdir merged_dir.vdb
	verdi -cov -covdir simv.vdb
clean_VCS:
	rm -rf simv* csrc* *.tmp *.vpd *.vdb *.key *.log *hdrs.h urgReport* *.fsdb novas* verdi*
	clear

# ----------------------------- END of Definitions for Synopsys's VCS Specific Targets -------------------------------#
