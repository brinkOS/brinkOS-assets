#! /bin/bash
gsettings set org.gnome.settings-daemon.peripherals.touchpad tap-to-click false
gsettings set org.cinnamon.desktop.interface gtk-theme "brinkOS-Dark"
gsettings set org.cinnamon.desktop.wm.preferences theme "brinkOS-Dark"
gsettings set org.cinnamon.theme name "brinkOS-Dark"
gsettings set org.cinnamon.desktop.interface icon-theme "brinkOS"
gsettings set org.cinnamon.desktop.wm.preferences button-layout 'menu:minimize,maximize,close'
gsettings set org.cinnamon.settings-daemon.plugins.xsettings overrides "{'Gtk/DecorationLayout': <':minimize,maximize,close'>}"
gsettings set org.nemo.desktop show-desktop-icons true
gsettings set org.nemo.desktop computer-icon-visible true
gsettings set org.nemo.desktop home-icon-visible true
gsettings set org.nemo.desktop trash-icon-visible true

# Terminal settings
gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false
profile=$(gsettings get org.gnome.Terminal.ProfilesList default)
profile=${profile:1:-1} # remove leading and trailing single quotes
gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/" visible-name 'brinkOS'
gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/" use-transparent-background true
gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/" background-transparency-percent 3


# Pamac settings
gsettings set org.pamac.aur enable-aur true
gsettings set org.pamac.aur check-aur-updates true
gsettings set org.pamac.aur search-in-aur true

# gsettings set org.cinnamon favorite-apps "['google-chrome.desktop', 'ice.desktop', 'org.gnome.Nautilus.desktop', 'geary.desktop', 'empathy.desktop', 'gnome-music.desktop', 'org.gnome.Photos.desktop', 'org.gnome.Totem.desktop', 'libreoffice-writer.desktop', 'libreoffice-impress.desktop', 'libreoffice-calc.desktop', 'org.gnome.gedit.desktop', 'gnome-terminal.desktop', 'gnome-tweak-tool.desktop', 'gnome-control-center.desktop', 'pamac-manager.desktop', 'calamares.desktop']"
gsettings set org.freedesktop.Tracker.Miner.Files index-recursive-directories "['$HOME', '&DOCUMENTS', '&DOWNLOAD', '&MUSIC', '&PICTURES', '&VIDEOS']"
gsettings set org.freedesktop.Tracker.Miner.Files crawling-interval -2
gsettings set org.freedesktop.Tracker.Miner.Files enable-monitors false
gsettings set org.cinnamon.desktop.background picture-uri file:///usr/share/backgrounds/gnome/mountain-top.jpg
tracker-control -r