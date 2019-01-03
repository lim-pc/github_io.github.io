
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company          : None
// Engineer         : Lim
// 
// Create Date      : 2018-12-27 16:09:45
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

module axi32_demo_cell #(
        parameter                       datawidth = 32          ,
        parameter                       addrwidth = 8
    )(
        input   wire                    s_axi_clk_in            ,
        input   wire                    s_axi_reset_n_in        ,

        // Write address channel
        input   wire [addrwidth-1:0]    s_axi_awaddr_in         ,
        input   wire                    s_axi_awvalid_in        ,
        output  wire                    s_axi_awready_out       ,

        // Write data channel
        input   wire [datawidth-1:0]    s_axi_wdata_in          ,
        input   wire [datawidth/8-1:0]  s_axi_wstrb_in          ,
        input   wire                    s_axi_wvalid_in         ,
        output  wire                    s_axi_wready_out        ,

        // Write response channel
        output  wire [1:0]              s_axi_bresp_out         ,
        output  wire                    s_axi_bvalid_out        ,
        input   wire                    s_axi_bready_in         ,

        // Read address channel
        input   wire [addrwidth-1:0]    s_axi_araddr_in         ,
        input   wire                    s_axi_arvalid_in        ,
        output  wire                    s_axi_arready_out       ,

        // Read data channel
        output  wire [datawidth-1:0]    s_axi_rdata_out         ,
        output  wire [1:0]              s_axi_rresp_out         ,
        output  wire                    s_axi_rvalid_out        ,
        input   wire                    s_axi_rready_in
    );

function integer clogb2 (input integer size);
begin
    size = size - 1;
    for (clogb2=1; size>1; clogb2=clogb2+1)
        size = size >> 1;
end
endfunction

//////////////////////////////////////////////////////////////////////////////////
//                                 parameter
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
//                                wire and reg
//////////////////////////////////////////////////////////////////////////////////

    // Registers map
    wire [datawidth-1:0]    cbbid_reg   = 32'h54460000;     // W/R: R   ADDR:0x00
    reg  [datawidth-1:0]    xxxgc_reg   = 32'h00000000;     // W/R:WR   ADDR:0x04
    wire [datawidth-1:0]    xxxgs_reg   = 32'h54461234;     // W/R: R   ADDR:0x08

    // for write time
    wire [datawidth-1:0]    s_axi_wr_data   = 'd0   ;
    reg  [addrwidth-1:0]    s_axi_wr_addr   = 'd0   ;
    reg                     s_axi_wr_dready = 1'b1  ;
    reg                     s_axi_wr_aready = 1'b1  ;
    wire [1:0]              s_axi_wr_rsp            ;
    reg                     s_axi_wr_rsp_valid = 'd0;
    reg                     s_axi_wr_addr_error= 'd0;

    // for read time
    reg  [datawidth-1:0]    s_axi_rd_data   = 'd0   ;
    reg  [addrwidth-1:0]    s_axi_rd_addr   = 'd0   ;
    reg                     s_axi_rd_aready = 1'b1  ;
    wire [1:0]              s_axi_rd_rsp            ;
    reg                     s_axi_rd_valid  = 'd0   ;
    reg                     s_axi_rd_addr_error= 'd0;

//////////////////////////////////////////////////////////////////////////////////
//                                   assign
//////////////////////////////////////////////////////////////////////////////////

    assign s_axi_awready_out    = s_axi_wr_aready;
    assign s_axi_wready_out     = s_axi_wr_dready;
    assign s_axi_arready_out    = s_axi_rd_aready;

    assign s_axi_wr_data        = s_axi_wdata_in;

    assign s_axi_wr_rsp         = {s_axi_wr_addr_error, s_axi_wr_addr_error};
    assign s_axi_bresp_out      = s_axi_wr_rsp;
    assign s_axi_bvalid_out     = s_axi_wr_rsp_valid;

    assign s_axi_rdata_out      = s_axi_rd_data;

    assign s_axi_rd_rsp         = {s_axi_rd_addr_error, s_axi_rd_addr_error};
    assign s_axi_rresp_out      = s_axi_rd_rsp;
    assign s_axi_rvalid_out     = s_axi_rd_valid;

//////////////////////////////////////////////////////////////////////////////////
//                                    code
//////////////////////////////////////////////////////////////////////////////////

