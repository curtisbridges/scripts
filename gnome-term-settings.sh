#!/bin/sh

# This script is relatively incomplete as it only sets a few settings. I mostly wanted it as a proof of concept.
# Ultimately, I want a terminal that has its config in the ~/.config directory.



# refernce: https://ncona.com/2019/11/configuring-gnome-terminal-programmatically/
GNOME_TERMINAL_PROFILE=`gsettings get org.gnome.Terminal.ProfilesList default | awk -F \' '{print $2}'`

# gsettings list-keys org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/

# foreground-color
# highlight-foreground-color
# word-char-exceptions
# audible-bell
# palette
# encoding
# bold-color-same-as-fg
# login-shell
# default-size-rows
# cursor-blink-mode
# cursor-colors-set
# cursor-background-color
# enable-bidi
# use-transparent-background
# scrollbar-policy
# use-system-font
# bold-color
# cursor-foreground-color
# visible-name
# custom-command
# scrollback-unlimited
# font
# use-theme-transparency
# cjk-utf8-ambiguous-width
# cursor-shape
# use-custom-command
# exit-action
# bold-is-bright
# scroll-on-output
# highlight-colors-set
# delete-binding
# preserve-working-directory
# backspace-binding
# background-transparency-percent
# cell-height-scale
# use-theme-colors
# background-color
# highlight-background-color
# enable-shaping
# default-size-columns
# cell-width-scale
# scroll-on-keystroke
# rewrap-on-resize
# scrollback-lines
# text-blink-mode

gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ font 'Cascadia Code 12'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ use-system-font false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ audible-bell false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ use-theme-colors false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ use-transparent-background true
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ background-transparency-percent 10
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ default-size-columns 120
