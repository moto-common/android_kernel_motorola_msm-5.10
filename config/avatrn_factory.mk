# Settings for compiling waipio camera architecture

# Localized KCONFIG settings
# Camera: Remove for user build
ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
CONFIG_CCI_DEBUG_INTF := y
ccflags-y += -DCONFIG_CCI_DEBUG_INTF=1
endif

ccflags-y += -DCONFIG_MOT_DONGWOON_OIS_AF_DRIFT=1
ccflags-y += -DCONFIG_MOT_OIS_EARLY_UPGRADE_FW=1
ccflags-y += -DCONFIG_MOT_CUSTOM_CTLE_PARAM=1
ccflags-y += -DCONFIG_MOT_SM7435_AVATRN=1
# Flags to pass into C preprocessor
