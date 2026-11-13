#!/bin/bash
set -e

if [[ $TARGET_VERSION -eq 21 ]]; then
    git clone --branch jdk-21+35 --depth 1 https://github.com/openjdk/jdk21u openjdk-21
elif [[ $TARGET_VERSION -eq 25 ]]; then
    git clone --branch jdk-25+36 --depth 1 https://github.com/openjdk/jdk25u openjdk-25
elif [[ $TARGET_VERSION -eq 8 ]]; then
    git clone --branch jdk8u514-b00 --depth 1 https://github.com/openjdk/jdk8u openjdk-8
else
    git clone --branch jdk-17+35 --depth 1 https://github.com/openjdk/jdk17u openjdk-17
fi
