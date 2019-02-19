
/*******************************************************************************
 * @brief   : axi32_ddr_ctrl.h
 * @author  : lim
 * @version : 1.0.0
 * @date    : 2019-1-15 10:01:42
 * @details : statement for the axi32_ddr_ctrl device.
 ******************************************************************************/

#ifndef __axi32_ddr_ctrl_h_
    #define __axi32_ddr_ctrl_h_

/********************************* include ************************************/

    #include <device.h>

/********************************** define ************************************/

    /* Define all registers */
    #define CBBID_REG_OFFSET        0x00
    #define GCTRL_REG_OFFSET        0x04
    #define GSTUS_REG_OFFSET        0x08
    #define WCTRL_REG_OFFSET        0x0C
    #define WDATA_REG_OFFSET        0x10
    #define WRCNT_REG_OFFSET        0x14
    #define WBCNT_REG_OFFSET        0x18
    #define RCTRL_REG_OFFSET        0x1C
    #define RDLIM_REG_OFFSET        0x20

/*----------------------------------------------------------------------------*/

    /* CBB id register bits mean. */
    #define CBBID_ID_POS            0
    #define CBBID_CIPHER_POS        16

    /* CBB id register bits mark. */
    #define CBBID_ID                MARK_BITS(0xFFFF, CBBID_ID_POS)
    #define CBBID_CIPHER            MARK_BITS(0xFFFF, CBBID_CIPHER_POS)

/*----------------------------------------------------------------------------*/

    /* Global control register bits mean. */
    #define GCTRL_WRRD_RST_POS      0
    #define GCTRL_WRRD_SEL_POS      1

    /* Global control register bits mask. */
    #define GCTRL_WRRD_RST          MARK_BIT(GCTRL_WRRD_RST_POS)
    #define GCTRL_WRRD_SEL          MARK_BIT(GCTRL_WRRD_SEL_POS)

/*----------------------------------------------------------------------------*/

    /* Global status register bits mean. */
    #define GSTUS_FIFO_FULL_POS     0
    #define GSTUS_FIFO_EMPTY_POS    1

    /* Global status register bits mask. */
    #define GSTUS_FIFO_FULL         MARK_BIT(GSTUS_FIFO_FULL_POS)
    #define GSTUS_FIFO_EMPTY        MARK_BIT(GSTUS_FIFO_EMPTY_POS)

/*----------------------------------------------------------------------------*/

    /* Write control register bits mean. */

    /* Write control register bits mask. */

/*----------------------------------------------------------------------------*/

    /* Write count register bits mean. */
    #define WRITED_COUNT_POS        0

    /* Write count register bits mask. */
    #define WRITED_COUNT            MARK_BITS(0x1FFFFFFF, WRITED_COUNT_POS)

/*----------------------------------------------------------------------------*/

    /* Write buffer count register bits mean. */
    #define WRBUF_COUNT_POS         0

    /* Write buffer count register bits mask. */
    #define WRBUF_COUNT             MARK_BITS(0x1FFF, WRBUF_COUNT_POS)

/*----------------------------------------------------------------------------*/

    /* Read control register bits mean. */
    #define RDCTRL_RDEN_POS         0
    #define RDCTRL_RDMODE_POS       1
    #define RDCTRL_RDSPEED_POS      2

    /* Read control register bits mask. */
    #define RDCTRL_RDEN             MARK_BIT(RDCTRL_RDEN_POS)
    #define RDCTRL_RDMODE           MARK_BIT(RDCTRL_RDMODE_POS)
    #define RDCTRL_RDSPEED          MARK_BIT(RDCTRL_RDSPEED_POS)

/*----------------------------------------------------------------------------*/

    /* Read limit register bits mean. */
    #define RDLIM_ADDR_LIM_POS      0

    /* Read limit register bits mark. */
    #define RDLIM_ADDR_LIM          MARK_BITS(0x1FFFFFFF, RDLIM_ADDR_LIM_POS)

/*----------------------------------------------------------------------------*/

    /* Statement ddr_ctrl_interface device struct. */
    typedef struct{
        /* Base information. */
        uint32_t    DeviceId;
        uint32_t    CbbId;
        uint32_t    BaseAddress;

        /* Global control register param. */
        uint32_t    wrrd_rst;       /* write/raed reset, high active. */
        uint32_t    wrrd_sel;       /* write/raed mode select, 0:write; 1:raed; */

        /* Read control register param. */
        uint32_t    ddr_rd_en;      /* ddr read enable, high active, clear by hw. */
        uint32_t    ddr_rd_mode;    /* ddr read mode, 0:limit by rd-lim; 1:limit by wr-addr; */
        uint32_t    ddr_rd_speed;   /* ddr read speed, 0:60MHz; 1:40MHz; */

        /* Read limit address register param. */
        uint32_t    ddr_rd_limaddr; /* ddr read limit addr, active by ddr_rd_mode == 0. */
    }ddr_ctrl_config;

    typedef struct{
        uint32_t    DeviceId;
        uint32_t    BaseAddress;
        uint32_t    IsReady;
    }ddr_ctrl;

