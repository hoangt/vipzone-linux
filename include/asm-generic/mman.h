#ifndef __ASM_GENERIC_MMAN_H
#define __ASM_GENERIC_MMAN_H

#include <asm-generic/mman-common.h>

#define MAP_GROWSDOWN	0x0100		/* stack-like segment */
#define MAP_DENYWRITE	0x0800		/* ETXTBSY */
#define MAP_EXECUTABLE	0x1000		/* mark it as an executable */
#define MAP_LOCKED	0x2000		/* pages are locked */
#define MAP_NORESERVE	0x4000		/* don't check for reservations */
#define MAP_POPULATE	0x8000		/* populate (prefault) pagetables */
#define MAP_NONBLOCK	0x10000		/* do not block on IO */
#define MAP_STACK	0x20000		/* give out an address that is best suited for process/thread stacks */
#define MAP_HUGETLB	0x40000		/* create a huge page mapping */

#define MCL_CURRENT	1		/* lock all current mappings */
#define MCL_FUTURE	2		/* lock all future mappings */


#ifdef CONFIG_VIPZONE_FRONT_END

#define _VIP_TYP_READ         0x0000 // xxxx xxx0 -- default
#define _VIP_TYP_WRITE        0x0001 // xxxx xxx1
#define _VIP_TYP_MASK         0x0001 // 0000 0001 -- MASK

#define _VIP_UTIL_LO          0x0000 // xx00 xxxx -- default
#define _VIP_UTIL_MED         0x0010 // xx01 xxxx 
#define _VIP_UTIL_HI          0x0020 // xx10 xxxx
#define _VIP_UTIL_BAD         0x0030 // xx11 xxxx -- ILLEGAL
#define _VIP_UTIL_MASK        0x0030 // 0011 0000 -- MASK

#endif


#endif /* __ASM_GENERIC_MMAN_H */
