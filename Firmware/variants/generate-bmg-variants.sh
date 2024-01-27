#!/bin/bash

################################################################################
# Description:
# Creates special variants
################################################################################

# Constants
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CURRENTDIR="$( pwd )"
TODAY=$(date +'%Y%m%d')

##### MK3 Variants
BASE="MK3.h"

## Bondtech Prusa Extruder
VARIANT="MK3-BMG-0.9.h"
cp ${BASE} ${VARIANT}
sed -i'' -e 's/#define CUSTOM_MENDEL_NAME "Prusa i3 MK3"*/#define CUSTOM_MENDEL_NAME "Prusa BMG MK3"/' ${VARIANT}
# E Steps
sed -i'' -e 's/#define DEFAULT_AXIS_STEPS_PER_UNIT   {100,100,3200\/8,280}*/#define DEFAULT_AXIS_STEPS_PER_UNIT   {100,100,3200\/8,415}/' ${VARIANT}
# Microsteps
sed -i'' -e 's/#define TMC2130_USTEPS_E    32*/#define TMC2130_USTEPS_E    8/' ${VARIANT}
# Filament Load Distances (BMG gears are farther from the hotend)
sed -i'' -e 's/#define LOAD_FILAMENT_2 "G1 E40 F100"*/#define LOAD_FILAMENT_2 "G1 E50 F100"/' ${VARIANT}
sed -i'' -e 's/#define UNLOAD_FILAMENT_1 "G1 E-80 F7000"*/#define UNLOAD_FILAMENT_1 "G1 E-100 F7000"/' ${VARIANT}
sed -i'' -e 's/#define FILAMENTCHANGE_FINALRETRACT -80*/#define FILAMENTCHANGE_FINALRETRACT -100/' ${VARIANT}
sed -i'' -e 's/#define FILAMENTCHANGE_FINALFEED 25*/#define FILAMENTCHANGE_FINALFEED 35/' ${VARIANT}
sed -i'' -e 's/#define Z_MIN_POS 0.15/&\'$'\n#define Z_MAX_POS_XYZ_CALIBRATION_CORRECTION 2.0/' ${VARIANT}
sed -i'' -e 's/\/\/#define TMC2130_SERVICE_CODES_M910_M918*/#define TMC2130_SERVICE_CODES_M910_M918/' ${VARIANT}

VARIANT="MK3-BMG-1.8.h"
cp ${BASE} ${VARIANT}
sed -i'' -e 's/#define CUSTOM_MENDEL_NAME "Prusa i3 MK3"*/#define CUSTOM_MENDEL_NAME "Prusa BMG MK3"/' ${VARIANT}
# E Steps
sed -i'' -e 's/#define DEFAULT_AXIS_STEPS_PER_UNIT   {100,100,3200\/8,280}*/#define DEFAULT_AXIS_STEPS_PER_UNIT   {100,100,3200\/8,415}/' ${VARIANT}
# Microsteps
sed -i'' -e 's/#define TMC2130_USTEPS_E    32*/#define TMC2130_USTEPS_E    16/' ${VARIANT}
# Filament Load Distances (BMG gears are farther from the hotend)
sed -i'' -e 's/#define LOAD_FILAMENT_2 "G1 E40 F100"*/#define LOAD_FILAMENT_2 "G1 E50 F100"/' ${VARIANT}
sed -i'' -e 's/#define UNLOAD_FILAMENT_1 "G1 E-80 F7000"*/#define UNLOAD_FILAMENT_1 "G1 E-100 F7000"/' ${VARIANT}
sed -i'' -e 's/#define FILAMENTCHANGE_FINALRETRACT -80*/#define FILAMENTCHANGE_FINALRETRACT -100/' ${VARIANT}
sed -i'' -e 's/#define FILAMENTCHANGE_FINALFEED 25*/#define FILAMENTCHANGE_FINALFEED 35/' ${VARIANT}
sed -i'' -e 's/#define Z_MIN_POS 0.15/&\'$'\n#define Z_MAX_POS_XYZ_CALIBRATION_CORRECTION 2.0/' ${VARIANT}
sed -i'' -e 's/\/\/#define TMC2130_SERVICE_CODES_M910_M918*/#define TMC2130_SERVICE_CODES_M910_M918/' ${VARIANT}

##### MK3S Variants
BASE="MK3S.h"

