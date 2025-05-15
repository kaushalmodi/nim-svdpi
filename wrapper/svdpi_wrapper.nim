
{.warning[UnusedImport]: off.}
{.hint[XDeclaredButNotUsed]: off.}
from macros import hint, warning, newLit, getSize

from os import parentDir

when not declared(ownSizeOf):
  macro ownSizeof(x: typed): untyped =
    newLit(x.getSize)

type
  svScalar_1090519492 = uint8 ## Generated based on includes/svdpi.h:75:17
  svBit_1090519495 = svScalar_1090519494 ## Generated based on includes/svdpi.h:76:18
  svLogic_1090519497 = svScalar_1090519494 ## Generated based on includes/svdpi.h:77:18
  struct_vpi_vecval_1090519499 {.pure, inheritable, bycopy.} = object
    aval*: uint32            ## Generated based on includes/svdpi.h:87:16
    bval*: uint32
  s_vpi_vecval_1090519501 = struct_vpi_vecval_1090519500 ## Generated based on includes/svdpi.h:91:3
  p_vpi_vecval_1090519503 = ptr struct_vpi_vecval_1090519500 ## Generated based on includes/svdpi.h:91:18
  svLogicVecVal_1090519505 = s_vpi_vecval_1090519502 ## Generated based on includes/svdpi.h:95:22
  svBitVecVal_1090519507 = uint32 ## Generated based on includes/svdpi.h:98:18
  svScope_1090519509 = pointer ## Generated based on includes/svdpi.h:127:23
  svOpenArrayHandle_1090519511 = pointer ## Generated based on includes/svdpi.h:130:23
  svBitVec32_1090519513 = cuint ## Generated based on includes/svdpi.h:373:22
  struct_svLogicVec32_1090519515 {.pure, inheritable, bycopy.} = object
    c*: cuint                ## Generated based on includes/svdpi.h:374:9
    d*: cuint
  svLogicVec32_1090519517 = struct_svLogicVec32_1090519516 ## Generated based on includes/svdpi.h:379:1
  svBitPackedArrRef_1090519519 = pointer ## Generated based on includes/svdpi.h:382:16
  svLogicPackedArrRef_1090519521 = pointer ## Generated based on includes/svdpi.h:383:16
  svLogicVec32_1090519518 = (when declared(svLogicVec32):
    when ownSizeof(svLogicVec32) != ownSizeof(svLogicVec32_1090519517):
      static :
        warning("Declaration of " & "svLogicVec32" &
            " exists but with different size")
    svLogicVec32
  else:
    svLogicVec32_1090519517)
  svScalar_1090519494 = (when declared(svScalar):
    when ownSizeof(svScalar) != ownSizeof(svScalar_1090519492):
      static :
        warning("Declaration of " & "svScalar" &
            " exists but with different size")
    svScalar
  else:
    svScalar_1090519492)
  svBitVec32_1090519514 = (when declared(svBitVec32):
    when ownSizeof(svBitVec32) != ownSizeof(svBitVec32_1090519513):
      static :
        warning("Declaration of " & "svBitVec32" &
            " exists but with different size")
    svBitVec32
  else:
    svBitVec32_1090519513)
  svBit_1090519496 = (when declared(svBit):
    when ownSizeof(svBit) != ownSizeof(svBit_1090519495):
      static :
        warning("Declaration of " & "svBit" & " exists but with different size")
    svBit
  else:
    svBit_1090519495)
  struct_svLogicVec32_1090519516 = (when declared(struct_svLogicVec32):
    when ownSizeof(struct_svLogicVec32) != ownSizeof(struct_svLogicVec32_1090519515):
      static :
        warning("Declaration of " & "struct_svLogicVec32" &
            " exists but with different size")
    struct_svLogicVec32
  else:
    struct_svLogicVec32_1090519515)
  svLogicPackedArrRef_1090519522 = (when declared(svLogicPackedArrRef):
    when ownSizeof(svLogicPackedArrRef) != ownSizeof(svLogicPackedArrRef_1090519521):
      static :
        warning("Declaration of " & "svLogicPackedArrRef" &
            " exists but with different size")
    svLogicPackedArrRef
  else:
    svLogicPackedArrRef_1090519521)
  s_vpi_vecval_1090519502 = (when declared(s_vpi_vecval):
    when ownSizeof(s_vpi_vecval) != ownSizeof(s_vpi_vecval_1090519501):
      static :
        warning("Declaration of " & "s_vpi_vecval" &
            " exists but with different size")
    s_vpi_vecval
  else:
    s_vpi_vecval_1090519501)
  svLogic_1090519498 = (when declared(svLogic):
    when ownSizeof(svLogic) != ownSizeof(svLogic_1090519497):
      static :
        warning("Declaration of " & "svLogic" &
            " exists but with different size")
    svLogic
  else:
    svLogic_1090519497)
  p_vpi_vecval_1090519504 = (when declared(p_vpi_vecval):
    when ownSizeof(p_vpi_vecval) != ownSizeof(p_vpi_vecval_1090519503):
      static :
        warning("Declaration of " & "p_vpi_vecval" &
            " exists but with different size")
    p_vpi_vecval
  else:
    p_vpi_vecval_1090519503)
  svScope_1090519510 = (when declared(svScope):
    when ownSizeof(svScope) != ownSizeof(svScope_1090519509):
      static :
        warning("Declaration of " & "svScope" &
            " exists but with different size")
    svScope
  else:
    svScope_1090519509)
  svBitPackedArrRef_1090519520 = (when declared(svBitPackedArrRef):
    when ownSizeof(svBitPackedArrRef) != ownSizeof(svBitPackedArrRef_1090519519):
      static :
        warning("Declaration of " & "svBitPackedArrRef" &
            " exists but with different size")
    svBitPackedArrRef
  else:
    svBitPackedArrRef_1090519519)
  svLogicVecVal_1090519506 = (when declared(svLogicVecVal):
    when ownSizeof(svLogicVecVal) != ownSizeof(svLogicVecVal_1090519505):
      static :
        warning("Declaration of " & "svLogicVecVal" &
            " exists but with different size")
    svLogicVecVal
  else:
    svLogicVecVal_1090519505)
  svOpenArrayHandle_1090519512 = (when declared(svOpenArrayHandle):
    when ownSizeof(svOpenArrayHandle) != ownSizeof(svOpenArrayHandle_1090519511):
      static :
        warning("Declaration of " & "svOpenArrayHandle" &
            " exists but with different size")
    svOpenArrayHandle
  else:
    svOpenArrayHandle_1090519511)
  struct_vpi_vecval_1090519500 = (when declared(struct_vpi_vecval):
    when ownSizeof(struct_vpi_vecval) != ownSizeof(struct_vpi_vecval_1090519499):
      static :
        warning("Declaration of " & "struct_vpi_vecval" &
            " exists but with different size")
    struct_vpi_vecval
  else:
    struct_vpi_vecval_1090519499)
  svBitVecVal_1090519508 = (when declared(svBitVecVal):
    when ownSizeof(svBitVecVal) != ownSizeof(svBitVecVal_1090519507):
      static :
        warning("Declaration of " & "svBitVecVal" &
            " exists but with different size")
    svBitVecVal
  else:
    svBitVecVal_1090519507)
