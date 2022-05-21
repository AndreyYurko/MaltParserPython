#!/bin/bash

if ! [ -d mp4ru ]; then
    git clone 'https://github.com/oxaoo/mp4ru.git'
fi

cd mp4ru

if ! [ -d res ]; then
    wget --load-cookies /tmp/cookies.txt "https://drive.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://drive.google.com/uc?export=download&id=1ogShwCkkcM0bk6FR7EUhZgNg5d8-c00h' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1ogShwCkkcM0bk6FR7EUhZgNg5d8-c00h" -O res.zip && rm -rf /tmp/cookies.txt
    unzip res.zip
    rm res.zip
fi

if [ ! -n "`dpkg -s maven | grep "Status" `" ]; then
    echo "Установка maven..."
    sudo apt-get install maven
fi

if [ ! -n "`which java `" ]; then
    echo "Установка JRE..."
    wget 'https://download.oracle.com/java/18/latest/jdk-18_linux-x64_bin.deb' -O JRE.tar.gz
    sudo dpkg -i JRE.tar.gz
fi

chmod +x res/bin/tree-tagger

mvn clean install

cp -R "res" "mp4ru/target/res"
