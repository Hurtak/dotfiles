# Stuf to do after fresh distro installation

- Install
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
- System settings
    - Sound
        - check > allow louder than 100%
    - Mouse & Touchpad
        - fine tun mouse speed & touchpad speed
        - check > two finger scroll
        - uncheck > natural scrolling
    - Text entry
        - add Czech
    - Displays
        - uncheck > Sticky edges
- Fix bad "tinned" audio on notebook
    - http://www.webupd8.org/2011/04/system-wide-pulseaudio-equalizer.html
    - open PulseAudio equalizer
    - set preset to "Soft Rock"
    - check > EQ enabled
    - check > Keep settings
- Fix screen brightness settings
    - https://ubuntuforums.org/showthread.php?t=1497518&page=2&p=11158182#post11158182
    - You need to edit the grub file with root permissions. Type in a terminal
    - sudo vim /etc/default/grub
    - then change the line
        GRUB_CMDLINE_LINUX=""
    - with
        GRUB_CMDLINE_LINUX="acpi_osi=Linux"
    - save changes, go back to the terminal and type
    - sudo update-grub
    - and restart

# TODO
    - dot files
        - consider what can be put into the dotfiles from this readme
        - source .bashrc doesent work from script & it probably should not be there - you should manually check files
        - add comments at the start and at the end of files - but only if we are appending to already existing file, otherwise just put the contents in
        - alias for pc restart/shutdown/sleep ?
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
    - ruler
    - vpn?
    - php
    - mysql
    - torrent
    - docker


## Articles
    - dpkg vs apt vs apt-get vs aptitude