## Bondtech Prusa Extruder
VARIANT="MK3S-BMG-0.9.h"
cp ${BASE} ${VARIANT}
sed -i'' -e 's/#define CUSTOM_MENDEL_NAME "Prusa i3 MK3S"*/#define CUSTOM_MENDEL_NAME "Prusa BMG MK3S"\'$'\n#define BONDTECH_MK3S/' ${VARIANT}
# E Steps
sed -i'' -e 's/#define DEFAULT_AXIS_STEPS_PER_UNIT   {100,100,3200\/8,280}*/#define DEFAULT_AXIS_STEPS_PER_UNIT   {100,100,3200\/8,415}/' ${VARIANT}
# Microsteps
sed -i'' -e 's/#define TMC2130_USTEPS_E    32*/#define TMC2130_USTEPS_E    8/' ${VARIANT}
# Filament Load Distances (BMG gears are farther from the hotend)
sed -i'' -e 's/#define LOAD_FILAMENT_2 "G1 E40 F100"*/#define LOAD_FILAMENT_2 "G1 E50 F100"/' ${VARIANT}
sed -i'' -e 's/#define UNLOAD_FILAMENT_1 "G1 E-80 F7000"*/#define UNLOAD_FILAMENT_1 "G1 E-100 F7000"/' ${VARIANT}
sed -i'' -e 's/#define FILAMENTCHANGE_FINALRETRACT -80*/#define FILAMENTCHANGE_FINALRETRACT -100/' ${VARIANT}
sed -i'' -e 's/#define FILAMENTCHANGE_FINALFEED 25*/#define FILAMENTCHANGE_FINALFEED 35/' ${VARIANT}
sed -i'' -e 's/#define Z_MIN_POS 0.15/&\'$'\n#define Z_MAX_POS_XYZ_CALIBRATION_CORRECTION 2.0/' ${VARIANT}
sed -i'' -e 's/\/\/#define TMC2130_SERVICE_CODES_M910_M918*/#define TMC2130_SERVICE_CODES_M910_M918/' ${VARIANT}

VARIANT="MK3S-BMG-1.8.h"
cp ${BASE} ${VARIANT}
sed -i'' -e 's/#define CUSTOM_MENDEL_NAME "Prusa i3 MK3S"*/#define CUSTOM_MENDEL_NAME "Prusa BMG MK3S"\'$'\n#define BONDTECH_MK3S/' ${VARIANT}
# E Steps
sed -i'' -e 's/#define DEFAULT_AXIS_STEPS_PER_UNIT   {100,100,3200\/8,280}*/#define DEFAULT_AXIS_STEPS_PER_UNIT   {100,100,3200\/8,415}/' ${VARIANT}
# Microsteps
sed -i'' -e 's/#define TMC2130_USTEPS_E    32*/#define TMC2130_USTEPS_E    16/' ${VARIANT}
# Filament Load Distances (BMG gears are farther from the hotend)
sed -i'' -e 's/#define LOAD_FILAMENT_2 "G1 E40 F100"*/#define LOAD_FILAMENT_2 "G1 E50 F100"/' ${VARIANT}
sed -i'' -e 's/#define UNLOAD_FILAMENT_1 "G1 E-80 F7000"*/#define UNLOAD_FILAMENT_1 "G1 E-100 F7000"/' ${VARIANT}
sed -i'' -e 's/#define FILAMENTCHANGE_FINALRETRACT -80*/#define FILAMENTCHANGE_FINALRETRACT -100/' ${VARIANT}
sed -i'' -e 's/#define FILAMENTCHANGE_FINALFEED 25*/#define FILAMENTCHANGE_FINALFEED 35/' ${VARIANT}
sed -i'' -e 's/#define Z_MIN_POS 0.15/&\'$'\n#define Z_MAX_POS_XYZ_CALIBRATION_CORRECTION 2.0/' ${VARIANT}
sed -i'' -e 's/\/\/#define TMC2130_SERVICE_CODES_M910_M918*/#define TMC2130_SERVICE_CODES_M910_M918/' ${VARIANT}

##### MK25 Variants
BASE="MK25-RAMBo13a.h"

## Bondtech Prusa Extruder
VARIANT="MK25-RAMBo13a-BMG-0.9.h"
cp ${BASE} ${VARIANT}
sed -i'' -e 's/#define CUSTOM_MENDEL_NAME "Prusa i3 MK2.5"*/#define CUSTOM_MENDEL_NAME "Prusa BMG MK2.5"/' ${VARIANT}
# E Steps
sed -i'' -e 's/#define DEFAULT_AXIS_STEPS_PER_UNIT   {100,100,3200\/8,133}*/#define DEFAULT_AXIS_STEPS_PER_UNIT   {100,100,3200\/8,415}/' ${VARIANT}
# Filament Load Distances (BMG gears are farther from the hotend)
sed -i'' -e 's/#define LOAD_FILAMENT_2 "G1 E40 F100"*/#define LOAD_FILAMENT_2 "G1 E50 F100"/' ${VARIANT}
sed -i'' -e 's/#define UNLOAD_FILAMENT_1 "G1 E-80 F7000"*/#define UNLOAD_FILAMENT_1 "G1 E-100 F7000"/' ${VARIANT}
sed -i'' -e 's/#define FILAMENTCHANGE_FINALRETRACT -80*/#define FILAMENTCHANGE_FINALRETRACT -100/' ${VARIANT}
sed -i'' -e 's/#define FILAMENTCHANGE_FINALFEED 25*/#define FILAMENTCHANGE_FINALFEED 35/' ${VARIANT}
sed -i'' -e 's/#define Z_MIN_POS 0.15/&\'$'\n#define Z_MAX_POS_XYZ_CALIBRATION_CORRECTION 2.0/' ${VARIANT}

