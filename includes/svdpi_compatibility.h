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
#if defined(DPI_COMPATIBILITY_VERSION_1800v2012)
#if defined(DPI_COMPATIBILITY_VERSION_1800v2005)
#error "Only one DPI_COMPATIBILITY_VERSION symbol definition is allowed."
#endif
#ifndef VPI_VECVAL
#define VPI_VECVAL

/*
 * DPI representation of packed arrays.
 * 2-state and 4-state vectors, exactly the same as PLI's avalue/bvalue.
 */

typedef struct t_vpi_vecval {
uint32_t aval;
uint32_t bval;
} s_vpi_vecval, *p_vpi_vecval;
#endif


#elif defined(DPI_COMPATIBILITY_VERSION_1800v2005)
#if defined(DPI_COMPATIBILITY_VERSION_1800v2012)
#error "Only one DPI_COMPATIBILITY_VERSION symbol definition is allowed."
#endif
#ifndef VPI_VECVAL
#define VPI_VECVAL
typedef struct vpi_vecval {
    uint32_t a;
    uint32_t b;
} s_vpi_vecval, *p_vpi_vecval;
#endif

#else
#warning "XCELIUM is currently compliant with DPI header file svdpi.h as per IEEE 1800-2005. Starting IUS17.10, the default header file will be as per IEEE 1800-2012. DPI applications which need to continue complying with IEEE 1800-2005 will need to compile with the macro DPI_COMPATIBILITY_VERSION_1800v2005 starting in 17.1. The difference in the two header files is in the declaration of the struct t_vpi_vecval."

#endif


