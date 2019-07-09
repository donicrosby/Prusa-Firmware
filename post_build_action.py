import shutil
Import("env")

def copy_hex(source, target, env):
  buildDir = env['PROJECTBUILD_DIR'] + "/" + env['PIOENV']
  fileHex = env['PROGNAME'] + ".hex"
  sourceFile = buildDir + "/" + fileHex
  destinationFile = buildDir + "/../" + fileHex
  shutil.copyfile(sourceFile, destinationFile)

env.AddPostAction("buildprog", copy_hex)