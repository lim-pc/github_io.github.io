
/*******************************************************************************
 * @brief   : device.c
 * @author  : lim
 * @version : 1.0.0
 * @date    : 2018-9-5 15:51:20
 * @details : public functions for all device.
 ******************************************************************************/

/********************************* include ************************************/

    #include <device.h>

/********************************* function ***********************************/

uint32_t get_bit(uint32_t address, uint32_t mark, uint8_t pos)
{
    uint32_t value;

    /* Get address value and shift. */
    U32_RD(value, address);

    return ((uint32_t)(value & (mark << pos)));
}

bool set_bit(uint32_t address, uint32_t mark, uint32_t data, uint8_t pos)
{
    uint32_t value;

    /* Get address value and clear used bits. */
    U32_RD(value, address);
    value &= ~(mark << pos);

    /* Set the bits. */
    value |= data;
    U32_WR(value, address);

    /* Verify for the writed data. */
    U32_RD(value, address);
    value &= (mark << pos);

    if (value == data)
        return true;
    else
        return false;
}