when not declared(svLogicVec32):
  type
    svLogicVec32* = svLogicVec32_1090519517
else:
  static :
    hint("Declaration of " & "svLogicVec32" & " already exists, not redeclaring")
when not declared(svScalar):
  type
    svScalar* = svScalar_1090519492
else:
  static :
    hint("Declaration of " & "svScalar" & " already exists, not redeclaring")
when not declared(svBitVec32):
  type
    svBitVec32* = svBitVec32_1090519513
else:
  static :
    hint("Declaration of " & "svBitVec32" & " already exists, not redeclaring")
when not declared(svBit):
  type
    svBit* = svBit_1090519495
else:
  static :
    hint("Declaration of " & "svBit" & " already exists, not redeclaring")
when not declared(struct_svLogicVec32):
  type
    struct_svLogicVec32* = struct_svLogicVec32_1090519515
else:
  static :
    hint("Declaration of " & "struct_svLogicVec32" &
        " already exists, not redeclaring")
when not declared(svLogicPackedArrRef):
  type
    svLogicPackedArrRef* = svLogicPackedArrRef_1090519521
else:
  static :
    hint("Declaration of " & "svLogicPackedArrRef" &
        " already exists, not redeclaring")
when not declared(s_vpi_vecval):
  type
    s_vpi_vecval* = s_vpi_vecval_1090519501
else:
  static :
    hint("Declaration of " & "s_vpi_vecval" & " already exists, not redeclaring")
when not declared(svLogic):
  type
    svLogic* = svLogic_1090519497
else:
  static :
    hint("Declaration of " & "svLogic" & " already exists, not redeclaring")
when not declared(p_vpi_vecval):
  type
    p_vpi_vecval* = p_vpi_vecval_1090519503
else:
  static :
    hint("Declaration of " & "p_vpi_vecval" & " already exists, not redeclaring")
when not declared(svScope):
  type
    svScope* = svScope_1090519509
else:
  static :
    hint("Declaration of " & "svScope" & " already exists, not redeclaring")
when not declared(svBitPackedArrRef):
  type
    svBitPackedArrRef* = svBitPackedArrRef_1090519519
else:
  static :
    hint("Declaration of " & "svBitPackedArrRef" &
        " already exists, not redeclaring")
when not declared(svLogicVecVal):
  type
    svLogicVecVal* = svLogicVecVal_1090519505
else:
  static :
    hint("Declaration of " & "svLogicVecVal" &
        " already exists, not redeclaring")
when not declared(svOpenArrayHandle):
  type
    svOpenArrayHandle* = svOpenArrayHandle_1090519511
else:
  static :
    hint("Declaration of " & "svOpenArrayHandle" &
        " already exists, not redeclaring")
when not declared(struct_vpi_vecval):
  type
    struct_vpi_vecval* = struct_vpi_vecval_1090519499
else:
  static :
    hint("Declaration of " & "struct_vpi_vecval" &
        " already exists, not redeclaring")
when not declared(svBitVecVal):
  type
    svBitVecVal* = svBitVecVal_1090519507
else:
  static :
    hint("Declaration of " & "svBitVecVal" & " already exists, not redeclaring")
when not declared(sv_0):
  when 0 is static:
    const
      sv_0* = 0              ## Generated based on includes/svdpi.h:69:9
  else:
    let sv_0* = 0            ## Generated based on includes/svdpi.h:69:9
else:
  static :
    hint("Declaration of " & "sv_0" & " already exists, not redeclaring")
when not declared(sv_1):
  when 1 is static:
    const
      sv_1* = 1              ## Generated based on includes/svdpi.h:70:9
  else:
    let sv_1* = 1            ## Generated based on includes/svdpi.h:70:9
else:
  static :
    hint("Declaration of " & "sv_1" & " already exists, not redeclaring")
when not declared(sv_z):
  when 2 is static:
    const
      sv_z* = 2              ## Generated based on includes/svdpi.h:71:9
  else:
    let sv_z* = 2            ## Generated based on includes/svdpi.h:71:9
else:
  static :
    hint("Declaration of " & "sv_z" & " already exists, not redeclaring")
when not declared(sv_x):
  when 3 is static:
    const
      sv_x* = 3              ## Generated based on includes/svdpi.h:72:9
  else:
    let sv_x* = 3            ## Generated based on includes/svdpi.h:72:9
else:
  static :
    hint("Declaration of " & "sv_x" & " already exists, not redeclaring")
when not declared(svDpiVersion):
  proc svDpiVersion*(): cstring {.cdecl, importc: "svDpiVersion".}