/*----------------------------------------------------------------------------*/

    #define AXI32_DDR_CTRL_NUM                      1

    /* Define the ddr_ctrl 0 parameters. */
    #define AXI32_DDR_CTRL_0_DEVICEID               0
//  #define AXI32_DDR_CTRL_0_CBBID                  0
    #define AXI32_DDR_CTRL_0_BASEADDRESS            0x43C00000

    #define AXI32_DDR_CTRL_0_WRRD_RST               0
    #define AXI32_DDR_CTRL_0_WRRD_SEL               0

    #define AXI32_DDR_CTRL_0_DDR_RD_EN              0
    #define AXI32_DDR_CTRL_0_DDR_RD_MODE            0x0FFFFFF0
    #define AXI32_DDR_CTRL_0_DDR_RD_SPEED           0x0FFFFFF0

    #define AXI32_DDR_CTRL_0_RD_LIMADDR             0x00100000

    extern ddr_ctrl_config axi32_ddr_crtl_config[];

/********************************* function ***********************************/

/** ****************************************************************************
 * @name        : ddr_ctrl_interface_initialize
 * @param[in]   : *InstancePtr  ddr_ctrl_interface object.
 * @param[in]   : DeviceId      ddr_ctrl_interface object id.
 * @return      : initialize result
 * @brief       : initialize ddr_ctrl_interface device for the project.
 ******************************************************************************/
    bool ddr_ctrl_interface_initialize(ddr_ctrl_interface *InstancePtr, uint32_t DeviceId);

/** ****************************************************************************
 * @name        : ddr_ctrl_interface_lookupconfig
 * @param[in]   : DeviceId ddr_ctrl_interface object id.
 * @return      : lookupconfig result
 * @brief       : lookupconfig configure parameters for the object.
 ******************************************************************************/
    ddr_ctrl_config * ddr_ctrl_interface_lookupconfig(uint32_t DeviceId);

/** ****************************************************************************
 * @name        : ddr_ctrl_interface_configure
 * @param[in]   : *InstancePtr  ddr_ctrl_interface object.
 * @param[in]   : *Config_param ddr_ctrl_interface object id.
 * @return      : configure result
 * @brief       : configure ddr_ctrl_interface device for the project.
 ******************************************************************************/
    bool ddr_ctrl_interface_configure(ddr_ctrl_interface *InstancePtr,
                                 ddr_ctrl_config *Config_param);

/** ****************************************************************************
 * @name        : ddr_ctrlc_write
 * @param[in]   : *InstancePtr  ddr_ctrl_interface object.
 * @param[in]   : addr  ddr_ctrl command write address.
 * @param[in]   : data  ddr_ctrl command data.
 * @return      : ddr_ctrl write result
 * @brief       : operating the ddr_ctrl command write.
 ******************************************************************************/
    bool ddr_ctrlc_write(ddr_ctrl_interface *InstancePtr, uint32_t addr, uint32_t data);

/** ****************************************************************************
 * @name        : ddr_ctrlc_read
 * @param[in]   : *InstancePtr  ddr_ctrl_interface object.
 * @param[in]   : addr  ddr_ctrl command read address.
 * @param[out]  : *data ddr_ctrl command data address.
 * @return      : ddr_ctrl read result
 * @brief       : operating the ddr_ctrl command read.
 ******************************************************************************/
    bool ddr_ctrlc_read(ddr_ctrl_interface *InstancePtr, uint32_t addr, uint32_t *data);

/** ****************************************************************************
 * @name        : ddr_read
 * @param[in]   : *InstancePtr  ddr_ctrl_interface object.
 * @param[in]   : addr          ddr read address.
 * @param[out]  : data_addr     data address to save.
 * @return      : ddr write result
 * @brief       : operating the ddr write.
 ******************************************************************************/
    uint32_t ddr_read(ddr_ctrl_interface *InstancePtr, uint32_t addr, uint32_t *data_addr);

#endif /* __ddr_ctrl_interface_h_ */
