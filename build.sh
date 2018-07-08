#!/usr/bin/env bash

source /opt/fsl-imx-fb/4.9.11-1.0.0/environment-setup-cortexa9hf-neon-poky-linux-gnueabi
sudo umount /media/bobby/6231-3931
make myboard_defconfig || { exit 1; }
make u-boot.imx || { exit 1; }
sudo dd if=u-boot.imx of=/dev/sdc bs=1k seek=1 conv=fsync | { exit 1; }