else:
  static :
    hint("Declaration of " & "svDpiVersion" & " already exists, not redeclaring")
when not declared(svGetBitselBit):
  proc svGetBitselBit*(s: ptr svBitVecVal_1090519508; i: cint): svBit_1090519496 {.
      cdecl, importc: "svGetBitselBit".}
else:
  static :
    hint("Declaration of " & "svGetBitselBit" &
        " already exists, not redeclaring")
when not declared(svGetBitselLogic):
  proc svGetBitselLogic*(s: ptr svLogicVecVal_1090519506; i: cint): svLogic_1090519498 {.
      cdecl, importc: "svGetBitselLogic".}
else:
  static :
    hint("Declaration of " & "svGetBitselLogic" &
        " already exists, not redeclaring")
when not declared(svPutBitselBit):
  proc svPutBitselBit*(d: ptr svBitVecVal_1090519508; i: cint; s: svBit_1090519496): void {.
      cdecl, importc: "svPutBitselBit".}
else:
  static :
    hint("Declaration of " & "svPutBitselBit" &
        " already exists, not redeclaring")
when not declared(svPutBitselLogic):
  proc svPutBitselLogic*(d: ptr svLogicVecVal_1090519506; i: cint; s: svLogic_1090519498): void {.
      cdecl, importc: "svPutBitselLogic".}
else:
  static :
    hint("Declaration of " & "svPutBitselLogic" &
        " already exists, not redeclaring")
when not declared(svGetPartselBit):
  proc svGetPartselBit*(d: ptr svBitVecVal_1090519508; s: ptr svBitVecVal_1090519508;
                        i: cint; w: cint): void {.cdecl,
      importc: "svGetPartselBit".}
else:
  static :
    hint("Declaration of " & "svGetPartselBit" &
        " already exists, not redeclaring")
when not declared(svGetPartselLogic):
  proc svGetPartselLogic*(d: ptr svLogicVecVal_1090519506; s: ptr svLogicVecVal_1090519506;
                          i: cint; w: cint): void {.cdecl,
      importc: "svGetPartselLogic".}
else:
  static :
    hint("Declaration of " & "svGetPartselLogic" &
        " already exists, not redeclaring")
when not declared(svPutPartselBit):
  proc svPutPartselBit*(d: ptr svBitVecVal_1090519508; s: svBitVecVal_1090519508;
                        i: cint; w: cint): void {.cdecl,
      importc: "svPutPartselBit".}
else:
  static :
    hint("Declaration of " & "svPutPartselBit" &
        " already exists, not redeclaring")
when not declared(svPutPartselLogic):
  proc svPutPartselLogic*(d: ptr svLogicVecVal_1090519506; s: svLogicVecVal_1090519506;
                          i: cint; w: cint): void {.cdecl,
      importc: "svPutPartselLogic".}
else:
  static :
    hint("Declaration of " & "svPutPartselLogic" &
        " already exists, not redeclaring")
when not declared(svLeft):
  proc svLeft*(h: svOpenArrayHandle_1090519512; d: cint): cint {.cdecl,
      importc: "svLeft".}
else:
  static :
    hint("Declaration of " & "svLeft" & " already exists, not redeclaring")
when not declared(svRight):
  proc svRight*(h: svOpenArrayHandle_1090519512; d: cint): cint {.cdecl,
      importc: "svRight".}
else:
  static :
    hint("Declaration of " & "svRight" & " already exists, not redeclaring")
when not declared(svLow):
  proc svLow*(h: svOpenArrayHandle_1090519512; d: cint): cint {.cdecl,
      importc: "svLow".}
else:
  static :
    hint("Declaration of " & "svLow" & " already exists, not redeclaring")
when not declared(svHigh):
  proc svHigh*(h: svOpenArrayHandle_1090519512; d: cint): cint {.cdecl,
      importc: "svHigh".}
else:
  static :
    hint("Declaration of " & "svHigh" & " already exists, not redeclaring")
when not declared(svIncrement):
  proc svIncrement*(h: svOpenArrayHandle_1090519512; d: cint): cint {.cdecl,
      importc: "svIncrement".}
else:
  static :
    hint("Declaration of " & "svIncrement" & " already exists, not redeclaring")
when not declared(svLength):
  proc svLength*(h: svOpenArrayHandle_1090519512; d: cint): cint {.cdecl,
      importc: "svLength".}
else:
  static :
    hint("Declaration of " & "svLength" & " already exists, not redeclaring")
when not declared(svSize):
  proc svSize*(h: svOpenArrayHandle_1090519512; d: cint): cint {.cdecl,
      importc: "svSize".}
else:
  static :
    hint("Declaration of " & "svSize" & " already exists, not redeclaring")
when not declared(svDimensions):
  proc svDimensions*(h: svOpenArrayHandle_1090519512): cint {.cdecl,
      importc: "svDimensions".}
else:
  static :
    hint("Declaration of " & "svDimensions" & " already exists, not redeclaring")
when not declared(svGetArrayPtr):
  proc svGetArrayPtr*(a0: svOpenArrayHandle_1090519512): pointer {.cdecl,
      importc: "svGetArrayPtr".}
else:
  static :
    hint("Declaration of " & "svGetArrayPtr" &
        " already exists, not redeclaring")
when not declared(svSizeOfArray):
  proc svSizeOfArray*(a0: svOpenArrayHandle_1090519512): cint {.cdecl,
      importc: "svSizeOfArray".}
else:
  static :
    hint("Declaration of " & "svSizeOfArray" &
        " already exists, not redeclaring")
when not declared(svGetArrElemPtr):
  proc svGetArrElemPtr*(a0: svOpenArrayHandle_1090519512; indx1: cint): pointer {.
      cdecl, varargs, importc: "svGetArrElemPtr".}
else:
  static :
    hint("Declaration of " & "svGetArrElemPtr" &
        " already exists, not redeclaring")
