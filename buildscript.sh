#!/bin/sh

build_script()
{
    echo "  pyinstaller building [ $1 ]"
    pyinstaller --onefile $1
    rm test.spec
    rm -r build
    mv $3/build/$2 build/$2.backend
}


echo "Installing build dependencies"
echo "  pip packages"
pip install -r requirements.txt > /dev/null

echo "  apt packages"
sudo apt-get update > /dev/null
sudo apt-get upgrade > /dev/null
sudo apt-get python-dev python3-dev > /dev/null


echo "Building scripts"
build_script