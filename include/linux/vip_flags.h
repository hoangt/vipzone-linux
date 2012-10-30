//vipzone

#ifdef CONFIG_VIPZONE_FRONT_END

#define NO_NEED_DMA_DMA32 0
#define NEED_DMA 1
#define NEED_DMA32 2

#define VIP_FREE_THRESHOLD 2 //This threshold means zone should have at least 20% free space -- we use integer multiplication to avoid floating point operations

#define _VIP_TYP_READ			0x0000 // xxx0 xxxx
#define _VIP_TYP_WRITE			0x0010 // xxx1 xxxx
#define _VIP_TYP_MASK			0x0010 // 0001 0000

#define _VIP_UTIL_LO				0x0000 // xx0x xxxx
#define _VIP_UTIL_HI				0x0020 // xx1x xxxx
#define _VIP_UTIL_MASK			0x0020 // 0010 0000

#define _VIP_MASK					0x0030 // 0011 0000

#endif
