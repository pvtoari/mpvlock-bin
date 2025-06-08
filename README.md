# mpvlock-bin

https://github.com/user-attachments/assets/1af1cf60-b0d0-4423-b7b6-971721197959

`mpvlock-bin` is an unofficial repackaging of the `mpvlock` screen locker utility for Hyprland, bundled with its required runtime library (`libhyprutils.so.5`) and configuration assets. This repository aims to preserve functionality for legacy users, as the original sources have been taken offline.

> [!NOTE]
> The latest original source code for `mpvlock` is no longer available. As such, **only the binary that is assumed to be the newest is provided.**, with no claim of authorship or modification. See [Disclaimer](#Disclaimer) section for more details.

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

## Disclaimer

The binaries distributed do not match the source code provided as as submodule, this partially solves legal issues with the GPL v3 license.

Therefore, there are some differences between the source code and the binary, which are listed below:

|                               | Binaries | Source code |
|-------------------------------|----------|-------------|
| Video playback on lock screen | Yes      | Yes         |
| Audio playback on lock screen | Yes      | Yes         |
| Vertical labels               | Yes      | No          |

## Licenses and authorship

**mpvlock**
- Original author: **nomadxxxx** (original source and user are no longer available)
- License: **GPLv3**
- License file: At `licenses/mpvlock/LICENSE`
- Source code: **Partially available,** see https://github.com/ZhengLinLei/hyprlock-mpvlock-fork-src
- Binary is provided as-is, for preservation purposes only.
- If you have the original source code, please consider sharing it.
- If you are the original author and wish to remove this binary, please contact me.

**hyprutils**:
- License: **BSD-3-Clause**
- License file: At `licenses/hyprutils/LICENSE`
- Source code: https://gitlab.archlinux.org/archlinux/packaging/packages/hyprutils
