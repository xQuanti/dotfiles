#!/bin/bash
sudo apt install flatpak
flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo

flatpak install --user app/com.brave.Browser/x86_64/stable
flatpak install --user app/org.mozilla.Thunderbird/x86_64/stable
flatpak install --user app/org.raspberrypi.rpi-imager/x86_64/stable
flatpak install --user app/org.gaphor.Gaphor/x86_64/stable
flatpak install --user app/org.signal.Signal/x86_64/stable
flatpak install --user app/com.github.PintaProject.Pinta/x86_64/stable
flatpak install --user app/org.blender.Blender/x86_64/stable
flatpak install --user app/com.belmoussaoui.Decoder/x86_64/stable
flatpak install --user app/md.obsidian.Obsidian/x86_64/stable
flatpak install --user org.firestormviewer.FirestormViewer
flatpak install flathub app.moosync.moosync
flatpak install flathub net.ankiweb.Anki
flatpak install flathub io.github.seadve.Mousai
flatpak install flathub im.riot.Riot
