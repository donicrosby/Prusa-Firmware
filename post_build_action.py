import shutil
Import("env")

def copy_hex(source, target, env):
  sourceFile = str(target[0])
  destinationFile = env['PROJECT_BUILD_DIR'] + "/" + env['PROGNAME'] + ".hex"
  shutil.copyfile(sourceFile, destinationFile)

env.AddPostAction("$BUILD_DIR/${PROGNAME}.hex", copy_hex)