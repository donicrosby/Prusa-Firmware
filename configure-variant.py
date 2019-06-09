import shutil
from platformio import util
Import("env")

# print env.Dump()

config = util.load_project_config()
variantConfig = config.get("env:"+env["PIOENV"] ,"variant_config")

shutil.copyfile("./Firmware/variants/" + variantConfig, "./Firmware/Configuration_prusa.h")

# my_flags = env.ParseFlags(env['BUILD_FLAGS'])
# defines = {k: v for (k, v) in my_flags.get("CPPDEFINES")}
# print defines

firmwareversion = config.get("platformio" ,"firmware_version")
variantname = variantConfig.rsplit('.', 1)[0]

filename = "BGIOT-" + variantname + "-" + firmwareversion + "-firmware"
env.Replace(PROGNAME=filename)