VARIANT="MK25-RAMBo13a-BMG-1.8.h"
cp ${BASE} ${VARIANT}
sed -i'' -e 's/#define CUSTOM_MENDEL_NAME "Prusa i3 MK2.5"*/#define CUSTOM_MENDEL_NAME "Prusa BMG MK2.5"/' ${VARIANT}
# E Steps
sed -i'' -e 's/#define DEFAULT_AXIS_STEPS_PER_UNIT   {100,100,3200\/8,133}*/#define DEFAULT_AXIS_STEPS_PER_UNIT   {100,100,3200\/8,415}/' ${VARIANT}
# Filament Load Distances (BMG gears are farther from the hotend)
sed -i'' -e 's/#define LOAD_FILAMENT_2 "G1 E40 F100"*/#define LOAD_FILAMENT_2 "G1 E50 F100"/' ${VARIANT}
sed -i'' -e 's/#define UNLOAD_FILAMENT_1 "G1 E-80 F7000"*/#define UNLOAD_FILAMENT_1 "G1 E-100 F7000"/' ${VARIANT}
sed -i'' -e 's/#define FILAMENTCHANGE_FINALRETRACT -80*/#define FILAMENTCHANGE_FINALRETRACT -100/' ${VARIANT}
sed -i'' -e 's/#define FILAMENTCHANGE_FINALFEED 25*/#define FILAMENTCHANGE_FINALFEED 35/' ${VARIANT}
sed -i'' -e 's/#define Z_MIN_POS 0.15/&\'$'\n#define Z_MAX_POS_XYZ_CALIBRATION_CORRECTION 2.0/' ${VARIANT}

##### MK25S Variants
BASE="MK25S-RAMBo13a.h"

## Bondtech Prusa Extruder
VARIANT="MK25S-RAMBo13a-BMG-0.9.h"
cp ${BASE} ${VARIANT}
sed -i'' -e 's/#define CUSTOM_MENDEL_NAME "Prusa i3 MK2.5S"*/#define CUSTOM_MENDEL_NAME "Prusa BMG MK2.5S"\'$'\n#define BONDTECH_MK25S/' ${VARIANT}
# E Steps
sed -i'' -e 's/#define DEFAULT_AXIS_STEPS_PER_UNIT   {100,100,3200\/8,133}*/#define DEFAULT_AXIS_STEPS_PER_UNIT   {100,100,3200\/8,415}/' ${VARIANT}
# Filament Load Distances (BMG gears are farther from the hotend)
sed -i'' -e 's/#define LOAD_FILAMENT_2 "G1 E40 F100"*/#define LOAD_FILAMENT_2 "G1 E50 F100"/' ${VARIANT}
sed -i'' -e 's/#define UNLOAD_FILAMENT_1 "G1 E-80 F7000"*/#define UNLOAD_FILAMENT_1 "G1 E-100 F7000"/' ${VARIANT}
sed -i'' -e 's/#define FILAMENTCHANGE_FINALRETRACT -80*/#define FILAMENTCHANGE_FINALRETRACT -100/' ${VARIANT}
sed -i'' -e 's/#define FILAMENTCHANGE_FINALFEED 25*/#define FILAMENTCHANGE_FINALFEED 35/' ${VARIANT}
sed -i'' -e 's/#define Z_MIN_POS 0.15/&\'$'\n#define Z_MAX_POS_XYZ_CALIBRATION_CORRECTION 2.0/' ${VARIANT}

VARIANT="MK25S-RAMBo13a-BMG-1.8.h"
cp ${BASE} ${VARIANT}
sed -i'' -e 's/#define CUSTOM_MENDEL_NAME "Prusa i3 MK2.5S"*/#define CUSTOM_MENDEL_NAME "Prusa BMG MK2.5S"\'$'\n#define BONDTECH_MK25S/' ${VARIANT}
# E Steps
sed -i'' -e 's/#define DEFAULT_AXIS_STEPS_PER_UNIT   {100,100,3200\/8,133}*/#define DEFAULT_AXIS_STEPS_PER_UNIT   {100,100,3200\/8,415}/' ${VARIANT}
# Filament Load Distances (BMG gears are farther from the hotend)
sed -i'' -e 's/#define LOAD_FILAMENT_2 "G1 E40 F100"*/#define LOAD_FILAMENT_2 "G1 E50 F100"/' ${VARIANT}
sed -i'' -e 's/#define UNLOAD_FILAMENT_1 "G1 E-80 F7000"*/#define UNLOAD_FILAMENT_1 "G1 E-100 F7000"/' ${VARIANT}
sed -i'' -e 's/#define FILAMENTCHANGE_FINALRETRACT -80*/#define FILAMENTCHANGE_FINALRETRACT -100/' ${VARIANT}
sed -i'' -e 's/#define FILAMENTCHANGE_FINALFEED 25*/#define FILAMENTCHANGE_FINALFEED 35/' ${VARIANT}
sed -i'' -e 's/#define Z_MIN_POS 0.15/&\'$'\n#define Z_MAX_POS_XYZ_CALIBRATION_CORRECTION 2.0/' ${VARIANT}
