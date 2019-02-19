
/*******************************************************************************
 * @brief  	: fmc_interface.h
 * @author  : lim
 * @version : 1.0.0
 * @date    : 2018-9-5 13:56:38
 * @details : define for the fmc_interface device.
 ******************************************************************************/

/********************************* include ************************************/

    #include <fmc_interface.h>

    fmc_interface_config fmc_config[] = {
        {
            FMC_0_DEVICEID,
            FMC_0_BASEADDRESS,
            FMC_0_CHANNEL_0_EN,
            FMC_0_CHANNEL_1_EN,
            FMC_0_DATA_TEST_EN,
            FMC_0_WRLIMIT0ADDR,
            FMC_0_WRLIMIT1ADDR
        },
    };

/********************************* function ***********************************/

/** ****************************************************************************
 * @name        : fmc_interface_initialize
 * @param[in]   : *InstancePtr  fmc_interface object.
 * @param[in]   : DeviceId      fmc_interface object id.
 * @return      : initialize result
 * @brief       : initialize fmc_interface device for the project.
 ******************************************************************************/
bool fmc_interface_initialize(fmc_interface *InstancePtr, uint32_t DeviceId)
{
    fmc_interface_config *config_vector;

    /* Check the object. */
    assert(InstancePtr != NULL);

    config_vector = fmc_interface_lookupconfig(DeviceId);

    /* Check the config struct. */
    if (config_vector == NULL)
        return false;
    else
        return fmc_interface_configure(InstancePtr, config_vector);
}

/** ****************************************************************************
 * @name        : fmc_interface_lookupconfig
 * @param[in]   : DeviceId fmc_interface object id.
 * @return      : lookupconfig result
 * @brief       : lookupconfig configure parameters for the object.
 ******************************************************************************/
fmc_interface_config * fmc_interface_lookupconfig(uint32_t DeviceId)
{
    fmc_interface_config *config_param;
    uint32_t count;

    for (count = 0;count < FMC_NUM_INSTANCE;count++)
    {
        if (DeviceId == fmc_config[count].DeviceId)
        {
            config_param = &fmc_config[count];
            break;
        }
    }

    return (fmc_interface_config *)config_param;
}

/** ****************************************************************************
 * @name        : fmc_interface_configure
 * @param[in]   : *InstancePtr  fmc_interface object.
 * @param[in]   : *Config_param fmc_interface object id.
 * @return      : configure result
 * @brief       : configure fmc_interface device for the project.
 ******************************************************************************/
bool fmc_interface_configure(fmc_interface *InstancePtr,
                             fmc_interface_config *Config_param)
{
    uint32_t reg_config;

    /* Configure base information. */
    InstancePtr->DeviceId = Config_param->DeviceId;
    InstancePtr->BaseAddress = Config_param->BaseAddress;

    /* Configure Global control register. */
    reg_config = Config_param->channel_0_en << CHANNEL_0_EN_POS
               | Config_param->channel_1_en << CHANNEL_1_EN_POS
               | READ_WRITE_SEL
               | Config_param->data_test_en << FIFO_DATA_TEST_POS;

    set_bit(InstancePtr->BaseAddress + GCTRL_REG_OFFSET,
            CHANNEL_0_EN | CHANNEL_1_EN,
            reg_config,
            CHANNEL_0_EN_POS);

    set_bit(InstancePtr->BaseAddress + WRLIMIT0_REG_OFFSET,
            0xffffffff, Config_param->wrlimit0addr, 0);

    set_bit(InstancePtr->BaseAddress + WRLIMIT1_REG_OFFSET,
            0xffffffff, Config_param->wrlimit1addr, 0);

    /* Configure the device as ready. */
    InstancePtr->IsReady = true;

    return true;
}

/** ****************************************************************************
 * @name        : fmcc_write
 * @param[in]   : *InstancePtr  fmc_interface object.
 * @param[in]   : addr  fmc command write address.
 * @param[in]   : data  fmc command data.
 * @return      : ddr write result
 * @brief       : operating the ddr write.
 ******************************************************************************/
bool fmcc_write(fmc_interface *InstancePtr, uint32_t addr, uint32_t data)
{
    uint16_t delay_count = 666;
    uint32_t fmc_wrrd_status = 0;

    /* Configure the writing addr and data register. */
    set_bit(InstancePtr->BaseAddress + FMCADDR_REG_OFFSET, 0x000000ff, addr, 0);
    set_bit(InstancePtr->BaseAddress + FMCWRD_REG_OFFSET, 0x000000ff, data, 0);

    /* Enable the fmc write enable. */
    set_bit(InstancePtr->BaseAddress + FMCCC_REG_OFFSET, 0x1, FMC_CTRL_WR_EN, FMC_CTRL_WR_EN_POS);

    /* Wait for the writing finished. */
    while(delay_count--);

    /* Get the write ack status. */
    fmc_wrrd_status = get_bit(InstancePtr->BaseAddress + FMCWRS_REG_OFFSET, FMC_CTRL_WR_ACK_VALID, 0);

    if (fmc_wrrd_status == FMC_CTRL_WR_ACK_VALID){
        return true;
    /* Clear the write ack status. */
    }else{
        set_bit(InstancePtr->BaseAddress + FMCCC_REG_OFFSET, FMC_CTRL_SCLESR, FMC_CTRL_SCLESR, 0);
        return false;
    }
}

