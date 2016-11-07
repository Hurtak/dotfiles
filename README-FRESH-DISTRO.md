# Stuf to do after fresh distro installation

## Install

- video card
    - check if Unity is hardware accelerated
        - /usr/lib/nux/unity_support_test -p
    - update graphics drivers
        - https://01.org/linuxgraphics/downloads (Intel Graphics Update Tool for Linux)
        - http://askubuntu.com/questions/838296/intel-graphics-driver-for-ubuntu-16-10
- chrome
    - log in
    - wait for it to sync
        - bookmarks
        - plugins
- SpiderOakONE
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
- pick http://kryogenix.org/code/pick/
- apt-get
    - git
    - vim
    - mc (midnight commanged)
    - unity-tweak-tool
    - xclip
    - htop
    - gimp
    - vlc
    - vlc-plugin-vlsub
- npm
    - trash-cli
    - tldr
    - cloc
    - http-server
    - npm-check # management of outdated dependencies
    - speed-test

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
- Security & Privacy
    - Files & Applications
        - [] Record file application usage
- Time & Date
    - Clock
        - [x] 24-hour time
        - [x] Date and month

## Unity tweak tool

- Launcher
    - [x] Minimize single window applications on click
- Search
    - [ ] Background blur
- General
    - Hardware acceleration
        - Texture quality -> Fast
    - Animations
        - Minimize -> None
        - Unminimize -> None

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

- something better than lastpass
    - add password to ssh key
    - new master password?
    - trezor?
    - generate ssh keys
        - copy work ssh keys here
    - https://help.github.com/articles/working-with-ssh-key-passphrases/
- vpn?
- lamp or use docker directly?
    - https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-14-04
    - php
    - mysql
    - docker
