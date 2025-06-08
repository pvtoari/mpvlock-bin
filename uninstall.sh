#!/bin/bash
set -e

BIN_DIR="/usr/bin"
LIB_DIR="/usr/lib"
PAM_DIR="/etc/pam.d"
FONTS_DIR="/usr/share/fonts/mpvlock"
LICENSES_DIR="/usr/share/licenses/mpvlock"
USER_MPVLOCK_INSTALL_DIR="$HOME/.config/mpvlock"

echo "[*] Starting mpvlock uninstallation..."

echo
echo "[-] Removing binaries and libraries..."
sudo rm -vf "$BIN_DIR/mpvlock"
sudo rm -vf "$LIB_DIR/libhyprutils.so.5"

echo
echo "[-] Removing PAM configuration..."
sudo rm -vf "$PAM_DIR/mpvlock"

echo
echo "[-] Removing user configurations, themes, and scripts..."
rm -rvf "$USER_MPVLOCK_INSTALL_DIR"

echo
echo "[-] Removing fonts..."
sudo rm -rvf "$FONTS_DIR"

echo
echo "[-] Removing license directory..."
sudo rm -rvf "$LICENSES_DIR"

echo
echo "[*] Uninstallation completed successfully"