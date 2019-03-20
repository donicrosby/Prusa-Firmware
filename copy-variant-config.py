import shutil
from platformio import util
Import("env")

# print env.Dump()

config = util.load_project_config()
variantConfig = config.get("env:"+env["PIOENV"] ,"variant_config")

shutil.copyfile("./Firmware/variants/" + variantConfig, "./Firmware/Configuration_prusa.h")

