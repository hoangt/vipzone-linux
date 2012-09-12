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

#ifdef CONFIG_DANNY_MODS
/*DANNY-MODS START*/
/* vipzone flags = 3 MSB in a byte */ 
#ifndef _VIP_ZONE_FLAGS
#define _VIP_F_READ      0x0010 /*00x1 0000 */
#define _VIP_F_WRITE     0x0040 /*01x0 0000 */
#define _VIP_F_HI_UTIL   0x0050 /*01x1 0000 */
#define _VIP_F_MI_UTIL   0x0080 /*10x0 0000 */
#define _VIP_F_LO_UTIL   0x0090 /*10x1 0000 */
#define _VIP_MASK        0x00d0 /*1101 0000 in binary*/
#define _VIP_F_SHIFT     8 /*not sure if needed*/
#endif
/*DANNY-MODS END*/
#endif

#endif /* __ASM_GENERIC_MMAN_H */
