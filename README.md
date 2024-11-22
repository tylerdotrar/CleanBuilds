# CleanBuilds
This repository is a collection of personal scripts for fresh, clean, & custom images for different Operating Systems; the intention being for these scripts to be able to run on completely fresh OS images.

| OS | Status |
| --- | --- |
| **Kali Linux** | `Supported` |
| **Endeavour OS** | `WIP` |
| **Windows 10** | `WIP` |
| **Windows 11** | `WIP` |

## kali-i3

- **Note(s):**
  - This was heavily inspired off of [Mesumine's kali-i3-endeavour](https://github.com/Mesumine/kali-i3-endeavour) repository.
  - Tested on a fresh '_kali-linux-2022.04-installer-amd64.iso_' image on Proxmox VE.

**Installation:**
```shell
git clone https://github.com/tylerdotrar/CleanBuilds
cd CleanBuilds/kali-i3
chmod +x build.sh
./build.sh
```

**Default Kali:**
![Before](https://github.com/user-attachments/assets/b960c56c-4516-4434-95b7-4709cd75aa60)


**Custom i3 Kali:**
![After](https://github.com/user-attachments/assets/16ca7037-0ed7-4972-84e2-1cdb69ec8a4a)


**General i3 Keybindings:**
```
# Configured in: '~/.config/i3/config`

# Primary Mod Key
Mod = Windows Key

# Common
Mod + Enter           = New Terminal Window
Mod + W               = New Firefox Window
Mod + Q               = Kill Focused window
Mod + H               = Open New Windows Horizontally
Mod + V               = Open New Windows Vertically

# Movement
Mod + <num>           = Change Workspace
Mod + <arrow>         = Change Current Focused Window
Mod + Shift + <num>   = Move Window to Specified Workspace
Mod + Shift + <arrow> = Move Window to Next/Last Workspace
Mod + <click_drag>    = Drag Window to Specified Location

# Less Common
Mod + T               = List / search all open processes (fancy Alt Tab)
Mod + D               = List / Search for application to launch
Mod + F               = Fullscreen Current Focused Window
Mod + E               = Split Window View (default)
Mod + S               = Stacked Window view (kinda ugly)
Mod + Shift + G       = Tabbed Window View (eh)
Mod + Shift + R       = Reload i3 Window Manager
```

## Endeavour OS
- ``Work-in-Progress``


## Windows 10
- ``Work-in-Progress``


## Windows 11
- ``Work-in-Progress``
