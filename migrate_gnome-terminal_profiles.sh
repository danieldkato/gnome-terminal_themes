user=dan
sudo -u $user bash << EOF || exit 1
profile=$(gsettings get org.gnome.Terminal.PrfilesList default)
profile=${profile:1:-1}
gsettings set \
	org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\
	background-color "rgb(16,105,157)"

gsettings set \
	org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\
	background-transparency-percent "26"

gsettings set \
	org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\
	foreground-color "rgb(255,255,255)"

gsettings set \
	org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\
	palette "['rgb(0,0,0)','rgb(170,0,0)','rgb(0,170,0)','rgb(170,85,0)','rgb(0,0,170)','rgb(170,0,170)','rgb(0,170,170)','rgb(170,170,170)','rgb(85,85,85)','rgb(255,85,85)','rgb(85,255,85)','rgb(255,255,85)','rgb(255,174,85)','rgb(255,85,255)','rgb(85,255,255)','rgb(255,255,255)']"

gsettings set \
	org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\
	use-theme-colors false

gsettings set \
	org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\
	use-theme-transparency false

gsettings set \
	org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\
	use-transparent-background true

gsettings set \
	org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\
	visible-name "Vaporwave"
