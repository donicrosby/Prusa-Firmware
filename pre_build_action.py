import shutil
Import("env")

my_flags = env.ParseFlags(env['BUILD_FLAGS'])
defines = {k: v for (k, v) in my_flags.get("CPPDEFINES")}

env.Replace(PROGNAME="BGIOT_%s_%s-firmware" % (env['PIOENV'],defines.get("VERSION")))

shutil.copyfile("./Firmware/variants/%s.h" % env['PIOENV'], "./Firmware/Configuration_prusa.h")

