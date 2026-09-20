#!/bin/sh

set -eu

ARCH=$(uname -m)

echo "Installing package dependencies..."
echo "---------------------------------------------------------------"
pacman -Syu --noconfirm \
  nheko \
  kimageformats \
  gst-libav \
  gst-plugin-qml6 \
  gst-plugins-bad \
  gst-plugins-good \
  qt6ct \
  kvantum \
  lxqt-qtplugin

echo "Installing debloated packages..."
echo "---------------------------------------------------------------"
get-debloated-pkgs --add-common --prefer-nano

make-aur-package qt6-jdenticon

