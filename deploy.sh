#!/usr/bin/env bash

apt-get update && apt-get install -y default-jre

wget http://ftp.ps.pl/pub/apache//jmeter/binaries/apache-jmeter-4.0.tgz
tar xvf apache-jmeter-4.0.tgz
