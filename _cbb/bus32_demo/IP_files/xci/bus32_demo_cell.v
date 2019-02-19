
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company          : None
// Engineer         : Lim
// 
// Create Date      : 2018-12-27 16:09:45
// Design Name      : None
// Module Name      : bus32 demo cell
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

module bus32_demo_cell #(
        parameter                           datawidth = 32          ,
        parameter                           addrwidth = 8
    )(
        input   wire                        clock_in                ,
        input   wire                        reset_in                ,

        input   wire [addrwidth-1:0]        epc_addr_in             ,
        output  wire [datawidth-1:0]        epc_data_out            ,
        input   wire [datawidth-1:0]        epc_data_in             ,
        input   wire [datawidth/8-1:0]      epc_be_in               ,
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

    // Registers map
    wire [datawidth-1:0]    cbbid_reg   = 32'h54460001;     // W/R: R   ADDR:0x00
    reg  [datawidth-1:0]    gc_reg      = 32'h00000000;     // W/R:WR   ADDR:0x04
    wire [datawidth-1:0]    gs_reg                    ;     // W/R: R   ADDR:0x08

    // for epc read
    reg  [addrwidth-1:0]    read_data_reg = 'd0 ;
    reg  [7:0]              read_wait_cnt = 'd0 ;
    reg  [7:0]              read_wait_num = 'd0 ;

    // for epc write
    reg  [7:0]              write_wait_cnt = 'd0;
    reg  [7:0]              write_wait_num = 'd0;

    wire                    epc_write_busy      ;
    wire                    epc_read_busy       ;
    wire                    epc_rdy             ;

    wire                    read_status         ;
    wire                    write_status        ;

//////////////////////////////////////////////////////////////////////////////////
//                                   assign
//////////////////////////////////////////////////////////////////////////////////

    // Get the raed and write statgus.
    assign read_status = (epc_cs_n_in == 1'b0) && (epc_wr_n_in == 1'b1) && (epc_rd_n_in == 1'b0);
    assign write_status = (epc_cs_n_in == 1'b0) && (epc_wr_n_in == 1'b0) && (epc_rd_n_in == 1'b1);

    // The read data out.
    assign epc_data_out = read_data_reg;

    // Generte the bus ready signal.
    assign epc_rdy_out = epc_rdy;
    assign epc_rdy = epc_write_busy | epc_read_busy;

//////////////////////////////////////////////////////////////////////////////////
//                                    code
//////////////////////////////////////////////////////////////////////////////////

//--------------------------------------------------------------------------------
// 1.bus32 cell write time.
//--------------------------------------------------------------------------------

    always @(posedge clock_in)
    begin
        if (reset_in == 1'b1)
        begin
            gc_reg <= 32'd0;
        end
        else
        begin
            if ((write_status == 1'b1) && (write_wait_cnt >= write_wait_num))
            begin
                case (epc_addr_in[7:0])

//              8'h00: // Nothing to do...

                8'h04:
                begin
                    gc_reg[7:0]   <= (epc_be_in[0]) ? (epc_data_in[7:0])   : gc_reg[7:0];
                    gc_reg[15:8]  <= (epc_be_in[1]) ? (epc_data_in[15:8])  : gc_reg[15:8];
                    gc_reg[23:16] <= (epc_be_in[2]) ? (epc_data_in[23:16]) : gc_reg[23:16];
                    gc_reg[31:24] <= (epc_be_in[3]) ? (epc_data_in[31:24]) : gc_reg[31:24];
                end

//              8'h08: // Nothing to do...
//              default:

                endcase
            end
            else
            begin
                gc_reg[0] <= 1'b0;
            end
        end
    end

    // Select the write wait number.
    always @(posedge clock_in)
    begin
        if (reset_in == 1'b1)
            write_wait_num <= 'd1;
        else
        begin
            if (read_status == 1'b1)
            begin
                case (epc_addr_in[7:0])
                    8'h04: write_wait_num <= 8'd0;
                    default: write_wait_num <= 'd0;
                endcase
            end
            else
                write_wait_num  <= 'd1;
        end
    end

    // Count the write wait number.
    always @(posedge clock_in)
    begin
        if (reset_in == 1'b1)
            write_wait_cnt <= 'd0;
        else
        begin
            if (read_status == 1'b1)
            begin
                if (write_wait_cnt < write_wait_num)
                    write_wait_cnt <= write_wait_cnt + 1'b1;
                else
                    write_wait_cnt <= write_wait_cnt;
            end
            else
                write_wait_cnt <= 'd0;
        end
    end

    assign epc_write_busy = ((write_status == 1'b1) && (write_wait_cnt >= write_wait_num));

//--------------------------------------------------------------------------------
// 2.bus32 cell read time.
//--------------------------------------------------------------------------------

    // read data time
    always @(posedge clock_in)
    begin
        if (reset_in == 1'b1)
            read_data_reg <= 32'd0;
        else
        begin
            if ((read_status == 1'b1) && (read_wait_cnt >= read_wait_num))
            begin
                case (epc_addr_in[7:0])
                8'h00:read_data_reg <= cbbid_reg;
                8'h04:read_data_reg <= gc_reg;
                8'h08:read_data_reg <= gs_reg;
//              default:
                endcase
            end
            else
                read_data_reg <= read_data_reg;
        end
    end

    // Select the read wait number.
    always @(posedge clock_in)
    begin
        if (reset_in == 1'b1)
            read_wait_num <= 'd1;
        else
        begin
            if (read_status == 1'b1)
            begin
                case (epc_addr_in[7:0])
                    8'h08: read_wait_num <= 8'd3;
                    default: read_wait_num <= 'd1;
                endcase
            end
            else
                read_wait_num  <= 'd1;
        end
    end

    // Count the read wait number.
    always @(posedge clock_in)
    begin
        if (reset_in == 1'b1)
            read_wait_cnt <= 'd0;
        else
        begin
            if (read_status == 1'b1)
            begin
                if (read_wait_cnt < read_wait_num)
                    read_wait_cnt <= read_wait_cnt + 1'b1;
                else
                    read_wait_cnt <= read_wait_cnt;
            end
            else
                read_wait_cnt <= 'd0;
        end
    end

    // generate the busy signal.
    assign epc_read_busy = (read_status == 1'b1) & (read_wait_cnt >= read_wait_num);

//--------------------------------------------------------------------------------
// 3.bus32 cell signal map.
//--------------------------------------------------------------------------------

    // global control register map
    assign control_0_out = gc_reg[0];
    assign control_1_out = gc_reg[1];

    // global status register map
    assign gs_reg[0] = status_0_in;
    assign gs_reg[1] = status_1_in;

endmodule
