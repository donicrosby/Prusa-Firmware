Import("env")

def copy_hex(source, target, env):
  env.Execute("cp -rf $BUILD_DIR/${PROGNAME}.hex $BUILD_DIR/../${PROGNAME}.hex")

env.AddPostAction("buildprog", copy_hex)