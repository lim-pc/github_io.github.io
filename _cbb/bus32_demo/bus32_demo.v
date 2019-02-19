
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company          : None
// Engineer         : Lim
// 
// Create Date      : 2018-12-27 16:09:12
// Design Name      : None
// Module Name      : bus32 demo
// Project Name     : None
// Target Devices   : None
// Tool Versions    : Vivado 2018.2
//                    Sublime Text 3.1.1
// Description      : 
// 
// Dependencies     : 
// 
// Revision         : 1.0.0
//                    Project Created.      -Lim
// 
//////////////////////////////////////////////////////////////////////////////////

module bus32_demo #(
        parameter                           datawidth = 32          ,
        parameter                           addrwidth = 8
    )(
        input   wire                        clock_in                ,
        input   wire                        reset_in                ,

        input   wire [31:0]                 epc_addr_in             ,
        output  wire [31:0]                 epc_data_out            ,
        input   wire [31:0]                 epc_data_in             ,
        input   wire [3:0]                  epc_be_in               ,
        input   wire                        epc_cs_n_in             ,
        input   wire                        epc_wr_n_in             ,
        input   wire                        epc_rd_n_in             ,
        output  wire                        epc_rdy_out             ,

        // Control interface
        output  wire                        control_0_out           ,
        output  wire                        control_1_out           ,

        // Status interface
        input   wire                        status_0_in             ,
        input   wire                        status_1_in
    );

//////////////////////////////////////////////////////////////////////////////////
//                                 parameter
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
//                                wire and reg
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
//                                   assign
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
//                                    code
//////////////////////////////////////////////////////////////////////////////////

//--------------------------------------------------------------------------------
// 1.bus32 cell module.
//--------------------------------------------------------------------------------

    bus32_demo_cell #(
        .datawidth                          (datawidth              ),
        .addrwidth                          (addrwidth              )
    ) bus32_demo_cell_inst (
        .clock_in                           (clock_in               ),
        .reset_in                           (reset_in               ),

        // epc interface
        .epc_addr_in                        (epc_addr_in            ),
        .epc_data_out                       (epc_data_out           ),
        .epc_data_in                        (epc_data_in            ),
        .epc_be_in                          (epc_be_in              ),
        .epc_cs_n_in                        (epc_cs_n_in            ),
        .epc_wr_n_in                        (epc_wr_n_in            ),
        .epc_rd_n_in                        (epc_rd_n_in            ),
        .epc_rdy_out                        (epc_rdy_out            ),

        // Control interface
        .control_0_out                      (control_0_out          ),
        .control_1_out                      (control_1_out          ),

        // Status interface
        .status_0_in                        (status_0_in            ),
        .status_1_in                        (status_1_in            )
    );

endmodule
