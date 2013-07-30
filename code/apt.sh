
function apt-update()
{
    aptitude update
}

function safe-upgrade()
{
    aptitude -y safe-upgrade
}

function dist-upgrade()
{
    aptitude -y dist-upgrade
}


function aptitude-install()
{
    # --assume-yes --without-recommends
    aptitude -y -R install $@
}


function install_all_packages()
{
    aptitude-install "$CLI_PROGRAMS $XORG_AND_FONTS
                      $LIGHT_APPS $KDE_QT $MULTIMEDIA
                      $OFFICE $FIRMWARE"

                      # $KERNEL_HACKING $DEV_SOFT $WINE
                      # $WIFI_SOFT $GRAPHICS
}
