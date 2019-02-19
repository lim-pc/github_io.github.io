
//////////////////////////////////////////////////////////////////////////////////
// Company          : None
// Engineer         : Lim
// 
// Create Date      : 2019-2-18 09:49:54
// Design Name      : None
// Module Name      : axi32 lite simlate functions
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

module axi_operate(
        parameter   datawidth = 32,
        parameter   addrwidth = 32
    )(
        // for AXI read address channel interface
        output  wire [31:0]             m_axi_araddr_out        ,
        output  wire [1:0]              m_axi_arburst_out       ,
        output  wire [3:0]              m_axi_arcache_out       ,
        output  wire [11:0]             m_axi_arid_out          ,
        output  wire [7:0]              m_axi_arlen_out         ,
        output  wire                    m_axi_arlock_out        ,
        output  wire [2:0]              m_axi_arprot_out        ,
        output  wire [3:0]              m_axi_arqos_out         ,
        input   wire                    m_axi_arready_in        ,
        output  wire [3:0]              m_axi_arregion_out      ,
        output  wire [2:0]              m_axi_arsize_out        ,
        output  wire                    m_axi_arvalid_out       ,

        // for AXI write address channel interface
        output  wire [31:0]             m_axi_awaddr_out        ,
        output  wire [1:0]              m_axi_awburst_out       ,
        output  wire [3:0]              m_axi_awcache_out       ,
        output  wire [11:0]             m_axi_awid_out          ,
        output  wire [7:0]              m_axi_awlen_out         ,
        output  wire                    m_axi_awlock_out        ,
        output  wire [2:0]              m_axi_awprot_out        ,
        output  wire [3:0]              m_axi_awqos_out         ,
        input   wire                    m_axi_awready_out       ,
        output  wire [3:0]              m_axi_awregion_out      ,
        output  wire [2:0]              m_axi_awsize_out        ,
        output  wire                    m_axi_awvalid_out       ,

        // for AXI read response channel interface
        input   wire [11:0]             m_axi_bid_in            ,
        output  wire                    m_axi_bready_out        ,
        input   wire [1:0]              m_axi_bresp_in          ,
        input   wire                    m_axi_bvalid_in         ,

        // for AXI read data channel interface
        input   wire [31:0]             m_axi_rdata_in          ,
        input   wire [11:0]             m_axi_rid_in            ,
        input   wire                    m_axi_rlast_in          ,
        output  wire                    m_axi_rready_out        ,
        input   wire [1:0]              m_axi_rresp_in          ,
        input   wire                    m_axi_rvalid_in         ,

        // for AXI write data channel interface
        output  wire [31:0]             m_axi_wdata_out         ,
        output  wire                    m_axi_wlast_out         ,
        input   wire                    m_axi_wready_in         ,
        output  wire [3:0]              m_axi_wstrb_out         ,
        output  wire                    m_axi_wvalid_out
    );

    task axi_read
        // for AXI read address channel interface
        output  wire [31:0]             m_axi_araddr_out        ,
        output  wire [1:0]              m_axi_arburst_out       ,
        output  wire [3:0]              m_axi_arcache_out       ,
        output  wire [11:0]             m_axi_arid_out          ,
        output  wire [7:0]              m_axi_arlen_out         ,
        output  wire                    m_axi_arlock_out        ,
        output  wire [2:0]              m_axi_arprot_out        ,
        output  wire [3:0]              m_axi_arqos_out         ,
        input   wire                    m_axi_arready_in        ,
        output  wire [3:0]              m_axi_arregion_out      ,
        output  wire [2:0]              m_axi_arsize_out        ,
        output  wire                    m_axi_arvalid_out       ,

        // for AXI read data channel interface
        input   wire [31:0]             m_axi_rdata_in          ,
        input   wire [11:0]             m_axi_rid_in            ,
        input   wire                    m_axi_rlast_in          ,
        output  wire                    m_axi_rready_out        ,
        input   wire [1:0]              m_axi_rresp_in          ,
        input   wire                    m_axi_rvalid_in         ,

        begin
        	
        end

    endtask
