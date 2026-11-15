# QTI IMS stack for LTE v4xx (v410/v490).
# Daemons: w7 (msm8226) where available; APK/libs: m216 (only complete 32-bit set).
# NOT inherited by device.mk until CS voice gate passes (MO ACTIVE + MT ring).
# Keep config_device_volte_available=false until ImsService binds + IMS_REG on-device.
# Do NOT set persist.radio.calls.on.ims=true / jbims=1 until that gate passes.
# HITL: shipping this mk with ims_daemon=1 left GET_CURRENT_CALLS stuck at DIALING.

PRODUCT_COPY_FILES += \
    vendor/lge/v4xx-common/proprietary/bin/imsqmidaemon:system/bin/imsqmidaemon \
    vendor/lge/v4xx-common/proprietary/bin/imsdatadaemon:system/bin/imsdatadaemon \
    vendor/lge/v4xx-common/proprietary/bin/ims_rtp_daemon:system/bin/ims_rtp_daemon \
    vendor/lge/v4xx-common/proprietary/bin/imscmservice:system/bin/imscmservice \
    vendor/lge/v4xx-common/proprietary/etc/permissions/ims.xml:system/etc/permissions/ims.xml \
    vendor/lge/v4xx-common/proprietary/etc/permissions/imscm.xml:system/etc/permissions/imscm.xml \
    vendor/lge/v4xx-common/proprietary/vendor/lib/lib-dplmedia.so:system/vendor/lib/lib-dplmedia.so \
    vendor/lge/v4xx-common/proprietary/vendor/lib/lib-ims-rcscmjni.so:system/vendor/lib/lib-ims-rcscmjni.so \
    vendor/lge/v4xx-common/proprietary/vendor/lib/lib-imsSDP.so:system/vendor/lib/lib-imsSDP.so \
    vendor/lge/v4xx-common/proprietary/vendor/lib/lib-imsdpl.so:system/vendor/lib/lib-imsdpl.so \
    vendor/lge/v4xx-common/proprietary/vendor/lib/lib-imsqimf.so:system/vendor/lib/lib-imsqimf.so \
    vendor/lge/v4xx-common/proprietary/vendor/lib/lib-imsrcs.so:system/vendor/lib/lib-imsrcs.so \
    vendor/lge/v4xx-common/proprietary/vendor/lib/lib-imsrcscm.so:system/vendor/lib/lib-imsrcscm.so \
    vendor/lge/v4xx-common/proprietary/vendor/lib/lib-imsrcscmclient.so:system/vendor/lib/lib-imsrcscmclient.so \
    vendor/lge/v4xx-common/proprietary/vendor/lib/lib-imsrcscmservice.so:system/vendor/lib/lib-imsrcscmservice.so \
    vendor/lge/v4xx-common/proprietary/vendor/lib/lib-imss.so:system/vendor/lib/lib-imss.so \
    vendor/lge/v4xx-common/proprietary/vendor/lib/lib-imsvt.so:system/vendor/lib/lib-imsvt.so \
    vendor/lge/v4xx-common/proprietary/vendor/lib/lib-imsxml.so:system/vendor/lib/lib-imsxml.so \
    vendor/lge/v4xx-common/proprietary/vendor/lib/lib-rcsimssjni.so:system/vendor/lib/lib-rcsimssjni.so \
    vendor/lge/v4xx-common/proprietary/vendor/lib/lib-rcsjni.so:system/vendor/lib/lib-rcsjni.so \
    vendor/lge/v4xx-common/proprietary/vendor/lib/lib-rtpcommon.so:system/vendor/lib/lib-rtpcommon.so \
    vendor/lge/v4xx-common/proprietary/vendor/lib/lib-rtpcore.so:system/vendor/lib/lib-rtpcore.so \
    vendor/lge/v4xx-common/proprietary/vendor/lib/lib-rtpdaemoninterface.so:system/vendor/lib/lib-rtpdaemoninterface.so \
    vendor/lge/v4xx-common/proprietary/vendor/lib/lib-rtpsl.so:system/vendor/lib/lib-rtpsl.so \
    vendor/lge/v4xx-common/proprietary/vendor/lib/libimscamera_jni.so:system/vendor/lib/libimscamera_jni.so \
    vendor/lge/v4xx-common/proprietary/vendor/lib/libimsmedia_jni.so:system/vendor/lib/libimsmedia_jni.so

PRODUCT_PACKAGES += \
    ims \
    imssettings \
    imscmlibrary
