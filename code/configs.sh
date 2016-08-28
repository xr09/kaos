
function setup_apt()
{
    kprint 'Do not check age for local repositories'

    TUNE_APT='/etc/apt/apt.conf.d/02Karma'

    # create an empty file
    cat /dev/null > $TUNE_APT
    echo "Acquire::Check-Valid-Until \"false\";" > $TUNE_APT
    echo "Acquire::Languages \"none\";" >> $TUNE_APT
}


function setup_repo()
{
    kprint 'Setting Up Repositories'
    cp -f data/configs/sources.list /etc/apt/sources.list

    setup_apt
}


function setup_fonts()
{
    kprint 'Copying fonts'

    # lowercase font extensions
    rename 's/\.TTF$/\.ttf/' data/fonts/*
    # lowercase font names
    rename 'y/A-Z/a-z/' data/fonts/*.ttf

    cp -v data/fonts/*.ttf /usr/share/fonts/truetype/
}

function setup_misc()
{
    # nicer fonts for TTYs
    sed -i '/FONTFACE=/ s/=.*$/="TerminusBold"/' /etc/default/console-setup
    sed -i '/FONTSIZE=/ s/=.*$/="20x10"/' /etc/default/console-setup

    # sysctl.conf tuning
    SYSCTL=/etc/sysctl.d/10-kaostuned.conf
    touch $SYSCTL
    echo "vm.swappiness = 1" >> $SYSCTL
    echo "vm.vfs_cache_pressure=50" >> $SYSCTL
}


function setup_kde()
{
    kprint 'Turning Off Nepomuk and Akonadi'
    chmod -x /usr/bin/nepomuk*
    chmod -x /usr/bin/akonadi*
}


function setup_sensors()
{
    kprint 'Adjusting sensors'

    echo 'coretemp' >> /etc/modules

    #~ echo 'say YES to all questions to detect the modules needed'
    #~ echo 'type YES at the last one to write in /etc/modules'
    #~ sensors-detect
}
