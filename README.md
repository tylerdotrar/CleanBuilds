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
![Before](https://cdn.discordapp.com/attachments/855920119292362802/1161890616364515359/image.png?ex=6539f1f5&is=65277cf5&hm=17f5070d313ce76c18c377cb3f1a9cb1796a0c65960e00902c0db05dae1f52ae&)

**Custom i3 Kali:**
![After](https://cdn.discordapp.com/attachments/855920119292362802/1161891853231214604/image.png?ex=6539f31c&is=65277e1c&hm=ccc2d60f09f1db8aca2dd73e3b9e1c9725de2d66987e3277d8ce58929c237bec&)

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
