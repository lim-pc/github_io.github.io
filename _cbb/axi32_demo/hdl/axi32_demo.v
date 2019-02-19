
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company          : None
// Engineer         : Lim
// 
// Create Date      : 2018-12-27 16:09:12
// Design Name      : None
// Module Name      : axi32 demo
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

module axi32_demo #(
        parameter                           datawidth = 32,
        parameter                           addrwidth = 8
    )(
        input   wire                        s_axi_clk_in            ,
        input   wire                        s_axi_reset_n_in        ,

        // Write address channel
        input   wire [addrwidth-1:0]        s_axi_awaddr_in         ,
        input   wire                        s_axi_awvalid_in        ,
        output  wire                        s_axi_awready_out       ,

        // Write data channel
        input   wire [datawidth-1:0]        s_axi_wdata_in          ,
        input   wire [datawidth/8-1:0]      s_axi_wstrb_in          ,
        input   wire                        s_axi_wvalid_in         ,
        output  wire                        s_axi_wready_out        ,

        // Write response channel
        output  wire [1:0]                  s_axi_bresp_out         ,
        output  wire                        s_axi_bvalid_out        ,
        input   wire                        s_axi_bready_in         ,

        // Read address channel
        input   wire [addrwidth-1:0]        s_axi_araddr_in         ,
        input   wire                        s_axi_arvalid_in        ,
        output  wire                        s_axi_arready_out       ,

        // Read data channel
        output  wire [datawidth-1:0]        s_axi_rdata_out         ,
        output  wire [1:0]                  s_axi_rresp_out         ,
        output  wire                        s_axi_rvalid_out        ,
        input   wire                        s_axi_rready_in         ,

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
// 1.axi32 cell module.
//--------------------------------------------------------------------------------

    axi32_demo_cell #(
        .datawidth                          (datawidth              ),
        .addrwidth                          (addrwidth              )
    ) axi32_demo_cell_inst (
        .s_axi_clk_in                       (s_axi_clk_in           ),
        .s_axi_reset_n_in                   (s_axi_reset_n_in       ),

        // Write address channel
        .s_axi_awaddr_in                    (s_axi_awaddr_in        ),
        .s_axi_awvalid_in                   (s_axi_awvalid_in       ),
        .s_axi_awready_out                  (s_axi_awready_out      ),

        // Write data channel
        .s_axi_wdata_in                     (s_axi_wdata_in         ),
        .s_axi_wstrb_in                     (s_axi_wstrb_in         ),
        .s_axi_wvalid_in                    (s_axi_wvalid_in        ),
        .s_axi_wready_out                   (s_axi_wready_out       ),

        // Write response channel
        .s_axi_bresp_out                    (s_axi_bresp_out        ),
        .s_axi_bvalid_out                   (s_axi_bvalid_out       ),
        .s_axi_bready_in                    (s_axi_bready_in        ),

        // Read address channel
        .s_axi_araddr_in                    (s_axi_araddr_in        ),
        .s_axi_arvalid_in                   (s_axi_arvalid_in       ),
        .s_axi_arready_out                  (s_axi_arready_out      ),

        // Read data channel
        .s_axi_rdata_out                    (s_axi_rdata_out        ),
        .s_axi_rresp_out                    (s_axi_rresp_out        ),
        .s_axi_rvalid_out                   (s_axi_rvalid_out       ),
        .s_axi_rready_in                    (s_axi_rready_in        ),

        // Control interface
        .control_0_out                      (control_0_out          ),
        .control_1_out                      (control_1_out          ),

        // Status interface
        .status_0_in                        (status_0_in            ),
        .status_1_in                        (status_1_in            )
    );

endmodule
