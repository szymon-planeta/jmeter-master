#!/usr/bin/env bash

mkdir -p reports

jmx="${1}"

JVM_ARGS="-Xms3g -Xmx3g" ./apache-jmeter-4.0/bin/jmeter -n -t "${jmx}" -l "reports/${jmx}.log" -e -o reports
