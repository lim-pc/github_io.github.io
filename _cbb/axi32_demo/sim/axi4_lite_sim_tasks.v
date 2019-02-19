
`timescale 1ns / 1ps

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

module axi_lite_sim_tasks(
        parameter integer datawidth         = 32                    ,
        parameter integer addrwidth         = 32                    ,
        parameter integer operte_clock_mhz  = 100                   ,
        parameter integer timeoutclk_num    = 100
    )(
        // for AXI write address channel
        output  wire [addrwidth-1:0]        m_axi_awaddr_out        ,
        output  wire                        m_axi_awvalid_out       ,
        input   wire                        m_axi_awready_in        ,

        // for AXI write data channel
        output  wire [datawidth-1:0]        m_axi_wdata_out         ,
        output  wire [datawidth/8-1:0]      m_axi_wstrb_out         ,
        output  wire                        m_axi_wvalid_out        ,
        input   wire                        m_axi_wready_in         ,

        // for AXI write response channel
        input   wire [1:0]                  m_axi_bresp_in          ,
        input   wire                        m_axi_bvalid_in         ,
        output  wire                        m_axi_bready_out        ,

        // for AXI read address channel
        output  wire [addrwidth-1:0]        m_axi_araddr_out        ,
        output  wire                        m_axi_arvalid_out       ,
        input   wire                        m_axi_arready_in        ,

        // for AXI read data and response channel
        input   wire [datawidth-1:0]        m_axi_rdata_in          ,
        input   wire [1:0]                  m_axi_rresp_in          ,
        input   wire                        m_axi_rvalid_in         ,
        output  wire                        m_axi_rready_out        ,
    );

    function unsign[7:0] bitcnt
        input integer bitcnt_number;
        reg  [7:0]  bit_count = 8'd0;

        begin
            for(bit_count = 0;(bitcnt_number>>bit_count) > 0;)
                bit_count = bit_count + 1'b1;
        end
        bitcnt = bit_count;
    endfunction

//--------------------------------------------------------------------------------
//                                    parameters
//--------------------------------------------------------------------------------

    parameter integer clock_delay = 1000/operte_clock_mhz - 1;

//--------------------------------------------------------------------------------
//                                      assign
//--------------------------------------------------------------------------------

    assign m_axi_awaddr_out     = m_axi_araddr      ;
    assign m_axi_awvalid_out    = m_axi_arvalid     ;
    assign m_axi_arready        = m_axi_awready_in  ;
    assign m_axi_wdata_out      = m_axi_wdata       ;
    assign m_axi_wstrb_out      = m_axi_wstrb       ;
    assign m_axi_wvalid_out     = m_axi_wvalid      ;
    assign m_axi_wready         = m_axi_wready_in   ;
    assign m_axi_bresp          = m_axi_bresp_in    ;
    assign m_axi_bvalid         = m_axi_bvalid_in   ;
    assign m_axi_bready_out     = m_axi_bready      ;
    assign m_axi_araddr_out     = m_axi_araddr      ;
    assign m_axi_arvalid_out    = m_axi_arvalid     ;
    assign m_axi_arready        = m_axi_arready_in  ;
    assign m_axi_rdata          = m_axi_rdata_in    ;
    assign m_axi_rresp          = m_axi_rresp_in    ;
    assign m_axi_rvalid         = m_axi_rvalid_in   ;
    assign m_axi_rready_out     = m_axi_rready      ;

//--------------------------------------------------------------------------------
//                                   task define
//--------------------------------------------------------------------------------

    task axi4_lite_read
//--------------------------------------------------------------------------------
//                                  bus interface
//--------------------------------------------------------------------------------
        // for AXI read address channel
        output  reg  [addrwidth-1:0]        m_axi_araddr            ;
        output  reg                         m_axi_arvalid           ;
        input   reg                         m_axi_arready           ;

        // for AXI read data and response channel
        input   reg  [datawidth-1:0]        m_axi_rdata             ;
        input   reg  [1:0]                  m_axi_rresp             ;
        input   reg                         m_axi_rvalid            ;
        output  reg                         m_axi_rready            ;

//--------------------------------------------------------------------------------
//                               parameters interface
//--------------------------------------------------------------------------------

        input   wire [addrwidth-1:0]        read_addr               ;
        output  wire [datawidth-1:0]        read_data               ;
        output  wire                        raed_status             ;

        reg  [bitcnt(timeoutclk_num)-1:0]   delay_count = 'd0       ;

        begin
            // configure the read address.
            m_axi_araddr    = read_addr;
            m_axi_arvalid   = 1'b1;
            m_axi_rready    = 1'b0;
            delay_count     = 'd0;
            #clock_delay;

            // wait for the read address write over.
            while((m_axi_arready == 1'b0) && (delay_count < timeoutclk_num)) begin
                m_axi_arvalid = 1'b1;
                delay_count = delay_count + 1'b1;
                #clock_delay;
            end
            m_axi_arvalid   = 1'b0;
            #clock_delay;

            // wait for the read reponse data valid
            delay_count     = 'd0;
            while((m_axi_rvalid == 1'b0) && (delay_count < timeoutclk_num)) begin
                delay_count = delay_count + 1'b1;
                #clock_delay;
            end
            #clock_delay;

            // configure the read ready signal.
            if ((m_axi_rvalid == 1'b1) && (m_axi_rresp == 2'd0)
            begin
                m_axi_rready = 1'b1;
                read_data = m_axi_rdata;
            end
            #clock_delay;

            // clear the read ready signal.
            m_axi_rready = 1'b0;
            #clock_delay;
        end

        assign raed_status = (delay_count >= timeoutclk_num) ? 1'b0 : (m_axi_rresp == 2'd0));

    endtask

    task axi4_lite_write

        // for AXI write address channel
        output  reg  [addrwidth-1:0]        m_axi_awaddr            ;
        output  reg                         m_axi_awvalid           ;
        input   reg                         m_axi_awready           ;

        // for AXI write data channel
        output  reg  [datawidth-1:0]        m_axi_wdata             ;
        output  reg  [datawidth/8-1:0]      m_axi_wstrb             ;
        output  reg                         m_axi_wvalid            ;
        input   reg                         m_axi_wready            ;

        // for AXI write response channel
        input   reg  [1:0]                  m_axi_bresp             ;
        input   reg                         m_axi_bvalid            ;
        output  reg                         m_axi_bready            ;

        begin
            
        end

    endtask
