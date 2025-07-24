#!/bin/sh

cp fonts/Anta/Anta-Regular_for_gmb.ttf /home/$(logname)/.fonts/
# [EN] Appropriation of this file - [FR] Appropriation de ce fichier
sudo chown $(logname) /home/$(logname)/.fonts/Anta-Regular_for_gmb.ttf

cp fonts/DejaVuSerif-Italic/DejaVuSerif-Italic_for_gmb.ttf /home/$(logname)/.fonts/
# [EN] Appropriation of this file - [FR] Appropriation de ce fichier
sudo chown $(logname) /home/$(logname)/.fonts/DejaVuSerif-Italic_for_gmb.ttf

cp -r gmusicbrowser /home/$(logname)/.var/app/org.gmusicbrowser.gmusicbrowser/config
cp -r gtk-3.0 /home/$(logname)/.var/app/org.gmusicbrowser.gmusicbrowser/config
# [EN] Appropriation of these folders and files - [FR] Appropriation de ces dossiers et fichiers
find /home/$(logname)/.var/app/org.gmusicbrowser.gmusicbrowser/config -user root -exec sudo chown -R $(logname): {} +

cp gmusicbrowser.pl /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/bin
mv /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/bin/gmusicbrowser.pl /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/bin/gmusicbrowser

cp gmusicbrowser_layout.pm /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser

cp gmusicbrowser_list.pm /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser

cp fr/LC_MESSAGES/gmusicbrowser.mo /var/lib/flatpak/runtime/org.gmusicbrowser.gmusicbrowser.Locale/x86_64/stable/7ce5d4f4f3c406c7c4043f80cc5a8958b22b0637b33a55bc695e73bc38d639f0-fr/files/fr/share/fr/LC_MESSAGES

sed -i 's/("Custom auto-fill filename formats"/(_"Custom auto-fill filename formats"/g' /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/gmusicbrowser_tags.pm

rm /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/layouts/browser.layout

rm /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/layouts/contrib.layout

rm /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/layouts/fullscreen.layout

rm /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/layouts/main.layout

rm /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/layouts/makeitlooklike.layout

rm /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/layouts/search.layout

rm /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/layouts/shimmer.layout

rm /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/layouts/tray.layout

# 20/07/2025 : renomme pour désactiver les greffons H.S. :
mv /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/plugins/albuminfo.pm /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/plugins/albuminfo.pmback
mv /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/plugins/appindicator.pm /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/plugins/appindicator.pmback
mv /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/plugins/artistinfo.pm /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/plugins/artistinfo.pmback
mv /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/plugins/fetch_cover.pm /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/plugins/fetch_cover.pmback
mv /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/plugins/gnome_mmkeys.pm /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/plugins/gnome_mmkeys.pmback
mv /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/plugins/lyrics.pm /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/plugins/lyrics.pmback
mv /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/plugins/notify.pm /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/plugins/notify.pmback
mv /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/plugins/rip.pm /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/plugins/rip.pmback
mv /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/plugins/titlebar.pm /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/plugins/titlebar.pmback
mv /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/plugins/webcontext.pm /var/lib/flatpak/app/org.gmusicbrowser.gmusicbrowser/x86_64/stable/6ac440150c2564f217e8ce4d53a1b2c042a607ab7559d13a437b69b7ead4076d/files/share/gmusicbrowser/plugins/webcontext.pmback
# ------------------------------------------------------------ 

# 13/07/2025 : en cas d'ajout antérieur d'un bouton de plein écran via les réglages :
sed -i 's/AddFullscreenButton: 1/AddFullscreenButton: 0/g' /home/$(logname)/.var/app/org.gmusicbrowser.gmusicbrowser/config/gmusicbrowser/gmbrc
# ------------------------------------------------------------ 

# 15/07/2025 : force l'utilisation des mises en pages par défaut et icônes Camel :
sed -i 's/^Layout:.*$/Layout: Lists_Library_Context/g' /home/$(logname)/.var/app/org.gmusicbrowser.gmusicbrowser/config/gmusicbrowser/gmbrc
sed -i 's/^LayoutB:.*$/LayoutB: 3_Filter_panes/g' /home/$(logname)/.var/app/org.gmusicbrowser.gmusicbrowser/config/gmusicbrowser/gmbrc
sed -i 's/^LayoutF:.*$/LayoutF: default fullscreen/g' /home/$(logname)/.var/app/org.gmusicbrowser.gmusicbrowser/config/gmusicbrowser/gmbrc
sed -i 's/^LayoutT:.*$/LayoutT: Full_with_buttons/g' /home/$(logname)/.var/app/org.gmusicbrowser.gmusicbrowser/config/gmusicbrowser/gmbrc
sed -i 's/^LayoutS:.*$/LayoutS: Search/g' /home/$(logname)/.var/app/org.gmusicbrowser.gmusicbrowser/config/gmusicbrowser/gmbrc
sed -i "s/^IconTheme: .*$/IconTheme: ''/g" /home/$(logname)/.var/app/org.gmusicbrowser.gmusicbrowser/config/gmusicbrowser/gmbrc
# ------------------------------------------------------------ 
