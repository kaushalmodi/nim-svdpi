import std/[os]
import nimterop/cimport

when defined(svGenWrapper):
  static:
    cDisableCaching()
    cDebug()

const
  xlmIncludePath = getEnv("XCELIUM_ROOT") / ".." / "include"
static:
  doAssert fileExists(xlmIncludePath / "svdpi.h")
  doAssert fileExists(xlmIncludePath / "svdpi_compatibility.h")
  # Put cAddSearchDir in static block: https://github.com/nimterop/nimterop/issues/122
  cAddSearchDir(xlmIncludePath)

cDefine("DPI_COMPATIBILITY_VERSION_1800v2012")

# https://github.com/nimterop/nimterop/issues/276
cOverride:
  type
    t_vpi_vecval* {.bycopy, impsvdpiHdr, importc: "struct t_vpi_vecval", completeStruct.} = object
      aval*: uint32
      bval*: uint32
    s_vpi_vecval* {.importc, impsvdpiHdr, completeStruct.} = t_vpi_vecval
    svLogicVecVal* {.importc, impsvdpiHdr, completeStruct.} = s_vpi_vecval

cImport(cSearchPath("svdpi.h"), recurse = true, flags = "-f:ast2")

# Below function is similar to the SV_PACKED_DATA_NELEMS macro defined
# in svdpi.h.
func svPackedDataNElems*(width: cint): cint =
  return (width + 31) shr 5

## Accessibility templates and procs

template withScope*(scopeName: untyped, body: untyped) =
  let
    newScope = svGetScopeFromName(scopeName.cstring)
    oldScope = svSetScope(newScope)
  body
  discard svSetScope(oldScope)

proc svSeqToSVDynArr1*[T](s: seq[T]; dynArrPtr: svOpenArrayHandle) =
  ## Write a Nim sequence to a one-dimensional SV dynamic array.
  if dynArrPtr != nil: # Do nothing if the dynamic array is not allocated on the SV side.
    let
      dynArrLen = svLength(dynArrPtr, 1)
    for idx in 0.cint ..< min(dynArrLen, s.len.cint):
      let
        dynArrElemPtr = cast[ptr T](svGetArrElemPtr1(dynArrPtr, idx))
      dynArrElemPtr[] = s[idx].T

proc svSVDynArr1ToSeq*[T](dynArrPtr: svOpenArrayHandle): seq[T] =
  ## Write a one-dimensional SV dynamic array to a Nim sequence.
  if dynArrPtr != nil: # Do nothing if the dynamic array is not allocated on the SV side.
    for idx in 0.cint ..< svLength(dynArrPtr, 1):
      let
        dynArrElemPtr = cast[ptr T](svGetArrElemPtr1(dynArrPtr, idx))
      result.add(dynArrElemPtr[])
