#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:67108864:85999ae19aa93d2d23c9b8b102e4329b338ab835 > /cache/recovery/last_install_recovery_status; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:67108864:38e401d2f4c60a8970243ae31fbf0dc56177b30f \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:67108864:85999ae19aa93d2d23c9b8b102e4329b338ab835 >> /cache/recovery/last_install_recovery_status && \
      echo "Installing new recovery image: succeeded" >> /cache/recovery/last_install_recovery_status || \
      echo "Installing new recovery image: failed" >> /cache/recovery/last_install_recovery_status
else
  echo "Recovery image already installed" >> /cache/recovery/last_install_recovery_status
fi
