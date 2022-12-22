#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:17150880:ddcb4bbf9fb2e456004ef275fe067d0bcfa7bed3; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:9360288:fb1dc2c46d75835435df0d8a2c0d2531e44b84d2 EMMC:/dev/block/platform/bootdevice/by-name/recovery ddcb4bbf9fb2e456004ef275fe067d0bcfa7bed3 17150880 fb1dc2c46d75835435df0d8a2c0d2531e44b84d2:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