when not declared(svGetArrElemPtr1):
  proc svGetArrElemPtr1*(a0: svOpenArrayHandle_1090519512; indx1: cint): pointer {.
      cdecl, importc: "svGetArrElemPtr1".}
else:
  static :
    hint("Declaration of " & "svGetArrElemPtr1" &
        " already exists, not redeclaring")
when not declared(svGetArrElemPtr2):
  proc svGetArrElemPtr2*(a0: svOpenArrayHandle_1090519512; indx1: cint;
                         indx2: cint): pointer {.cdecl,
      importc: "svGetArrElemPtr2".}
else:
  static :
    hint("Declaration of " & "svGetArrElemPtr2" &
        " already exists, not redeclaring")
when not declared(svGetArrElemPtr3):
  proc svGetArrElemPtr3*(a0: svOpenArrayHandle_1090519512; indx1: cint;
                         indx2: cint; indx3: cint): pointer {.cdecl,
      importc: "svGetArrElemPtr3".}
else:
  static :
    hint("Declaration of " & "svGetArrElemPtr3" &
        " already exists, not redeclaring")
when not declared(svPutBitArrElemVecVal):
  proc svPutBitArrElemVecVal*(d: svOpenArrayHandle_1090519512;
                              s: ptr svBitVecVal_1090519508; indx1: cint): void {.
      cdecl, varargs, importc: "svPutBitArrElemVecVal".}
else:
  static :
    hint("Declaration of " & "svPutBitArrElemVecVal" &
        " already exists, not redeclaring")
when not declared(svPutBitArrElem1VecVal):
  proc svPutBitArrElem1VecVal*(d: svOpenArrayHandle_1090519512;
                               s: ptr svBitVecVal_1090519508; indx1: cint): void {.
      cdecl, importc: "svPutBitArrElem1VecVal".}
else:
  static :
    hint("Declaration of " & "svPutBitArrElem1VecVal" &
        " already exists, not redeclaring")
when not declared(svPutBitArrElem2VecVal):
  proc svPutBitArrElem2VecVal*(d: svOpenArrayHandle_1090519512;
                               s: ptr svBitVecVal_1090519508; indx1: cint;
                               indx2: cint): void {.cdecl,
      importc: "svPutBitArrElem2VecVal".}
else:
  static :
    hint("Declaration of " & "svPutBitArrElem2VecVal" &
        " already exists, not redeclaring")
when not declared(svPutBitArrElem3VecVal):
  proc svPutBitArrElem3VecVal*(d: svOpenArrayHandle_1090519512;
                               s: ptr svBitVecVal_1090519508; indx1: cint;
                               indx2: cint; indx3: cint): void {.cdecl,
      importc: "svPutBitArrElem3VecVal".}
else:
  static :
    hint("Declaration of " & "svPutBitArrElem3VecVal" &
        " already exists, not redeclaring")
when not declared(svPutLogicArrElemVecVal):
  proc svPutLogicArrElemVecVal*(d: svOpenArrayHandle_1090519512;
                                s: ptr svLogicVecVal_1090519506; indx1: cint): void {.
      cdecl, varargs, importc: "svPutLogicArrElemVecVal".}
else:
  static :
    hint("Declaration of " & "svPutLogicArrElemVecVal" &
        " already exists, not redeclaring")
when not declared(svPutLogicArrElem1VecVal):
  proc svPutLogicArrElem1VecVal*(d: svOpenArrayHandle_1090519512;
                                 s: ptr svLogicVecVal_1090519506; indx1: cint): void {.
      cdecl, importc: "svPutLogicArrElem1VecVal".}
else:
  static :
    hint("Declaration of " & "svPutLogicArrElem1VecVal" &
        " already exists, not redeclaring")
when not declared(svPutLogicArrElem2VecVal):
  proc svPutLogicArrElem2VecVal*(d: svOpenArrayHandle_1090519512;
                                 s: ptr svLogicVecVal_1090519506; indx1: cint;
                                 indx2: cint): void {.cdecl,
      importc: "svPutLogicArrElem2VecVal".}
else:
  static :
    hint("Declaration of " & "svPutLogicArrElem2VecVal" &
        " already exists, not redeclaring")
when not declared(svPutLogicArrElem3VecVal):
  proc svPutLogicArrElem3VecVal*(d: svOpenArrayHandle_1090519512;
                                 s: ptr svLogicVecVal_1090519506; indx1: cint;
                                 indx2: cint; indx3: cint): void {.cdecl,
      importc: "svPutLogicArrElem3VecVal".}
else:
  static :
    hint("Declaration of " & "svPutLogicArrElem3VecVal" &
        " already exists, not redeclaring")
when not declared(svGetBitArrElemVecVal):
  proc svGetBitArrElemVecVal*(d: ptr svBitVecVal_1090519508;
                              s: svOpenArrayHandle_1090519512; indx1: cint): void {.
      cdecl, varargs, importc: "svGetBitArrElemVecVal".}
else:
  static :
    hint("Declaration of " & "svGetBitArrElemVecVal" &
        " already exists, not redeclaring")
when not declared(svGetBitArrElem1VecVal):
  proc svGetBitArrElem1VecVal*(d: ptr svBitVecVal_1090519508;
                               s: svOpenArrayHandle_1090519512; indx1: cint): void {.
      cdecl, importc: "svGetBitArrElem1VecVal".}
else:
  static :
    hint("Declaration of " & "svGetBitArrElem1VecVal" &
        " already exists, not redeclaring")
when not declared(svGetBitArrElem2VecVal):
  proc svGetBitArrElem2VecVal*(d: ptr svBitVecVal_1090519508;
                               s: svOpenArrayHandle_1090519512; indx1: cint;
                               indx2: cint): void {.cdecl,
      importc: "svGetBitArrElem2VecVal".}
