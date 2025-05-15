/*******************************************************************************
* svdpi_compatibility.h
*
* NOTE: THIS FILE IS INCLUDED BY svdpi.h. DO NOT INCLUDE THIS FILE FROM
* USER APPLICATION CODE.
*
* This file contains the macro definitions used by the SystemVerilog DPI
* to implement backwards compatibility mode functionality.
*
******************************************************************************/
#ifdef DPI_COMPATIBILITY_H
#error "The svdpi_compatibility.h file can only be included by svdpi.h directly."
#endif
#define DPI_COMPATIBILITY_H
/* Compatibility-mode variants of functions */
#if defined(DPI_COMPATIBILITY_VERSION_1800v2005)
#ifndef VPI_VECVAL
#define VPI_VECVAL
typedef struct vpi_vecval
{
    uint32_t a;
    uint32_t b;
} s_vpi_vecval, *p_vpi_vecval;
#endif
#endif
