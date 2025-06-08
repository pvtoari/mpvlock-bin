#!/bin/bash
set -e

BIN_DIR="/usr/bin"
LIB_DIR="/usr/lib"
PAM_DIR="/etc/pam.d"
FONTS_DIR="/usr/share/fonts/mpvlock"
LICENSES_DIR="/usr/share/licenses/mpvlock"
USER_MPVLOCK_INSTALL_DIR="$HOME/.config/mpvlock"

echo "[*] Starting mpvlock installation..."

echo
echo "[+] Creating system-wide directories..."
sudo mkdir -vp "$BIN_DIR" "$LIB_DIR" "$PAM_DIR" "$FONTS_DIR" "$LICENSES_DIR"

echo
echo "[+] Creating user-specific configuration directory..."
mkdir -vp "$USER_MPVLOCK_INSTALL_DIR"

echo
echo "[+] Installing binaries and libraries..."
sudo cp -v bin/mpvlock "$BIN_DIR/"
sudo cp -v libs/libhyprutils.so.5 "$LIB_DIR/"

echo
echo "[+] Installing PAM configuration..."
sudo cp -v etc/pam.d/mpvlock "$PAM_DIR/"

echo
echo "[+] Installing user configurations, themes, and scripts..."
cp -vrT .config/mpvlock "$USER_MPVLOCK_INSTALL_DIR"

echo
echo "[+] Installing fonts..."
sudo cp -vr share/fonts/mpvlock/ "$FONTS_DIR/"

echo
echo "[+] Installing license..."
sudo cp -v share/licenses/mpvlock/LICENSE "$LICENSES_DIR/LICENSE"

echo
echo "[*] Installation completed successfully"