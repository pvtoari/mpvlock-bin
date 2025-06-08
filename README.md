# mpvlock-bin

`mpvlock-bin` is an unofficial repackaging of the `mpvlock` screen locker utility for Hyprland, bundled with its required runtime library (`libhyprutils.so.5`) and configuration assets. This repository aims to preserve functionality for legacy users, as the original sources have been taken offline.

> **⚠️ Note:** The original source code for `mpvlock` is no longer available. As such, **only the binary is provided**, with no claim of authorship or modification.

## What’s included

- `bin/mpvlock`: Prebuilt `mpvlock` v0.1.0 (commit 484b28c)
- `libs/libhyprutils.so.5`: Required runtime library, built from [hyprutils v0.5.0-1](https://gitlab.archlinux.org/archlinux/packaging/packages/hyprutils)
- `/etc/pam.d/mpvlock`: PAM configuration for authentication
- `~/.config/mpvlock`: User config directory
- Fonts used by `mpvlock` in `/usr/share/fonts/mpvlock/`
- Install and uninstall helper scripts

## Installation

Run the included `install.sh` script:

```bash
chmod +x install.sh
./install.sh
```

This will:
- Copy the `mpvlock` binary to `/usr/bin/`
- Install the `libhyprutils.so.5` library to `/usr/lib/`
- Set up PAM configs, fonts, configs and licenses

Uninstall with:

```bash
./uninstall.sh
```

Installation paths can be customized by editing the variables in both scripts.

## Licenses and authorship

**mpvlock**
- Original author: **nomadxxxx** (original source and user are no longer available)
- License: **GPLv3**
- License file: At `licenses/mpvlock/LICENSE`
- Source code: **Partially available,** https://github.com/hyprwm/hyprlock/pull/734
- Binary is provided as-is, for preservation purposes only.
- If you have the original source code, please consider sharing it.
- If you are the original author and wish to remove this binary, please contact me.

**hyprutils**:
- License: **BSD-3-Clause**
- License file: At `licenses/hyprutils/LICENSE`
- Source code: https://gitlab.archlinux.org/archlinux/packaging/packages/hyprutils
