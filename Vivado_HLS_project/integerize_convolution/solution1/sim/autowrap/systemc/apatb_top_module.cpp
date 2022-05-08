// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#define AP_INT_MAX_W 32678

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "output_r"
#define AUTOTB_TVOUT_output_r  "../tv/cdatafile/c.top_module.autotvout_output_r.dat"
#define AUTOTB_TVIN_output_r  "../tv/cdatafile/c.top_module.autotvin_output_r.dat"
// wrapc file define: "input_r"
#define AUTOTB_TVIN_input_r  "../tv/cdatafile/c.top_module.autotvin_input_r.dat"
// wrapc file define: "kernel_V"
#define AUTOTB_TVIN_kernel_V  "../tv/cdatafile/c.top_module.autotvin_kernel_V.dat"
// wrapc file define: "alpha_kernel"
#define AUTOTB_TVIN_alpha_kernel  "../tv/cdatafile/c.top_module.autotvin_alpha_kernel.dat"
// wrapc file define: "ap_return"
#define AUTOTB_TVOUT_ap_return  "../tv/cdatafile/c.top_module.autotvout_ap_return.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "output_r"
#define AUTOTB_TVOUT_PC_output_r  "../tv/rtldatafile/rtl.top_module.autotvout_output_r.dat"
// tvout file define: "ap_return"
#define AUTOTB_TVOUT_PC_ap_return  "../tv/rtldatafile/rtl.top_module.autotvout_ap_return.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			output_r_depth = 0;
			input_r_depth = 0;
			kernel_V_depth = 0;
			alpha_kernel_depth = 0;
			ap_return_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{output_r " << output_r_depth << "}\n";
			total_list << "{input_r " << input_r_depth << "}\n";
			total_list << "{kernel_V " << kernel_V_depth << "}\n";
			total_list << "{alpha_kernel " << alpha_kernel_depth << "}\n";
			total_list << "{ap_return " << ap_return_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int output_r_depth;
		int input_r_depth;
		int kernel_V_depth;
		int alpha_kernel_depth;
		int ap_return_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern int top_module (
unsigned char (&output)[508][508],
unsigned char (&input)[512][512],
ap_int<4> (&kernel)[5][5],
float alpha_kernel);