else:
  static :
    hint("Declaration of " & "svGetBitArrElem2VecVal" &
        " already exists, not redeclaring")
when not declared(svGetBitArrElem3VecVal):
  proc svGetBitArrElem3VecVal*(d: ptr svBitVecVal_1090519508;
                               s: svOpenArrayHandle_1090519512; indx1: cint;
                               indx2: cint; indx3: cint): void {.cdecl,
      importc: "svGetBitArrElem3VecVal".}
else:
  static :
    hint("Declaration of " & "svGetBitArrElem3VecVal" &
        " already exists, not redeclaring")
when not declared(svGetLogicArrElemVecVal):
  proc svGetLogicArrElemVecVal*(d: ptr svLogicVecVal_1090519506;
                                s: svOpenArrayHandle_1090519512; indx1: cint): void {.
      cdecl, varargs, importc: "svGetLogicArrElemVecVal".}
else:
  static :
    hint("Declaration of " & "svGetLogicArrElemVecVal" &
        " already exists, not redeclaring")
when not declared(svGetLogicArrElem1VecVal):
  proc svGetLogicArrElem1VecVal*(d: ptr svLogicVecVal_1090519506;
                                 s: svOpenArrayHandle_1090519512; indx1: cint): void {.
      cdecl, importc: "svGetLogicArrElem1VecVal".}
else:
  static :
    hint("Declaration of " & "svGetLogicArrElem1VecVal" &
        " already exists, not redeclaring")
when not declared(svGetLogicArrElem2VecVal):
  proc svGetLogicArrElem2VecVal*(d: ptr svLogicVecVal_1090519506;
                                 s: svOpenArrayHandle_1090519512; indx1: cint;
                                 indx2: cint): void {.cdecl,
      importc: "svGetLogicArrElem2VecVal".}
else:
  static :
    hint("Declaration of " & "svGetLogicArrElem2VecVal" &
        " already exists, not redeclaring")
when not declared(svGetLogicArrElem3VecVal):
  proc svGetLogicArrElem3VecVal*(d: ptr svLogicVecVal_1090519506;
                                 s: svOpenArrayHandle_1090519512; indx1: cint;
                                 indx2: cint; indx3: cint): void {.cdecl,
      importc: "svGetLogicArrElem3VecVal".}
else:
  static :
    hint("Declaration of " & "svGetLogicArrElem3VecVal" &
        " already exists, not redeclaring")
when not declared(svGetBitArrElem):
  proc svGetBitArrElem*(s: svOpenArrayHandle_1090519512; indx1: cint): svBit_1090519496 {.
      cdecl, varargs, importc: "svGetBitArrElem".}
else:
  static :
    hint("Declaration of " & "svGetBitArrElem" &
        " already exists, not redeclaring")
when not declared(svGetBitArrElem1):
  proc svGetBitArrElem1*(s: svOpenArrayHandle_1090519512; indx1: cint): svBit_1090519496 {.
      cdecl, importc: "svGetBitArrElem1".}
else:
  static :
    hint("Declaration of " & "svGetBitArrElem1" &
        " already exists, not redeclaring")
when not declared(svGetBitArrElem2):
  proc svGetBitArrElem2*(s: svOpenArrayHandle_1090519512; indx1: cint;
                         indx2: cint): svBit_1090519496 {.cdecl,
      importc: "svGetBitArrElem2".}
else:
  static :
    hint("Declaration of " & "svGetBitArrElem2" &
        " already exists, not redeclaring")
when not declared(svGetBitArrElem3):
  proc svGetBitArrElem3*(s: svOpenArrayHandle_1090519512; indx1: cint;
                         indx2: cint; indx3: cint): svBit_1090519496 {.cdecl,
      importc: "svGetBitArrElem3".}
else:
  static :
    hint("Declaration of " & "svGetBitArrElem3" &
        " already exists, not redeclaring")
when not declared(svGetLogicArrElem):
  proc svGetLogicArrElem*(s: svOpenArrayHandle_1090519512; indx1: cint): svLogic_1090519498 {.
      cdecl, varargs, importc: "svGetLogicArrElem".}
else:
  static :
    hint("Declaration of " & "svGetLogicArrElem" &
        " already exists, not redeclaring")
when not declared(svGetLogicArrElem1):
  proc svGetLogicArrElem1*(s: svOpenArrayHandle_1090519512; indx1: cint): svLogic_1090519498 {.
      cdecl, importc: "svGetLogicArrElem1".}
else:
  static :
    hint("Declaration of " & "svGetLogicArrElem1" &
        " already exists, not redeclaring")
when not declared(svGetLogicArrElem2):
  proc svGetLogicArrElem2*(s: svOpenArrayHandle_1090519512; indx1: cint;
                           indx2: cint): svLogic_1090519498 {.cdecl,
      importc: "svGetLogicArrElem2".}
else:
  static :
    hint("Declaration of " & "svGetLogicArrElem2" &
        " already exists, not redeclaring")
when not declared(svGetLogicArrElem3):
  proc svGetLogicArrElem3*(s: svOpenArrayHandle_1090519512; indx1: cint;
                           indx2: cint; indx3: cint): svLogic_1090519498 {.
      cdecl, importc: "svGetLogicArrElem3".}
else:
  static :
    hint("Declaration of " & "svGetLogicArrElem3" &
        " already exists, not redeclaring")
when not declared(svPutLogicArrElem):
  proc svPutLogicArrElem*(d: svOpenArrayHandle_1090519512; value: svLogic_1090519498;
                          indx1: cint): void {.cdecl, varargs,
      importc: "svPutLogicArrElem".}
else:
  static :
    hint("Declaration of " & "svPutLogicArrElem" &
        " already exists, not redeclaring")
when not declared(svPutLogicArrElem1):
  proc svPutLogicArrElem1*(d: svOpenArrayHandle_1090519512; value: svLogic_1090519498;
                           indx1: cint): void {.cdecl,
      importc: "svPutLogicArrElem1".}