//--------------------------------------------------------------------------------
// 1.Axi32 cell write time.
//--------------------------------------------------------------------------------

    // write data time
    always @(posedge s_axi_clk_in)
    begin
        if (s_axi_reset_n_in == 1'b0)
        begin
            xxxgc_reg <= 32'h00000000;
            s_axi_wr_addr_error <= 1'b0;
        end
        else
        begin
            if ((s_axi_wvalid_in == 1'b1) && (s_axi_wr_dready == 1'b1))
            begin
                case (s_axi_wr_addr)

//              8'h00: // Nothing to do...

                8'h04:
                begin
                    xxxgc_reg[7:0]   <= (s_axi_wstrb_in[0]) ? (s_axi_wr_data[7:0])   : xxxgc_reg[7:0];
                    xxxgc_reg[15:8]  <= (s_axi_wstrb_in[1]) ? (s_axi_wr_data[15:8])  : xxxgc_reg[15:8];
                    xxxgc_reg[23:16] <= (s_axi_wstrb_in[2]) ? (s_axi_wr_data[23:16]) : xxxgc_reg[23:16];
                    xxxgc_reg[31:24] <= (s_axi_wstrb_in[3]) ? (s_axi_wr_data[31:24]) : xxxgc_reg[31:24];
                end

//              8'h08: // Nothing to do...

                default:
                begin
                    s_axi_wr_addr_error <= 1'b1;
                end

                endcase
            end
            else
            begin
                xxxgc_reg[15:0] <= 16'd0;
                s_axi_wr_addr_error <= 1'b0;
            end
        end
    end

    // write addr time
    always @(posedge s_axi_clk_in)
    begin
        if (s_axi_reset_n_in == 1'b0)
            s_axi_wr_addr <= 'd0;
        else if ((s_axi_awvalid_in == 1'b1) && (s_axi_wr_aready == 1'b1))
            s_axi_wr_addr <= s_axi_awaddr_in;
        else
            s_axi_wr_addr <= s_axi_wr_addr;
    end

    // write response valid time
    always @(posedge s_axi_clk_in)
    begin
        if ((s_axi_wvalid_in == 1'b1) && (s_axi_wr_dready == 1'b1) & (s_axi_bready_in == 1'b1))
            s_axi_wr_rsp_valid <= 1'b1;
        else
            s_axi_wr_rsp_valid <= 1'b0;
    end

//--------------------------------------------------------------------------------
// 2.Axi32 cell read time.
//--------------------------------------------------------------------------------

    // read data time
    always @(posedge s_axi_clk_in)
    begin
        if (s_axi_reset_n_in == 1'b0)
        begin
            s_axi_rd_data <= 32'h00000000;
            s_axi_rd_addr_error <= 1'b0;
        end
        else
        begin
            if ((s_axi_wvalid_in == 1'b1) && (s_axi_rready_in == 1'b1))
            begin
                case (s_axi_rd_addr)
                8'h00:s_axi_rd_data <= cbbid_reg;
                8'h04:s_axi_rd_data <= xxxgc_reg;
                8'h08:s_axi_rd_data <= xxxgs_reg;
                default:
                begin
                    s_axi_rd_addr_error <= 1'b1;
                end

                endcase
            end
            else
            begin
                s_axi_rd_data <= s_axi_rd_data;
                s_axi_rd_addr_error <= 1'b0;
            end
        end
    end

    // read addr time
    always @(posedge s_axi_clk_in)
    begin
        if (s_axi_reset_n_in == 1'b0)
            s_axi_rd_addr <= 'd0;
        else if ((s_axi_arvalid_in == 1'b1) && (s_axi_rd_aready == 1'b1))
            s_axi_rd_addr <= s_axi_araddr_in;
        else
            s_axi_rd_addr <= s_axi_rd_addr;
    end

    // read valid time
    always @(posedge s_axi_clk_in)
    begin
        if ((s_axi_wvalid_in == 1'b1) && (s_axi_rready_in == 1'b1))
            s_axi_rd_valid <= 1'b1;
        else
            s_axi_rd_valid <= 1'b0;
    end

//--------------------------------------------------------------------------------
// 3.Axi32 cell signal map.
//--------------------------------------------------------------------------------

endmodule
