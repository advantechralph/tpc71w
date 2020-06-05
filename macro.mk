############################
#           basic          #
############################
CURRDIR=$(shell realpath -m .)
export SHELL=bash
modelname:=tpc71wn10pa
rootfs=$(CURRDIR)/rootfs/n10pa
logo=$(CURRDIR)/logo/advantech/adv_logo_1024x600_32bpp.bmp
kernel=$(CURRDIR)/kernel/zImage
spl=$(CURRDIR)/spl/n10pa/SPL
dtb=$(CURRDIR)/dtb/n10pa/imx6dl-tpc71w-n10pa.dtb
u-boot=$(CURRDIR)/u-boot/n10pa
scripts=$(CURRDIR)/scripts/basic
packedrootfs=ubuntu16044.tar.gz
define releaseinfo
$(shell date +"%Y%m%d%H%M%S")
uboot:2016.03
kernel:4.1.15
rootfs:ubunu16044
version:$(modelname) r1
endef
export releaseinfo
############################
#           path           #
############################
builddir:=$(CURRDIR)/build
logdir:=$(builddir)/log
############################
#          docker          #
############################
repo:=advantechralph/work:tpc71w
container:=$(modelname)_bsp
