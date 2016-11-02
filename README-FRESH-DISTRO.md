# Stuf to do after fresh distro installation

## Install

- chrome
    - log in
    - wait for it to sync
        - bookmarks
        - plugins
- vscode
    - install "Visual Studio Code Settings Sync"
        - sync settings
        - turn on auto download on startup
        - turn on auto upload on setting change
- sublime text
- install nodejs
    - https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
    - install build tools (build-essentials)
    - setup npm permissions https://docs.npmjs.com/getting-started/fixing-npm-permissions
- spotify
- apt-get
    - git
    - xclip
    - mc (midnight commanged)
- npm
    - trash-cli
    - tldr
    - cloc
    - http-server
    - npm-check # management of outdated dependencies

## System settings

- Sound
    - [x] allow louder than 100%
- Mouse & Touchpad
    - fine tun mouse speed & touchpad speed
    - [x] two finger scroll
    - [ ] natural scrolling
- Text entry
    - add Czech
- Displays
    - [ ] Sticky edges
- Time & Date
    - [x] 24-hour time
    - [x] Date and month

## Fix bad "tinned" audio on notebook

- http://www.webupd8.org/2011/04/system-wide-pulseaudio-equalizer.html
- open PulseAudio equalizer
- set preset to "Soft Rock"
- [x] EQ enabled
- [x] Keep settings

## Fix screen brightness settings

- https://ubuntuforums.org/showthread.php?t=1497518&page=2&p=11158182#post11158182
- You need to edit the grub file with root permissions. Type in a terminal
- sudo vim /etc/default/grub
- then change `GRUB_CMDLINE_LINUX=""`
- to `GRUB_CMDLINE_LINUX="acpi_osi=Linux"`
- save changes, go back to the terminal and type
- `sudo update-grub`
- restart

## TODO

- steam broken?
- sudo apt-get update broken?
- ruler
    - http://askubuntu.com/questions/5324/what-is-a-good-pixel-ruler
    - http://www.omgubuntu.co.uk/2016/05/color-picker-tool-linux
    - http://stackoverflow.com/questions/9003632/color-picker-utility-color-pipette-in-ubuntu
- learn with xclip or find nodejs replacement
- git gui?
- dropbox (or some other alternatives?)
- something easier to use than vim?
- something for image editing
- pidgin
- something better than lastpass
    - add password to ssh key
    - new master password?
    - trezor?
    - generate ssh keys
        - copy work ssh keys here
- shareX?
- vpn?
- php
- mysql
- torrent
- docker
