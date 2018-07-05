#!/usr/bin/env bash

make myboard_defconfig || { exit 1; }
make u-boot.imx || { exit 1; }
sudo dd if=u-boot.imx of=/dev/sdc bs=1k seek=1 conv=fsync | { exit 1; }
