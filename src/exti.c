/*****************************************************************************/
/** 
 * \file        exti.c
 * \author      Weilun Fong | wlf@zhishan-iot.tk
 * \brief       operation for on-chip EXTI module
 * \note        
 * \version     v1.0
 * \ingroup     EXTI
******************************************************************************/

#include "hml/exti.h"

#ifdef COMPILE_EXTI

/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \date        
 * \brief       configure function for EXTI module
 * \param[in]   exti: target EXTI module
 * \param[in]   ec  : the pointer of configuration structure which includes all
 *                    configuration information
 * \return      none
 * \ingroup     EXTI
 * \remarks     
******************************************************************************/
void EXTI_config(PERIPH_EXTI exti, EXTI_configTypeDef *ec)
{
    EXTI_setMode(exti, ec->mode);
    EXTI_setPriority(exti, ec->priority);
}


/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \date        
 * \brief       disable or enable target EXTI module
 * \param[in]   exti: target EXTI module
 * \param[in]   a   : expected status
 * \return      none
 * \ingroup     EXTI
 * \remarks     
******************************************************************************/
void EXTI_cmd(PERIPH_EXTI exti, Action a)
{
    switch(exti)
    {
        case PERIPH_EXTI_0: EX0 = a; break;
        case PERIPH_EXTI_1: EX1 = a; break;
        default: break;
    }
}

/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \date        
 * \brief       configure work mode of target EXTI module
 * \param[in]   exti: target EXTI module
 * \param[in]   mode: expected work mode
 * \return      none
 * \ingroup     EXTI
 * \remarks     
******************************************************************************/
void EXTI_setMode(PERIPH_EXTI exti, EXTI_mode mode)
{
    switch (exti)
    {
        case PERIPH_EXTI_0: IT0 = mode; break;
        case PERIPH_EXTI_1: IT1 = mode; break;
        default: break;
    }
}

/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \date        
 * \brief       configure priority class of target EXTI module
 * \param[in]   exti: target EXTI module
 * \param[in]   a   : enable(high priority) or disable(low priority)
 * \return      none
 * \ingroup     EXTI
 * \remarks     
******************************************************************************/
void EXTI_setPriority(PERIPH_EXTI exti, Action a)
{
    switch (exti)
    {
        case PERIPH_EXTI_0: PX0 = a; break;
        case PERIPH_EXTI_1: PX1 = a; break;
        default: break;
    }
}

#else
    #warning Nothing to be done... User should remove .c file which is disabled by compile control macro from current directory.
#endif
