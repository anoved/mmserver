#!/bin/sh

# fedora 19 dependencies
sudo yum install\
		cmake\
		gcc-c++\
		libX11-devel libXtst-devel\
		pcre-devel\
		avahi-devel\
		libconfig-devel\
		gtk2-devel

# alternative dependency list, purportedly for arch linux pacman
# pkgs="cmake gcc libx11 libxtst lib32-pcre pcre avahi libconfig gtk2"
