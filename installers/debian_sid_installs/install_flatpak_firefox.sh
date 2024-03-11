#!/bin/bash
#Uninstall preinstalled firefox
sudo apt autoremove firefox && sudo apt autoremove firefox-esr
flatpak install --user org.mozilla.firefox/x86_64/stable flathub -y
#Install extensions
echo "Install some useful extensions manually:"
echo "bitwarden: https://addons.mozilla.org/en-US/firefox/addon/bitwarden-password-manager/"
echo "search_by_image: https://addons.mozilla.org/en-US/firefox/addon/search_by_image/"
echo "ublock: https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/"
echo "umatrix: https://addons.mozilla.org/en-US/firefox/addon/umatrix/"
echo "Theme: https://addons.mozilla.org/en-US/firefox/addon/catppuccin-muave-frappe/"
echo "Video DownloadHelper: https://addons.mozilla.org/en-US/firefox/addon/video-downloadhelper/"
echo "Return youtube dislikes: https://addons.mozilla.org/en-US/firefox/addon/return-youtube-dislikes"
echo "User-Agent Switcher and Manager by Ray: https://addons.mozilla.org/en-US/firefox/addon/user-agent-string-switcher"
echo "Link Gopher: https://addons.mozilla.org/en-US/firefox/addon/link-gopher"
echo "Add custom search engine: https://addons.mozilla.org/en-US/firefox/addon/add-custom-search-engine"
echo "YouTube NonStop by lawfx: https://addons.mozilla.org/en-US/firefox/addon/youtube-nonstop/"
echo "Keywords display: https://addons.mozilla.org/en-US/firefox/addon/display-slmarketplace-keywords/"
