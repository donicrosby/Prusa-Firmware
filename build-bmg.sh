#!/bin/bash

SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
VARIANTS_PATH="${SCRIPT_PATH}/Firmware/variants"
OUTPUT_FOLDER="${SCRIPT_PATH}/../PF-build-hex"
PRUSA_BUILD_SCRIPT="${SCRIPT_PATH}/PF-build.sh"

for var_file  in $(ls ${VARIANTS_PATH}/*BMG* )
do
    if [[ $var_file =~ "MK2" ]]
    then
        LANGS="EN_FARM"
    else
        LANGS="ALL"
    fi
    variant=$(basename  ${var_file})
    yes '1' | ${PRUSA_BUILD_SCRIPT} -b Auto -l ${LANGS} -d GOLD -o 1 -c 1 -p 1 -n 1 -v "${variant}"
done

