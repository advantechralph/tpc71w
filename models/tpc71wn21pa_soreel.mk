ifeq ($(modelname),tpc71wn21pa_soreel)
bspname:=TPC71W-N21PA-r1-Ubuntu1604-SOREEL-$(shell date +"%Y%m%d")
rootfs=$(CURRDIR)/rootfs/n21pa
spl=$(CURRDIR)/spl/n21pa/SPL
dtb=$(CURRDIR)/dtb/n21pa/imx6q-tpc71w-n21pa.dtb
u-boot=$(CURRDIR)/u-boot/n21pa
logo=$(CURRDIR)/logo/soreel/adv_logo_1024x600_32bpp.bmp
endif
