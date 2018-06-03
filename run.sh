#!/usr/bin/env bash

mkdir -p reports

jmx="${1}"

JVM_ARGS="-Xms512m -Xmx512m" ./apache-jmeter-4.0/bin/jmeter -n -t "${jmx}" -l "${jmx}.log" -e -o reports
