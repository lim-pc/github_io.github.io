
/*******************************************************************************
 * @brief   : device.h
 * @author  : lim
 * @version : 1.0.0
 * @date    : 2018-9-5 15:51:20
 * @details : public statement for all device.
 ******************************************************************************/

#ifndef __device_h_
    #define __device_h_

/********************************* include ************************************/

    #include <define.h>
    #include <stdint.h>
    #include <assert.h>

/********************************** define ************************************/

    /* Define for bit operating. */
    #define MARK_BIT(POS)           \
                (1<<(POS))          \

    #define MARK_BITS(VALUE, POS)   \
                ((VALUE)<<(POS))    \

    /* Define for address operating. */
    #define U32_WR(data, addr)                              \
                ((*((volatile uint32_t *)addr)) = ((uint32_t)data))  \

    #define U16_WR(data, addr)                              \
                ((*((volatile uint32_t *)addr)) = ((uint16_t)data))  \

    #define U8_WR(data, addr)                               \
                ((*((volatile uint32_t *)addr)) = ((uint8_t)data))   \

    #define U32_RD(data, addr)                              \
                data = (uint32_t)(*((volatile uint32_t *)addr))      \

    #define U16_RD(data, addr)                              \
                data = (uint16_t)(*((volatile uint32_t *)addr))      \

    #define U8_RD(data, addr)                               \
                data = (uint8_t)(*((volatile uint32_t *)addr))       \

/********************************* function ***********************************/

    uint32_t get_bit(uint32_t address, uint32_t mark, uint8_t pos);

    bool set_bit(uint32_t address, uint32_t mark, uint32_t value, uint8_t pos);

#endif /* __device_h_ */
