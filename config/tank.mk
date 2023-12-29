# Settings for compiling tank camera architecture
# Localized KCONFIG settings
# Camera: Remove for user build
ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
CONFIG_CCI_DEBUG_INTF := y
ccflags-y += -DCONFIG_CCI_DEBUG_INTF=1
endif

# Flags to pass into C preprocessor
CONFIG_MOT_OIS_DW9784_DRIVER := y
ccflags-y += -DCONFIG_MOT_OIS_DW9784_DRIVER=1