import std/[os]
import nimterop/cimport

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
  s_vpi_vecval* {.importc: "s_vpi_vecval",
                  header: xlmIncludePath / "svdpi.h".} = object
    aval*: uint32 # we need to export the object elements too!
    bval*: uint32
  p_vpi_vecval* = ptr s_vpi_vecval
cImport(cSearchPath("svdpi.h"), recurse = true)

## Accessibility procs

proc svSeqToSVDynArr1*[T](s: seq[T]; dynArrPtr: svOpenArrayHandle) =
  ## Write a Nim sequence to a one-dimensional SV dynamic array.
  if dynArrPtr != nil: # Do nothing if the dynamic array is not allocated on the SV side.
    for idx, val in s:
      let
        dynArrElemPtr = cast[ptr T](svGetArrElemPtr1(dynArrPtr, idx.cint))
      dynArrElemPtr[] = val

proc svSVDynArr1ToSeq*[T](dynArrPtr: svOpenArrayHandle): seq[T] =
  ## Write a one-dimensional SV dynamic array to a Nim sequence.
  if dynArrPtr != nil: # Do nothing if the dynamic array is not allocated on the SV side.
    for idx in 0.cint ..< svLength(dynArrPtr, 1):
      let
        dynArrElemPtr = cast[ptr T](svGetArrElemPtr1(dynArrPtr, idx))
      result.add(dynArrElemPtr[])
