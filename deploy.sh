#!/usr/bin/env bash

apt-get update && apt-get install -y default-jre

wget http://ftp.ps.pl/pub/apache//jmeter/binaries/apache-jmeter-4.0.tgz
tar xvf apache-jmeter-4.0.tgz

cd apache-jmeter-4.0/

wget http://central.maven.org/maven2/kg/apc/jmeter-plugins-manager/1.1/jmeter-plugins-manager-1.1.jar -P lib/ext
wget http://central.maven.org/maven2/kg/apc/cmdrunner/2.2/cmdrunner-2.2.jar -P lib
java -cp ./lib/ext/jmeter-plugins-manager-1.1.jar org.jmeterplugins.repository.PluginManagerCMDInstaller
./bin/PluginsManagerCMD.sh install jpgc-graphs-basic
./bin/PluginsManagerCMD.sh install jpgc-tst
./bin/PluginsManagerCMD.sh install jpgc-casutg