/** ****************************************************************************
 * @name        : fmcc_read
 * @param[in]   : *InstancePtr  fmc_interface object.
 * @param[in]   : addr  fmc command read address.
 * @param[out]  : *data fmc command data address.
 * @return      : fmc read result
 * @brief       : operating the fmc command read.
 ******************************************************************************/
bool fmcc_read(fmc_interface *InstancePtr, uint32_t addr, uint32_t *data)
{
    uint16_t delay_count = 666;
    uint32_t fmc_wrrd_status = 0;

    /* Configure the read addr register. */
    set_bit(InstancePtr->BaseAddress + FMCADDR_REG_OFFSET, 0x000000ff, addr, 0);

    /* Enable the fmc read mode. */
    set_bit(InstancePtr->BaseAddress + FMCCC_REG_OFFSET, 0x1, FMC_CTRL_WRRD_SEL, FMC_CTRL_WRRD_SEL_POS);

    /* Enable the fmc read enable. */
    set_bit(InstancePtr->BaseAddress + FMCCC_REG_OFFSET, 0x1, FMC_CTRL_RD_EN, FMC_CTRL_RD_EN_POS);

    /* Wait for the reading finished. */
    while(delay_count--);

    /* Clear the fmc read mode. */
    set_bit(InstancePtr->BaseAddress + FMCCC_REG_OFFSET, 0x1, 0, FMC_CTRL_WRRD_SEL_POS);

    fmc_wrrd_status = get_bit(InstancePtr->BaseAddress + FMCWRS_REG_OFFSET, FMC_CTRL_RD_ACK_VALID, 0);

    if (fmc_wrrd_status == FMC_CTRL_RD_ACK_VALID){
        /* Get the read fmc command data. */
        *data = get_bit(InstancePtr->BaseAddress + FMCRDD_REG_OFFSET, 0x000000ff, 0);

        return true;
    }else{
        /* Clear the write ack status. */
        set_bit(InstancePtr->BaseAddress + FMCCC_REG_OFFSET, FMC_CTRL_SCLESR, FMC_CTRL_SCLESR, 0);

        return false;
    }
}

/** ****************************************************************************
 * @name        : ddr_read
 * @param[in]   : *InstancePtr  fmc_interface object.
 * @param[in]   : addr  ddr read address.
 * @return      : ddr write result
 * @brief       : operating the ddr write.
 ******************************************************************************/
uint32_t ddr_read(fmc_interface *InstancePtr, uint32_t addr, uint32_t *data_addr)
{
    uint32_t count = 0;
    uint32_t reg_status = 0;
    uint32_t temp = 0;
    uint32_t fifo_cnt = 0;

    /* Clear the fmc receive enable. */
    set_bit(InstancePtr->BaseAddress + GCTRL_REG_OFFSET,
            CHANNEL_0_EN | CHANNEL_1_EN | READ_WRITE_SEL, 0,
            CHANNEL_0_EN_POS);

    /* Configure the writing addr and data register. */
    set_bit(InstancePtr->BaseAddress + RDADDR_REG_OFFSET, 0xffffffff, addr, 0);

    /* Enable the ddr read enable. */
    set_bit(InstancePtr->BaseAddress + RDCTRL_REG_OFFSET, DDR_READ_EN, 1, DDR_READ_EN_POS);
    reg_status = get_bit(InstancePtr->BaseAddress + DDRRDFS_REG_OFFSET, DDR_FIFO_STOP, 0);
    while(reg_status != DDR_FIFO_STOP)
    {
        reg_status = get_bit(InstancePtr->BaseAddress + DDRRDFS_REG_OFFSET, DDR_FIFO_STOP, 0);
    }

    fifo_cnt = get_bit(InstancePtr->BaseAddress + DDRRDFS_REG_OFFSET, DDR_FIFO_COUNT, 0) >> 16;

    if (fifo_cnt < 256){
        for (count = 0;count < fifo_cnt;count++)
            temp = get_bit(InstancePtr->BaseAddress + RDDATA_REG_OFFSET, 0xffffffff, 0);
    }else{
        for (count = 0;count < 256;count++)
            *(data_addr + count) = get_bit(InstancePtr->BaseAddress + RDDATA_REG_OFFSET, 0xffffffff, 0);
        while(get_bit(InstancePtr->BaseAddress + DDRRDFS_REG_OFFSET, DDR_FIFO_EMPTY, 0) != DDR_FIFO_EMPTY)
            temp = get_bit(InstancePtr->BaseAddress + RDDATA_REG_OFFSET, 0xffffffff, 0);
    }

    return temp;
}
