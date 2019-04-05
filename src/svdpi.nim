import nimterop/cimport
import os

# static:
#   cDisableCaching()
#   cDebug()

const
  xlmIncludePath = getEnv("XCELIUM_ROOT") / ".." / "include"
static:
  doAssert fileExists(xlmIncludePath / "svdpi.h")
  doAssert fileExists(xlmIncludePath / "svdpi_compatibility.h")
  # Put cAddSearchDir in static block: https://github.com/nimterop/nimterop/issues/122
  cAddSearchDir(xlmIncludePath)

cDefine("DPI_COMPATIBILITY_VERSION_1800v2012")

# Below manual definition of s_vpi_vecval is a workaround for
# https://github.com/nimterop/nimterop/issues/47.
type
  s_vpi_vecval* {.importc: "s_vpi_vecval", header: xlmIncludePath / "svdpi.h".} = object
    aval*: uint32 # we need to export the object elements too!
    bval*: uint32

cImport(cSearchPath("svdpi.h"))
