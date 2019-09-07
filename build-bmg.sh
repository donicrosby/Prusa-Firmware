#!/bin/bash 
SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
ENGINE=/Applications/Arduino.app/Contents/MacOS/Arduino

if [ ! -d "build" ]; then
    mkdir build || exit 1
fi
cd build || exit 2

if [ ! -d "build-temp" ]; then
    mkdir build-temp || exit 3
fi
cd build-temp || exit 4
BUILD_PATH="$( pwd -P )"

run_build()
{
  # $1 is variant
  # $2 is the output filename

  cp $SCRIPT_PATH/Firmware/variants/$1.h $SCRIPT_PATH/Firmware/Configuration_prusa.h || exit 5

  $ENGINE $SCRIPT_PATH/Firmware/Firmware.ino --verify --board PrusaResearchRambo:avr:rambo --pref build.path=$BUILD_PATH --pref compiler.warning_level=all || exit 6

  cp Firmware.ino.hex ../$2.hex
}

VERSION="3.8.0"

run_build "MK3-BMG-1.8" "BGIOT_MK3-BMG-1.8_$VERSION-firmware"
run_build "MK3-BMG-0.9" "BGIOT_MK3-BMG-0.9_$VERSION-firmware"
run_build "MK3S-BMG-1.8" "BGIOT_MK3S-BMG-1.8_$VERSION-firmware"
run_build "MK3S-BMG-0.9" "BGIOT_MK3S-BMG-0.9_$VERSION-firmware"
run_build "MK25-RAMBo13a-BMG-1.8" "BGIOT_MK25-RAMBo13a-BMG-1.8_$VERSION-firmware"
run_build "MK25-RAMBo13a-BMG-0.9" "BGIOT_MK25-RAMBo13a-BMG-0.9_$VERSION-firmware"
run_build "MK25S-RAMBo13a-BMG-1.8" "BGIOT_MK25S-RAMBo13a-BMG-1.8_$VERSION-firmware"
run_build "MK25S-RAMBo13a-BMG-0.9" "BGIOT_MK25S-RAMBo13a-BMG-0.9_$VERSION-firmware"

