# Separate mk for KekHunterOS

# Include TWRP
$(call inherit-product-if-exists, vendor/lineage/config/twrp.mk)

# Include Firmware
$(call inherit-product-if-exists, vendor/firmware/atheros/atheros.mk)
$(call inherit-product-if-exists, vendor/firmware/zd1211/zd1211.mk)

# Bootanimation
$(call inherit-product-if-exists, vendor/lineage/bootanimation/bootanimation.mk)

#
# Prebuilt nethunter packages
#
PRODUCT_PACKAGES += \
	NetHunter-T420 \
	Term-420 \
	kex \
	nhstore \
	nhstorepriv \

#
# Prebuilt 3party apps
#

PRODUCT_PACKAGES += \
	hidkeyboard \
	rucky \
	shodan \
	termux \
	wigle 

#
# Kali bin files (in android it goes into /system/xbin)
#

PRODUCT_PACKAGES += \
	bootkali \
	bootkali_bash \
	bootkali_env \
	bootkali_init \
	bootkali_log \
	bootkali_login \
	busybox \
	nh_busybox \
	changemac \
	chrootmgr \
	hid-keyboard \
	kaliservices \
	killkali \
	macchanger \
	sqllite3 \
	start-ssh \
	stop-ssh \
	usbarmory \
	usbtethering \
	xz

#
# Include firmware
#

PRODUCT_PACKAGES += \
	firmware

#
# Custom apps like launchers and stores
#

PRODUCT_PACKAGES += \
	fdroid
