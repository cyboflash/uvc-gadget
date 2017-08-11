CROSS_COMPILE ?= aarch64-linux-gnu-
ARCH          ?= aarch64
KERNEL_DIR    ?= $(HOME)/myfs/pkg/Xilinx/petalinux-v2016.3-final/tools/linux-i386/aarch64-linux-gnu/aarch64-linux-gnu/libc/usr

CC             := $(CROSS_COMPILE)gcc
KERNEL_INCLUDE := -I$(KERNEL_DIR)/include -I$(KERNEL_DIR)/arch/$(ARCH)/include
INCLUDE        := -I$(HOME)/myfs/pkg/Xilinx/petalinux-v2016.3-final/components/linux-kernel/xlnx-4.6/drivers/usb
CFLAGS         := -W -Wall -g $(KERNEL_INCLUDE) $(INCLUDE)
LDFLAGS        := -g

all: uvc-gadget

uvc-gadget: uvc-gadget.o
	$(CC) $(LDFLAGS) -o $@ $^

clean:
	rm -f *.o
	rm -f uvc-gadget
