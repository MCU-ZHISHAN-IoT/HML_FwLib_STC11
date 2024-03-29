/*****************************************************************************/
/** 
 * \file        version.h
 * \author      Weilun Fong | wlf@zhishan-iot.tk
 * \brief       HML version information
 * \note        
 * \version     v1.0
 * \ingroup     VERSION
******************************************************************************/

#ifndef ___HML_VERSION_H___
#define ___HML_VERSION_H___

/*****************************************************************************
 *                                macro                                      *
 *****************************************************************************/

/**
 * \brief string literal representation of the current library name
 */
#define __HML_NAME_STRING__ "HML_FwLib_STC11"

/**
 * \brief string literal representation of the current library version
 */
#define __HML_VERSION_STRING__ "1.0.0"

/**
 * \deprecated these macro will be abolished in next minor version
 */
#define HML_VERSION_CODE "1.0.0"
#define HML_VERSION_NAME "HML_FwLib_STC11"

/**
 * \brief
 * Numerical representation of the current library version.
 *
 * In the numerical representation, the major number is multiplied by
 * 10000, the minor number by 100, and all three parts are then
 * added.  It is intented to provide a monotonically increasing
 * numerical value that can easily be used in numerical checks.
 */
#define __HML_VERSION__ 100000UL

/**
 * \brief string literal representation of the release date.
 */
#define __HML_DATE_STRING__ "20211023"

/**
 * \brief numerical representation of the release date.
 */
#define __HML_DATE__ 20211023UL

/**
 * \brief library major version number.
 */
#define __HML_VERSION_MAJOR__ 1

/**
 * \brief library minor version number.
 */
#define __HML_VERSION_MINOR__ 0

/**
 * \brief library patch version number.
 */
#define __HML_VERSION_PATCH__ 0

#endif
