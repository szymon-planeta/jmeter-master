#!/usr/bin/env bash

mkdir -p reports

jmx="${1}"

JVM_ARGS="-Xms2g -Xmx2g" ./apache-jmeter-4.0/bin/jmeter -n -t "${jmx}" -l "${jmx}.log" -e -o reports