int AESL_WRAP_top_module (
unsigned char (&output)[508][508],
unsigned char (&input)[512][512],
ap_int<4> (&kernel)[5][5],
float alpha_kernel)
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;

		int AESL_return;

		// output port post check: "output_r"
		aesl_fh.read(AUTOTB_TVOUT_PC_output_r, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_output_r, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_output_r, AESL_token); // data

			sc_bv<8> *output_r_pc_buffer = new sc_bv<8>[258064];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_r', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_r', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					output_r_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_output_r, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_output_r))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: output_r
				{
					// bitslice(7, 0)
					// {
						// celement: output(7, 0)
						// {
							sc_lv<8>* output_lv0_0_507_1_lv1_0_507_1 = new sc_lv<8>[258064];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: output(7, 0)
						{
							// carray: (0) => (507) @ (1)
							for (int i_0 = 0; i_0 <= 507; i_0 += 1)
							{
								// carray: (0) => (507) @ (1)
								for (int i_1 = 0; i_1 <= 507; i_1 += 1)
								{
									if (&(output[0][0]) != NULL) // check the null address if the c port is array or others
									{
										output_lv0_0_507_1_lv1_0_507_1[hls_map_index].range(7, 0) = sc_bv<8>(output_r_pc_buffer[hls_map_index].range(7, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: output(7, 0)
						{
							// carray: (0) => (507) @ (1)
							for (int i_0 = 0; i_0 <= 507; i_0 += 1)
							{
								// carray: (0) => (507) @ (1)
								for (int i_1 = 0; i_1 <= 507; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : output[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : output[0][0]
									// output_left_conversion : output[i_0][i_1]
									// output_type_conversion : (output_lv0_0_507_1_lv1_0_507_1[hls_map_index]).to_uint64()
									if (&(output[0][0]) != NULL) // check the null address if the c port is array or others
									{
										output[i_0][i_1] = (output_lv0_0_507_1_lv1_0_507_1[hls_map_index]).to_uint64();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] output_r_pc_buffer;
		}

		// output port post check: "ap_return"
		aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // data

			sc_bv<32> ap_return_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ap_return', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ap_return', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					ap_return_pc_buffer = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_ap_return))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: ap_return
				{
					// bitslice(31, 0)
					// {
						// celement: return(31, 0)
						// {
							sc_lv<32> return_lv0_0_1_0;
						// }
					// }

					// bitslice(31, 0)
					{
						// celement: return(31, 0)
						{
							// carray: (0) => (1) @ (0)
							{
								if (&(AESL_return) != NULL) // check the null address if the c port is array or others
								{
									return_lv0_0_1_0.range(31, 0) = sc_bv<32>(ap_return_pc_buffer.range(31, 0));
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						// celement: return(31, 0)
						{
							// carray: (0) => (1) @ (0)
							{
								// sub                    : 
								// ori_name               : AESL_return
								// sub_1st_elem           : 
								// ori_name_1st_elem      : AESL_return
								// output_left_conversion : AESL_return
								// output_type_conversion : (return_lv0_0_1_0).to_uint64()
								if (&(AESL_return) != NULL) // check the null address if the c port is array or others
								{
									AESL_return = (return_lv0_0_1_0).to_uint64();
								}
							}
						}
					}
				}
			}
		}

		AESL_transaction_pc++;

		return AESL_return;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "output_r"
		char* tvin_output_r = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_output_r);
		char* tvout_output_r = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_output_r);

		// "input_r"
		char* tvin_input_r = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_r);

		// "kernel_V"
		char* tvin_kernel_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_kernel_V);

		// "alpha_kernel"
		char* tvin_alpha_kernel = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_alpha_kernel);

		// "ap_return"
		char* tvout_ap_return = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_ap_return);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_output_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_output_r, tvin_output_r);

		sc_bv<8>* output_r_tvin_wrapc_buffer = new sc_bv<8>[258064];

		// RTL Name: output_r
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: output(7, 0)
				{
					// carray: (0) => (507) @ (1)
					for (int i_0 = 0; i_0 <= 507; i_0 += 1)
					{
						// carray: (0) => (507) @ (1)
						for (int i_1 = 0; i_1 <= 507; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : output[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : output[0][0]
							// regulate_c_name       : output
							// input_type_conversion : output[i_0][i_1]
							if (&(output[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<8> output_tmp_mem;
								output_tmp_mem = output[i_0][i_1];
								output_r_tvin_wrapc_buffer[hls_map_index].range(7, 0) = output_tmp_mem.range(7, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 258064; i++)
		{
			sprintf(tvin_output_r, "%s\n", (output_r_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_output_r, tvin_output_r);
		}

		tcl_file.set_num(258064, &tcl_file.output_r_depth);
		sprintf(tvin_output_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_output_r, tvin_output_r);

		// release memory allocation
		delete [] output_r_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_input_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_r, tvin_input_r);

		sc_bv<8>* input_r_tvin_wrapc_buffer = new sc_bv<8>[262144];

		// RTL Name: input_r
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: input(7, 0)
				{
					// carray: (0) => (511) @ (1)
					for (int i_0 = 0; i_0 <= 511; i_0 += 1)
					{
						// carray: (0) => (511) @ (1)
						for (int i_1 = 0; i_1 <= 511; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : input[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : input[0][0]
							// regulate_c_name       : input
							// input_type_conversion : input[i_0][i_1]
							if (&(input[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<8> input_tmp_mem;
								input_tmp_mem = input[i_0][i_1];
								input_r_tvin_wrapc_buffer[hls_map_index].range(7, 0) = input_tmp_mem.range(7, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 262144; i++)
		{
			sprintf(tvin_input_r, "%s\n", (input_r_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_r, tvin_input_r);
		}

		tcl_file.set_num(262144, &tcl_file.input_r_depth);
		sprintf(tvin_input_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_r, tvin_input_r);

		// release memory allocation
		delete [] input_r_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_kernel_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_kernel_V, tvin_kernel_V);

		sc_bv<4>* kernel_V_tvin_wrapc_buffer = new sc_bv<4>[25];

		// RTL Name: kernel_V
		{
			// bitslice(3, 0)
			{
				int hls_map_index = 0;
				// celement: kernel.V(3, 0)
				{
					// carray: (0) => (4) @ (1)
					for (int i_0 = 0; i_0 <= 4; i_0 += 1)
					{
						// carray: (0) => (4) @ (1)
						for (int i_1 = 0; i_1 <= 4; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : kernel[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : kernel[0][0]
							// regulate_c_name       : kernel_V
							// input_type_conversion : (kernel[i_0][i_1]).to_string(2).c_str()
							if (&(kernel[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<4> kernel_V_tmp_mem;
								kernel_V_tmp_mem = (kernel[i_0][i_1]).to_string(2).c_str();
								kernel_V_tvin_wrapc_buffer[hls_map_index].range(3, 0) = kernel_V_tmp_mem.range(3, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 25; i++)
		{
			sprintf(tvin_kernel_V, "%s\n", (kernel_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_kernel_V, tvin_kernel_V);
		}

		tcl_file.set_num(25, &tcl_file.kernel_V_depth);
		sprintf(tvin_kernel_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_kernel_V, tvin_kernel_V);

		// release memory allocation
		delete [] kernel_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_alpha_kernel, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_alpha_kernel, tvin_alpha_kernel);

		sc_bv<32> alpha_kernel_tvin_wrapc_buffer;

		// RTL Name: alpha_kernel
		{
			// bitslice(31, 0)
			{
				// celement: alpha_kernel(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : alpha_kernel
						// sub_1st_elem          : 
						// ori_name_1st_elem     : alpha_kernel
						// regulate_c_name       : alpha_kernel
						// input_type_conversion : *(int*)&alpha_kernel
						if (&(alpha_kernel) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> alpha_kernel_tmp_mem;
							alpha_kernel_tmp_mem = *(int*)&alpha_kernel;
							alpha_kernel_tvin_wrapc_buffer.range(31, 0) = alpha_kernel_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_alpha_kernel, "%s\n", (alpha_kernel_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_alpha_kernel, tvin_alpha_kernel);
		}

		tcl_file.set_num(1, &tcl_file.alpha_kernel_depth);
		sprintf(tvin_alpha_kernel, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_alpha_kernel, tvin_alpha_kernel);

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		int AESL_return = top_module(output, input, kernel, alpha_kernel);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_output_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_output_r, tvout_output_r);

		sc_bv<8>* output_r_tvout_wrapc_buffer = new sc_bv<8>[258064];

		// RTL Name: output_r
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: output(7, 0)
				{
					// carray: (0) => (507) @ (1)
					for (int i_0 = 0; i_0 <= 507; i_0 += 1)
					{
						// carray: (0) => (507) @ (1)
						for (int i_1 = 0; i_1 <= 507; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : output[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : output[0][0]
							// regulate_c_name       : output
							// input_type_conversion : output[i_0][i_1]
							if (&(output[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<8> output_tmp_mem;
								output_tmp_mem = output[i_0][i_1];
								output_r_tvout_wrapc_buffer[hls_map_index].range(7, 0) = output_tmp_mem.range(7, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 258064; i++)
		{
			sprintf(tvout_output_r, "%s\n", (output_r_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_output_r, tvout_output_r);
		}

		tcl_file.set_num(258064, &tcl_file.output_r_depth);
		sprintf(tvout_output_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_output_r, tvout_output_r);

		// release memory allocation
		delete [] output_r_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_ap_return, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

		sc_bv<32> ap_return_tvout_wrapc_buffer;

		// RTL Name: ap_return
		{
			// bitslice(31, 0)
			{
				// celement: return(31, 0)
				{
					// carray: (0) => (1) @ (0)
					{
						// sub                   : 
						// ori_name              : AESL_return
						// sub_1st_elem          : 
						// ori_name_1st_elem     : AESL_return
						// regulate_c_name       : return
						// input_type_conversion : AESL_return
						if (&(AESL_return) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> return_tmp_mem;
							return_tmp_mem = AESL_return;
							ap_return_tvout_wrapc_buffer.range(31, 0) = return_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_ap_return, "%s\n", (ap_return_tvout_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);
		}

		tcl_file.set_num(1, &tcl_file.ap_return_depth);
		sprintf(tvout_ap_return, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "output_r"
		delete [] tvout_output_r;
		delete [] tvin_output_r;
		// release memory allocation: "input_r"
		delete [] tvin_input_r;
		// release memory allocation: "kernel_V"
		delete [] tvin_kernel_V;
		// release memory allocation: "alpha_kernel"
		delete [] tvin_alpha_kernel;
		// release memory allocation: "ap_return"
		delete [] tvout_ap_return;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);

		return AESL_return;
	}
}

