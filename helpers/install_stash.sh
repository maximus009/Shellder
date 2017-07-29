#osName=`uname`
#echo 'Operating System Identified as '$osName
#if [[ $osName == 'Darwin' ]]; then
#    echo 'Mac!!'
#elif [[ $osName == 'Linux' ]]; then
#    echo 'Nooo'
#fi
installMacRequirements() {
    echo 'Checking if Homebrew exists on machine.'
    which -s brew
    if [[ $? != 0 ]]; then
        echo 'Brew not found. Installing Homebrew.';
        `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
    else
        echo 'Brew is here!'
    fi
    
    # Installing other awesome packages

    #1. Fortune
    echo 'Installing Fortune'
    brew install fortune

    #2. Cowsay
    echo 'Installing Cowsay'
    brew install cowsay

    #3. Lolcat
    echo 'Installing Lolcat'
    brew install lolcat
}

installLinuxRequirements() {
    #need to figure out how to
    #tell a dirto apart from another
    echo 'Work in progress. Patience, my child'
}

case $OSTYPE in
    darwin*) echo 'OSX'; installMacRequirements ;;
    linux*) echo 'Linux';;
esac