else:
  static :
    hint("Declaration of " & "svPutLogicArrElem1" &
        " already exists, not redeclaring")
when not declared(svPutLogicArrElem2):
  proc svPutLogicArrElem2*(d: svOpenArrayHandle_1090519512; value: svLogic_1090519498;
                           indx1: cint; indx2: cint): void {.cdecl,
      importc: "svPutLogicArrElem2".}
else:
  static :
    hint("Declaration of " & "svPutLogicArrElem2" &
        " already exists, not redeclaring")
when not declared(svPutLogicArrElem3):
  proc svPutLogicArrElem3*(d: svOpenArrayHandle_1090519512; value: svLogic_1090519498;
                           indx1: cint; indx2: cint; indx3: cint): void {.cdecl,
      importc: "svPutLogicArrElem3".}
else:
  static :
    hint("Declaration of " & "svPutLogicArrElem3" &
        " already exists, not redeclaring")
when not declared(svPutBitArrElem):
  proc svPutBitArrElem*(d: svOpenArrayHandle_1090519512; value: svBit_1090519496;
                        indx1: cint): void {.cdecl, varargs,
      importc: "svPutBitArrElem".}
else:
  static :
    hint("Declaration of " & "svPutBitArrElem" &
        " already exists, not redeclaring")
when not declared(svPutBitArrElem1):
  proc svPutBitArrElem1*(d: svOpenArrayHandle_1090519512; value: svBit_1090519496;
                         indx1: cint): void {.cdecl, importc: "svPutBitArrElem1".}
else:
  static :
    hint("Declaration of " & "svPutBitArrElem1" &
        " already exists, not redeclaring")
when not declared(svPutBitArrElem2):
  proc svPutBitArrElem2*(d: svOpenArrayHandle_1090519512; value: svBit_1090519496;
                         indx1: cint; indx2: cint): void {.cdecl,
      importc: "svPutBitArrElem2".}
else:
  static :
    hint("Declaration of " & "svPutBitArrElem2" &
        " already exists, not redeclaring")
when not declared(svPutBitArrElem3):
  proc svPutBitArrElem3*(d: svOpenArrayHandle_1090519512; value: svBit_1090519496;
                         indx1: cint; indx2: cint; indx3: cint): void {.cdecl,
      importc: "svPutBitArrElem3".}
else:
  static :
    hint("Declaration of " & "svPutBitArrElem3" &
        " already exists, not redeclaring")
when not declared(svGetScope):
  proc svGetScope*(): svScope_1090519510 {.cdecl, importc: "svGetScope".}
else:
  static :
    hint("Declaration of " & "svGetScope" & " already exists, not redeclaring")
when not declared(svSetScope):
  proc svSetScope*(scope: svScope_1090519510): svScope_1090519510 {.cdecl,
      importc: "svSetScope".}
else:
  static :
    hint("Declaration of " & "svSetScope" & " already exists, not redeclaring")
when not declared(svGetNameFromScope):
  proc svGetNameFromScope*(a0: svScope_1090519510): cstring {.cdecl,
      importc: "svGetNameFromScope".}
else:
  static :
    hint("Declaration of " & "svGetNameFromScope" &
        " already exists, not redeclaring")
when not declared(svGetScopeFromName):
  proc svGetScopeFromName*(scopeName: cstring): svScope_1090519510 {.cdecl,
      importc: "svGetScopeFromName".}
else:
  static :
    hint("Declaration of " & "svGetScopeFromName" &
        " already exists, not redeclaring")
when not declared(svPutUserData):
  proc svPutUserData*(scope: svScope_1090519510; userKey: pointer;
                      userData: pointer): cint {.cdecl, importc: "svPutUserData".}
else:
  static :
    hint("Declaration of " & "svPutUserData" &
        " already exists, not redeclaring")
when not declared(svGetUserData):
  proc svGetUserData*(scope: svScope_1090519510; userKey: pointer): pointer {.
      cdecl, importc: "svGetUserData".}
else:
  static :
    hint("Declaration of " & "svGetUserData" &
        " already exists, not redeclaring")
when not declared(svGetCallerInfo):
  proc svGetCallerInfo*(fileName: ptr cstring; lineNumber: ptr cint): cint {.
      cdecl, importc: "svGetCallerInfo".}
else:
  static :
    hint("Declaration of " & "svGetCallerInfo" &
        " already exists, not redeclaring")
when not declared(svIsDisabledState):
  proc svIsDisabledState*(): cint {.cdecl, importc: "svIsDisabledState".}
else:
  static :
    hint("Declaration of " & "svIsDisabledState" &
        " already exists, not redeclaring")
when not declared(svAckDisabledState):
  proc svAckDisabledState*(): void {.cdecl, importc: "svAckDisabledState".}
else:
  static :
    hint("Declaration of " & "svAckDisabledState" &
        " already exists, not redeclaring")
when not declared(svSizeOfBitPackedArr):
  proc svSizeOfBitPackedArr*(width: cint): cint {.cdecl,
      importc: "svSizeOfBitPackedArr".}
else:
  static :
    hint("Declaration of " & "svSizeOfBitPackedArr" &
        " already exists, not redeclaring")
when not declared(svSizeOfLogicPackedArr):
  proc svSizeOfLogicPackedArr*(width: cint): cint {.cdecl,
      importc: "svSizeOfLogicPackedArr".}
else:
  static :
    hint("Declaration of " & "svSizeOfLogicPackedArr" &
        " already exists, not redeclaring")
when not declared(svPutBitVec32):
  proc svPutBitVec32*(d: svBitPackedArrRef_1090519520; s: ptr svBitVec32_1090519514;
                      w: cint): void {.cdecl, importc: "svPutBitVec32".}
else:
  static :
    hint("Declaration of " & "svPutBitVec32" &
        " already exists, not redeclaring")
