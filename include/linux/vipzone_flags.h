//vipzone

#ifdef CONFIG_VIPZONE_FRONT_END

#define NEED_DMA32 1
#define NO_NEED_DMA32 0

#ifndef _VIPZONE_FLAGS
#define _VIPZONE_FLAGS

#define _VIP_TYP_READ			0x0000 // x0xx xxxx
#define _VIP_TYP_WRITE			0x0040 // x1xx xxxx
#define _VIP_TYP_MASK			0x0040 // 0100 0000

#define _VIP_UTIL_LO				0x0000 // 0xxx xxxx
#define _VIP_UTIL_HI				0x0080 // 1xxx xxxx
#define _VIP_UTIL_MASK			0x0080 // 1000 0000

#define _VIP_MASK					0x00c0 // 1100 0000 

//Macros for extracting vipzone flags
//#define is_vip_typ_read(vip_flags) (vip_flags & _VIP_TYP_MASK == _VIP_TYP_READ)
//#define is_vip_typ_write(vip_flags) (vip_flags & _VIP_TYP_MASK == _VIP_TYP_WRITE)

//#define is_vip_util_lo(vip_flags) (vip_flags & _VIP_UTIL_MASK == _VIP_UTIL_LO)
//#define is_vip_util_hi(vip_flags) (vip_flags & _VIP_UTIL_MASK == _VIP_UTIL_HI)

//#define is_vip_flags_legal(vip_flags) (vip_flags & ~_VIP_MASK == 0)

#endif
#endif
