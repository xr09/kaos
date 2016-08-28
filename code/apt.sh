
function apt-update()
{
    aptitude update
}

function apt-upgrade()
{
    apt upgrade -y
}


function apt-install()
{
    # --assume-yes --without-recommends
    apt install -y $@
}


function install_all_packages()
{
    apt-install "$CLI_PROGRAMS $XORG_AND_FONTS
                      $INTERNET $KDE_QT $MULTIMEDIA
                      $OFFICE $FIRMWARE"

                      # $KERNEL_HACKING $DEV_SOFT $WINE
                      # $WIFI_SOFT $GRAPHICS
}