when not declared(svPutLogicVec32):
  proc svPutLogicVec32*(d: svLogicPackedArrRef_1090519522; s: ptr svLogicVec32_1090519518;
                        w: cint): void {.cdecl, importc: "svPutLogicVec32".}
else:
  static :
    hint("Declaration of " & "svPutLogicVec32" &
        " already exists, not redeclaring")
when not declared(svGetBitVec32):
  proc svGetBitVec32*(d: ptr svBitVec32_1090519514; s: svBitPackedArrRef_1090519520;
                      w: cint): void {.cdecl, importc: "svGetBitVec32".}
else:
  static :
    hint("Declaration of " & "svGetBitVec32" &
        " already exists, not redeclaring")
when not declared(svGetLogicVec32):
  proc svGetLogicVec32*(d: ptr svLogicVec32_1090519518; s: svLogicPackedArrRef_1090519522;
                        w: cint): void {.cdecl, importc: "svGetLogicVec32".}
else:
  static :
    hint("Declaration of " & "svGetLogicVec32" &
        " already exists, not redeclaring")
when not declared(svGetSelectBit):
  proc svGetSelectBit*(s: svBitPackedArrRef_1090519520; i: cint): svBit_1090519496 {.
      cdecl, importc: "svGetSelectBit".}
else:
  static :
    hint("Declaration of " & "svGetSelectBit" &
        " already exists, not redeclaring")
when not declared(svGetSelectLogic):
  proc svGetSelectLogic*(s: svLogicPackedArrRef_1090519522; i: cint): svLogic_1090519498 {.
      cdecl, importc: "svGetSelectLogic".}
else:
  static :
    hint("Declaration of " & "svGetSelectLogic" &
        " already exists, not redeclaring")
when not declared(svPutSelectBit):
  proc svPutSelectBit*(d: svBitPackedArrRef_1090519520; i: cint; s: svBit_1090519496): void {.
      cdecl, importc: "svPutSelectBit".}
else:
  static :
    hint("Declaration of " & "svPutSelectBit" &
        " already exists, not redeclaring")
when not declared(svPutSelectLogic):
  proc svPutSelectLogic*(d: svLogicPackedArrRef_1090519522; i: cint; s: svLogic_1090519498): void {.
      cdecl, importc: "svPutSelectLogic".}
else:
  static :
    hint("Declaration of " & "svPutSelectLogic" &
        " already exists, not redeclaring")
when not declared(svGetPartSelectBit):
  proc svGetPartSelectBit*(d: ptr svBitVec32_1090519514; s: svBitPackedArrRef_1090519520;
                           i: cint; w: cint): void {.cdecl,
      importc: "svGetPartSelectBit".}
else:
  static :
    hint("Declaration of " & "svGetPartSelectBit" &
        " already exists, not redeclaring")
when not declared(svGetBits):
  proc svGetBits*(s: svBitPackedArrRef_1090519520; i: cint; w: cint): svBitVec32_1090519514 {.
      cdecl, importc: "svGetBits".}
else:
  static :
    hint("Declaration of " & "svGetBits" & " already exists, not redeclaring")
when not declared(svGet32Bits):
  proc svGet32Bits*(s: svBitPackedArrRef_1090519520; i: cint): svBitVec32_1090519514 {.
      cdecl, importc: "svGet32Bits".}
else:
  static :
    hint("Declaration of " & "svGet32Bits" & " already exists, not redeclaring")
when not declared(svGet64Bits):
  proc svGet64Bits*(s: svBitPackedArrRef_1090519520; i: cint): uint64 {.cdecl,
      importc: "svGet64Bits".}
else:
  static :
    hint("Declaration of " & "svGet64Bits" & " already exists, not redeclaring")
when not declared(svGetPartSelectLogic):
  proc svGetPartSelectLogic*(d: ptr svLogicVec32_1090519518;
                             s: svLogicPackedArrRef_1090519522; i: cint; w: cint): void {.
      cdecl, importc: "svGetPartSelectLogic".}
else:
  static :
    hint("Declaration of " & "svGetPartSelectLogic" &
        " already exists, not redeclaring")
when not declared(svPutPartSelectBit):
  proc svPutPartSelectBit*(d: svBitPackedArrRef_1090519520; s: svBitVec32_1090519514;
                           i: cint; w: cint): void {.cdecl,
      importc: "svPutPartSelectBit".}
else:
  static :
    hint("Declaration of " & "svPutPartSelectBit" &
        " already exists, not redeclaring")
when not declared(svPutPartSelectLogic):
  proc svPutPartSelectLogic*(d: svLogicPackedArrRef_1090519522; s: svLogicVec32_1090519518;
                             i: cint; w: cint): void {.cdecl,
      importc: "svPutPartSelectLogic".}
else:
  static :
    hint("Declaration of " & "svPutPartSelectLogic" &
        " already exists, not redeclaring")
when not declared(svPutBitArrElemVec32):
  proc svPutBitArrElemVec32*(d: svOpenArrayHandle_1090519512; s: ptr svBitVec32_1090519514;
                             indx1: cint): void {.cdecl, varargs,
      importc: "svPutBitArrElemVec32".}
else:
  static :
    hint("Declaration of " & "svPutBitArrElemVec32" &
        " already exists, not redeclaring")
when not declared(svPutBitArrElem1Vec32):
  proc svPutBitArrElem1Vec32*(d: svOpenArrayHandle_1090519512;
                              s: ptr svBitVec32_1090519514; indx1: cint): void {.
      cdecl, importc: "svPutBitArrElem1Vec32".}
else:
  static :
    hint("Declaration of " & "svPutBitArrElem1Vec32" &
        " already exists, not redeclaring")
when not declared(svPutBitArrElem2Vec32):
  proc svPutBitArrElem2Vec32*(d: svOpenArrayHandle_1090519512;
                              s: ptr svBitVec32_1090519514; indx1: cint;
                              indx2: cint): void {.cdecl,
      importc: "svPutBitArrElem2Vec32".}
