
####################
#    KARMA BASE    #
####################

CLI_PROGRAMS="bash-completion mc htop unrar unzip p7zip-full
        sudo vim less desktop-base dfc deborphan localepurge lsof
        anacron mlocate gdebi-core silversearcher-ag
        dosfstools ntfsprogs xfsprogs parted e2fsprogs rsync
        readahead-fedora tree file lftp duff testdisk ara lm-sensors
        smartmontools hddtemp"

XORG_AND_FONTS="xorg fonts-droid fonts-inconsolata"

LIGHT_APPS="icewm lxterminal gpicview gmrun xtrlock
        pcmanfm leafpad xarchiver zathura xchm galculator
        bleachbit gparted grsync synergy gtk2-engines-qtcurve
        gtk2-engines-oxygen scrot"

KDE_QT="kde-plasma-desktop kdewallpapers kde-runtime
        yakuake krusader polkit-kde-1 kmenuedit kinfocenter
        kde-notification-colibri ark python-qt4
        okular filelight ksnapshot"

INTERNET="firefox-esr icedove chromium"


MULTIMEDIA="pulseaudio moc kmix mplayer clementine mpv vlc gwenview kid3
        gtk-recordmydesktop pavucontrol"

OFFICE="libreoffice-calc libreoffice-writer libreoffice-impress
        libreoffice-kde libreoffice-gtk libreoffice-l10n-es myspell-es
        libreoffice-style-oxygen libreoffice-style-tango
        libjpeg-turbo-progs agave trimage imagemagick"

# modify this to match what your hardware needs
FIRMWARE="firmware-linux firmware-realtek"


####################
#   KARMA EXTRA    #
####################

DEV_CPP="build-essential make colorgcc colormake"

DEV_QT="qtcreator qtcreator-doc qt4-dev-tools libqt4-dev qt4-doc qt4-doc-html cmake qmake"

DEV="geany kwrite python"

EXTRAS_GUI="goldendict goldendict-wordnet artha marble isomaster"

EXTRAS_MULTIMEDIA="avidemux audacity devede handbrake-gtk acetoneiso
                  k3b dvd+rw-tools libk3b6-extracodecs growisofs dvd+rw-tools"

GRAPHICS="gimp inkscape qtqr kcolorchooser"

EXTRAS_DEV="kdiff3 sqlite3 sqlite3-doc git mercurial devtodo ack-grep
            acl markdown colordiff checkinstall colortail meld"

DEV_PYTHON="bpython python-doc python3 python3-doc diveintopython diveintopython3
            pyqt4-dev-tools python-sphinx"

# use this if you intend to compile the kernel
KERNEL_HACKING="libncurses5-dev fakeroot bc"

WIFI_SOFT="iw wavemon kismet"

WINE="wine libwine-alsa"

WEB_SERVER="lighttpd lighttpd-doc"

DB_SERVER="postgresql-9.1 pgadmin3"

DEV_PHP="php-cgi php-cli php5-pgsql php5-sqlite php-apc php5-mysql php5-xdebug
        php5-intl php5-gd php5-memcache memcached"