else:
  static :
    hint("Declaration of " & "svPutBitArrElem2Vec32" &
        " already exists, not redeclaring")
when not declared(svPutBitArrElem3Vec32):
  proc svPutBitArrElem3Vec32*(d: svOpenArrayHandle_1090519512;
                              s: ptr svBitVec32_1090519514; indx1: cint;
                              indx2: cint; indx3: cint): void {.cdecl,
      importc: "svPutBitArrElem3Vec32".}
else:
  static :
    hint("Declaration of " & "svPutBitArrElem3Vec32" &
        " already exists, not redeclaring")
when not declared(svPutLogicArrElemVec32):
  proc svPutLogicArrElemVec32*(d: svOpenArrayHandle_1090519512;
                               s: ptr svLogicVec32_1090519518; indx1: cint): void {.
      cdecl, varargs, importc: "svPutLogicArrElemVec32".}
else:
  static :
    hint("Declaration of " & "svPutLogicArrElemVec32" &
        " already exists, not redeclaring")
when not declared(svPutLogicArrElem1Vec32):
  proc svPutLogicArrElem1Vec32*(d: svOpenArrayHandle_1090519512;
                                s: ptr svLogicVec32_1090519518; indx1: cint): void {.
      cdecl, importc: "svPutLogicArrElem1Vec32".}
else:
  static :
    hint("Declaration of " & "svPutLogicArrElem1Vec32" &
        " already exists, not redeclaring")
when not declared(svPutLogicArrElem2Vec32):
  proc svPutLogicArrElem2Vec32*(d: svOpenArrayHandle_1090519512;
                                s: ptr svLogicVec32_1090519518; indx1: cint;
                                indx2: cint): void {.cdecl,
      importc: "svPutLogicArrElem2Vec32".}
else:
  static :
    hint("Declaration of " & "svPutLogicArrElem2Vec32" &
        " already exists, not redeclaring")
when not declared(svPutLogicArrElem3Vec32):
  proc svPutLogicArrElem3Vec32*(d: svOpenArrayHandle_1090519512;
                                s: ptr svLogicVec32_1090519518; indx1: cint;
                                indx2: cint; indx3: cint): void {.cdecl,
      importc: "svPutLogicArrElem3Vec32".}
else:
  static :
    hint("Declaration of " & "svPutLogicArrElem3Vec32" &
        " already exists, not redeclaring")
when not declared(svGetBitArrElemVec32):
  proc svGetBitArrElemVec32*(d: ptr svBitVec32_1090519514; s: svOpenArrayHandle_1090519512;
                             indx1: cint): void {.cdecl, varargs,
      importc: "svGetBitArrElemVec32".}
else:
  static :
    hint("Declaration of " & "svGetBitArrElemVec32" &
        " already exists, not redeclaring")
when not declared(svGetBitArrElem1Vec32):
  proc svGetBitArrElem1Vec32*(d: ptr svBitVec32_1090519514;
                              s: svOpenArrayHandle_1090519512; indx1: cint): void {.
      cdecl, importc: "svGetBitArrElem1Vec32".}
else:
  static :
    hint("Declaration of " & "svGetBitArrElem1Vec32" &
        " already exists, not redeclaring")
when not declared(svGetBitArrElem2Vec32):
  proc svGetBitArrElem2Vec32*(d: ptr svBitVec32_1090519514;
                              s: svOpenArrayHandle_1090519512; indx1: cint;
                              indx2: cint): void {.cdecl,
      importc: "svGetBitArrElem2Vec32".}
else:
  static :
    hint("Declaration of " & "svGetBitArrElem2Vec32" &
        " already exists, not redeclaring")
when not declared(svGetBitArrElem3Vec32):
  proc svGetBitArrElem3Vec32*(d: ptr svBitVec32_1090519514;
                              s: svOpenArrayHandle_1090519512; indx1: cint;
                              indx2: cint; indx3: cint): void {.cdecl,
      importc: "svGetBitArrElem3Vec32".}
else:
  static :
    hint("Declaration of " & "svGetBitArrElem3Vec32" &
        " already exists, not redeclaring")
when not declared(svGetLogicArrElemVec32):
  proc svGetLogicArrElemVec32*(d: ptr svLogicVec32_1090519518;
                               s: svOpenArrayHandle_1090519512; indx1: cint): void {.
      cdecl, varargs, importc: "svGetLogicArrElemVec32".}
else:
  static :
    hint("Declaration of " & "svGetLogicArrElemVec32" &
        " already exists, not redeclaring")
when not declared(svGetLogicArrElem1Vec32):
  proc svGetLogicArrElem1Vec32*(d: ptr svLogicVec32_1090519518;
                                s: svOpenArrayHandle_1090519512; indx1: cint): void {.
      cdecl, importc: "svGetLogicArrElem1Vec32".}
else:
  static :
    hint("Declaration of " & "svGetLogicArrElem1Vec32" &
        " already exists, not redeclaring")
when not declared(svGetLogicArrElem2Vec32):
  proc svGetLogicArrElem2Vec32*(d: ptr svLogicVec32_1090519518;
                                s: svOpenArrayHandle_1090519512; indx1: cint;
                                indx2: cint): void {.cdecl,
      importc: "svGetLogicArrElem2Vec32".}
else:
  static :
    hint("Declaration of " & "svGetLogicArrElem2Vec32" &
        " already exists, not redeclaring")
when not declared(svGetLogicArrElem3Vec32):
  proc svGetLogicArrElem3Vec32*(d: ptr svLogicVec32_1090519518;
                                s: svOpenArrayHandle_1090519512; indx1: cint;
                                indx2: cint; indx3: cint): void {.cdecl,
      importc: "svGetLogicArrElem3Vec32".}
else:
  static :
    hint("Declaration of " & "svGetLogicArrElem3Vec32" &
        " already exists, not redeclaring")