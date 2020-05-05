
{.passC: "-DDPI_COMPATIBILITY_VERSION_1800v2012".}

# Importing /path/to/svdpi.h
# Command line:
#   /home/kmodi/.nimble/pkgs/nimterop-0.5.2/nimterop/toast --preprocess -m:c --recurse -f:ast2 --defines+=DPI_COMPATIBILITY_VERSION_1800v2012 --pnim --nim:/home/kmodi/usr_local/apps/6/nim/devel/bin/nim /path/to/svdpi.h

{.hint[ConvFromXtoItselfNotNeeded]: off.}

import nimterop/types

# const 'XXTERN' has invalid value 'DPI_EXTERN DPI_DLLISPEC'
# const 'EETERN' has invalid value 'DPI_EXTERN DPI_DLLESPEC'

{.pragma: impsvdpiHdr, header: "/path/to/svdpi.h".}
{.experimental: "codeReordering".}
const
  sv_0* = 0
  sv_1* = 1
  sv_z* = 2
  sv_x* = 3
type
  svScalar* {.importc, impsvdpiHdr.} = uint8 ## ::
                                        ##    common type for 'bit' and 'logic' scalars.
  svBit* {.importc, impsvdpiHdr.} = svScalar ## ::
                                        ##    scalar
  svLogic* {.importc, impsvdpiHdr.} = svScalar ## ::
                                          ##    scalar
                                          ##   
                                          ##    svdpi_compatibility.h
                                          ##   
                                          ##    NOTE: THIS FILE IS INCLUDED BY svdpi.h. DO NOT INCLUDE THIS FILE FROM
                                          ##    USER APPLICATION CODE.
                                          ##   
                                          ##    This file contains the macro definitions used by the SystemVerilog DPI
                                          ##    to implement backwards compatibility mode functionality.
  t_vpi_vecval* {.bycopy, impsvdpiHdr, importc: "struct t_vpi_vecval".} = object
    aval*: uint32
    bval*: uint32

  s_vpi_vecval* {.importc, impsvdpiHdr.} = t_vpi_vecval
  p_vpi_vecval* {.importc, impsvdpiHdr.} = ptr t_vpi_vecval
  svLogicVecVal* {.importc, impsvdpiHdr.} = s_vpi_vecval ## ::
                                                    ##   
                                                    ##    DPI representation of packed arrays.
                                                    ##    2-state and 4-state vectors, exactly the same as PLI's avalue/bvalue.
                                                    ##   
                                                    ##    (a chunk of) packed logic array
  svBitVecVal* {.importc, impsvdpiHdr.} = uint32 ## ::
                                            ##    (a chunk of) packed bit array
  svScope* {.importc, impsvdpiHdr.} = pointer ## ::
                                         ##    a handle to a scope (an instance of a module or interface)
  svOpenArrayHandle* {.importc, impsvdpiHdr.} = pointer ## ::
                                                   ##    a handle to a generic object (actually, unsized array)
  svBitVec32* {.importc, impsvdpiHdr.} = cuint ## ::
                                          ##    (a chunk of) packed bit array
  svLogicVec32* {.bycopy, importc, impsvdpiHdr.} = object ## ::
                                                    ##    (a chunk of) packed bit array
    c*: cuint
    d*: cuint

  svBitPackedArrRef* {.importc, impsvdpiHdr.} = pointer ## ::
                                                   ##    (a chunk of) packed logic array
                                                   ##    reference to a standalone packed array
  svLogicPackedArrRef* {.importc, impsvdpiHdr.} = pointer
proc svDpiVersion*(): cstring {.importc, cdecl, impsvdpiHdr.}
  ## ::
  ##   
  ##    Implementation-dependent representation.
  ##   
  ##   
  ##    Return implementation version information string ("P1800-2005" or "SV3.1a").
proc svGetBitselBit*(s: ptr svBitVecVal; i: cint): svBit {.importc, cdecl, impsvdpiHdr.}
  ## ::
  ##    
  ##    Bit select utility functions.
  ##   
  ##    Packed arrays are assumed to be indexed n-1:0,
  ##    where 0 is the index of least significant bit
  ##   
  ##    s=source, i=bit-index
proc svGetBitselLogic*(s: ptr svLogicVecVal; i: cint): svLogic {.importc, cdecl,
    impsvdpiHdr.}
proc svPutBitselBit*(d: ptr svBitVecVal; i: cint; s: svBit) {.importc, cdecl, impsvdpiHdr.}
  ## ::
  ##    d=destination, i=bit-index, s=scalar
proc svPutBitselLogic*(d: ptr svLogicVecVal; i: cint; s: svLogic) {.importc, cdecl,
    impsvdpiHdr.}
proc svGetPartselBit*(d: ptr svBitVecVal; s: ptr svBitVecVal; i: cint; w: cint) {.importc,
    cdecl, impsvdpiHdr.}
  ## ::
  ##   
  ##    Part select utility functions.
  ##   
  ##    A narrow (<=32 bits) part select is extracted from the
  ##    source representation and written into the destination word.
  ##   
  ##    Normalized ranges and indexing [n-1:0] are used for both arrays.
  ##   
  ##    s=source, d=destination, i=starting bit index, w=width
  ##    like for variable part selects; limitations: w <= 32
proc svGetPartselLogic*(d: ptr svLogicVecVal; s: ptr svLogicVecVal; i: cint; w: cint) {.
    importc, cdecl, impsvdpiHdr.}
proc svPutPartselBit*(d: ptr svBitVecVal; s: svBitVecVal; i: cint; w: cint) {.importc,
    cdecl, impsvdpiHdr.}
proc svPutPartselLogic*(d: ptr svLogicVecVal; s: svLogicVecVal; i: cint; w: cint) {.
    importc, cdecl, impsvdpiHdr.}
proc svLeft*(h: svOpenArrayHandle; d: cint): cint {.importc, cdecl, impsvdpiHdr.}
  ## ::
  ##   
  ##    Open array querying functions
  ##    These functions are modeled upon the SystemVerilog array
  ##    querying functions and use the same semantics.
  ##    
  ##    If the dimension is 0, then the query refers to the
  ##    packed part of an array (which is one dimensional).
  ##    Dimensions > 0 refer to the unpacked part of an array.
  ##   
  ##    h= handle to open array, d=dimension
proc svRight*(h: svOpenArrayHandle; d: cint): cint {.importc, cdecl, impsvdpiHdr.}
proc svLow*(h: svOpenArrayHandle; d: cint): cint {.importc, cdecl, impsvdpiHdr.}
proc svHigh*(h: svOpenArrayHandle; d: cint): cint {.importc, cdecl, impsvdpiHdr.}
proc svIncrement*(h: svOpenArrayHandle; d: cint): cint {.importc, cdecl, impsvdpiHdr.}
proc svLength*(h: svOpenArrayHandle; d: cint): cint {.importc, cdecl, impsvdpiHdr.}
proc svSize*(h: svOpenArrayHandle; d: cint): cint {.importc, cdecl, impsvdpiHdr.}
proc svDimensions*(h: svOpenArrayHandle): cint {.importc, cdecl, impsvdpiHdr.}
proc svGetArrayPtr*(a1: svOpenArrayHandle): pointer {.importc, cdecl, impsvdpiHdr.}
  ## ::
  ##   
  ##    Pointer to the actual representation of the whole array of any type
  ##    NULL if not in C layout
proc svSizeOfArray*(a1: svOpenArrayHandle): cint {.importc, cdecl, impsvdpiHdr.}
  ## ::
  ##    total size in bytes or 0 if not in C layout
proc svGetArrElemPtr*(a1: svOpenArrayHandle; indx1: cint): pointer {.importc, cdecl,
    impsvdpiHdr, varargs.}
  ## ::
  ##   
  ##    Return a pointer to an element of the array
  ##    or NULL if index outside the range or null pointer
proc svGetArrElemPtr1*(a1: svOpenArrayHandle; indx1: cint): pointer {.importc, cdecl,
    impsvdpiHdr.}
  ## ::
  ##    specialized versions for 1-, 2- and 3-dimensional arrays:
proc svGetArrElemPtr2*(a1: svOpenArrayHandle; indx1: cint; indx2: cint): pointer {.
    importc, cdecl, impsvdpiHdr.}
proc svGetArrElemPtr3*(a1: svOpenArrayHandle; indx1: cint; indx2: cint; indx3: cint): pointer {.
    importc, cdecl, impsvdpiHdr.}
proc svPutBitArrElemVecVal*(d: svOpenArrayHandle; s: ptr svBitVecVal; indx1: cint) {.
    importc, cdecl, impsvdpiHdr, varargs.}
  ## ::
  ##   
  ##    Functions for copying between simulator storage and user space.
  ##    These functions copy the whole packed array in either direction.
  ##    The user is responsible for allocating an array to hold the 
  ##    canonical representation.
  ##   
  ##    s=source, d=destination
  ##    From user space into simulator storage
proc svPutBitArrElem1VecVal*(d: svOpenArrayHandle; s: ptr svBitVecVal; indx1: cint) {.
    importc, cdecl, impsvdpiHdr.}
proc svPutBitArrElem2VecVal*(d: svOpenArrayHandle; s: ptr svBitVecVal; indx1: cint;
                            indx2: cint) {.importc, cdecl, impsvdpiHdr.}
proc svPutBitArrElem3VecVal*(d: svOpenArrayHandle; s: ptr svBitVecVal; indx1: cint;
                            indx2: cint; indx3: cint) {.importc, cdecl, impsvdpiHdr.}
proc svPutLogicArrElemVecVal*(d: svOpenArrayHandle; s: ptr svLogicVecVal; indx1: cint) {.
    importc, cdecl, impsvdpiHdr, varargs.}
proc svPutLogicArrElem1VecVal*(d: svOpenArrayHandle; s: ptr svLogicVecVal; indx1: cint) {.
    importc, cdecl, impsvdpiHdr.}
proc svPutLogicArrElem2VecVal*(d: svOpenArrayHandle; s: ptr svLogicVecVal;
                              indx1: cint; indx2: cint) {.importc, cdecl, impsvdpiHdr.}
proc svPutLogicArrElem3VecVal*(d: svOpenArrayHandle; s: ptr svLogicVecVal;
                              indx1: cint; indx2: cint; indx3: cint) {.importc, cdecl,
    impsvdpiHdr.}
proc svGetBitArrElemVecVal*(d: ptr svBitVecVal; s: svOpenArrayHandle; indx1: cint) {.
    importc, cdecl, impsvdpiHdr, varargs.}
  ## ::
  ##    From simulator storage into user space
proc svGetBitArrElem1VecVal*(d: ptr svBitVecVal; s: svOpenArrayHandle; indx1: cint) {.
    importc, cdecl, impsvdpiHdr.}
proc svGetBitArrElem2VecVal*(d: ptr svBitVecVal; s: svOpenArrayHandle; indx1: cint;
                            indx2: cint) {.importc, cdecl, impsvdpiHdr.}
proc svGetBitArrElem3VecVal*(d: ptr svBitVecVal; s: svOpenArrayHandle; indx1: cint;
                            indx2: cint; indx3: cint) {.importc, cdecl, impsvdpiHdr.}
proc svGetLogicArrElemVecVal*(d: ptr svLogicVecVal; s: svOpenArrayHandle; indx1: cint) {.
    importc, cdecl, impsvdpiHdr, varargs.}
proc svGetLogicArrElem1VecVal*(d: ptr svLogicVecVal; s: svOpenArrayHandle; indx1: cint) {.
    importc, cdecl, impsvdpiHdr.}
proc svGetLogicArrElem2VecVal*(d: ptr svLogicVecVal; s: svOpenArrayHandle;
                              indx1: cint; indx2: cint) {.importc, cdecl, impsvdpiHdr.}
proc svGetLogicArrElem3VecVal*(d: ptr svLogicVecVal; s: svOpenArrayHandle;
                              indx1: cint; indx2: cint; indx3: cint) {.importc, cdecl,
    impsvdpiHdr.}
proc svGetBitArrElem*(s: svOpenArrayHandle; indx1: cint): svBit {.importc, cdecl,
    impsvdpiHdr, varargs.}
proc svGetBitArrElem1*(s: svOpenArrayHandle; indx1: cint): svBit {.importc, cdecl,
    impsvdpiHdr.}
proc svGetBitArrElem2*(s: svOpenArrayHandle; indx1: cint; indx2: cint): svBit {.importc,
    cdecl, impsvdpiHdr.}
proc svGetBitArrElem3*(s: svOpenArrayHandle; indx1: cint; indx2: cint; indx3: cint): svBit {.
    importc, cdecl, impsvdpiHdr.}
proc svGetLogicArrElem*(s: svOpenArrayHandle; indx1: cint): svLogic {.importc, cdecl,
    impsvdpiHdr, varargs.}
proc svGetLogicArrElem1*(s: svOpenArrayHandle; indx1: cint): svLogic {.importc, cdecl,
    impsvdpiHdr.}
proc svGetLogicArrElem2*(s: svOpenArrayHandle; indx1: cint; indx2: cint): svLogic {.
    importc, cdecl, impsvdpiHdr.}
proc svGetLogicArrElem3*(s: svOpenArrayHandle; indx1: cint; indx2: cint; indx3: cint): svLogic {.
    importc, cdecl, impsvdpiHdr.}
proc svPutLogicArrElem*(d: svOpenArrayHandle; value: svLogic; indx1: cint) {.importc,
    cdecl, impsvdpiHdr, varargs.}
proc svPutLogicArrElem1*(d: svOpenArrayHandle; value: svLogic; indx1: cint) {.importc,
    cdecl, impsvdpiHdr.}
proc svPutLogicArrElem2*(d: svOpenArrayHandle; value: svLogic; indx1: cint; indx2: cint) {.
    importc, cdecl, impsvdpiHdr.}
proc svPutLogicArrElem3*(d: svOpenArrayHandle; value: svLogic; indx1: cint;
                        indx2: cint; indx3: cint) {.importc, cdecl, impsvdpiHdr.}
proc svPutBitArrElem*(d: svOpenArrayHandle; value: svBit; indx1: cint) {.importc, cdecl,
    impsvdpiHdr, varargs.}
proc svPutBitArrElem1*(d: svOpenArrayHandle; value: svBit; indx1: cint) {.importc,
    cdecl, impsvdpiHdr.}
proc svPutBitArrElem2*(d: svOpenArrayHandle; value: svBit; indx1: cint; indx2: cint) {.
    importc, cdecl, impsvdpiHdr.}
proc svPutBitArrElem3*(d: svOpenArrayHandle; value: svBit; indx1: cint; indx2: cint;
                      indx3: cint) {.importc, cdecl, impsvdpiHdr.}
proc svGetScope*(): svScope {.importc, cdecl, impsvdpiHdr.}
  ## ::
  ##    Functions for working with DPI context
  ##   
  ##    Retrieve the active instance scope currently associated with the executing
  ##    imported function.  Unless a prior call to svSetScope has occurred, this
  ##    is the scope of the function's declaration site, not call site.
  ##    Returns NULL if called from C code that isnot an imported function.
proc svSetScope*(scope: svScope): svScope {.importc, cdecl, impsvdpiHdr.}
  ## ::
  ##   
  ##    Set context for subsequent export function execution.
  ##    This function must be called before calling an export function, unless
  ##    the export function is called while executing an extern function. In that
  ##    case the export function shall inherit the scope of the surrounding extern
  ##    function. This is known as the "default scope".
  ##    The return is the previous active scope (as per svGetScope)
proc svGetNameFromScope*(a1: svScope): cstring {.importc, cdecl, impsvdpiHdr.}
  ## ::
  ##    Gets the fully qualified name of a scope handle
proc svGetScopeFromName*(scopeName: cstring): svScope {.importc, cdecl, impsvdpiHdr.}
  ## ::
  ##   
  ##    Retrieve svScope to instance scope of an arbitrary function declaration.
  ##    (can be either module, program, interface, or generate scope)
  ##    The return value shall be NULL for unrecognized scope names.
proc svPutUserData*(scope: svScope; userKey: pointer; userData: pointer): cint {.
    importc, cdecl, impsvdpiHdr.}
  ## ::
  ##   
  ##    Store an arbitrary user data pointer for later retrieval by svGetUserData()
  ##    The userKey is generated by the user. It must be guaranteed by the user to
  ##    be unique from all other userKey's for all unique data storage requirements
  ##    It is recommended that the address of static functions or variables in the
  ##    user's C code be used as the userKey.
  ##    It is illegal to pass in NULL values for either the scope or userData
  ##    arguments. It is also an error to call svPutUserData() with an invalid
  ##    svScope. This function returns -1 for all error cases, 0 upon success. It is
  ##    suggested that userData values of 0 (NULL) not be used as otherwise it can
  ##    be impossible to discern error status returns when calling svGetUserData()
proc svGetUserData*(scope: svScope; userKey: pointer): pointer {.importc, cdecl,
    impsvdpiHdr.}
  ## ::
  ##   
  ##    Retrieve an arbitrary user data pointer that was previously
  ##    stored by a call to svPutUserData(). See the comment above
  ##    svPutUserData() for an explanation of userKey, as well as
  ##    restrictions on NULL and illegal svScope and userKey values.
  ##    This function returns NULL for all error cases, 0 upon success.
  ##    This function also returns NULL in the event that a prior call
  ##    to svPutUserData() was never made.
proc svGetCallerInfo*(fileName: ptr cstring; lineNumber: ptr cint): cint {.importc,
    cdecl, impsvdpiHdr.}
  ## ::
  ##   
  ##    Returns the file and line number in the SV code from which the extern call
  ##    was made. If this information available, returns TRUE and updates fileName
  ##    and lineNumber to the appropriate values. Behavior is unpredictable if
  ##    fileName or lineNumber are not appropriate pointers. If this information is
  ##    not available return FALSE and contents of fileName and lineNumber not
  ##    modified. Whether this information is available or not is implementation
  ##    specific. Note that the string provided (if any) is owned by the SV
  ##    implementation and is valid only until the next call to any SV function.
  ##    Applications must not modify this string or free it
proc svIsDisabledState*(): cint {.importc, cdecl, impsvdpiHdr.}
  ## ::
  ##   
  ##    Returns 1 if the current execution thread is in the disabled state.
  ##    Disable protocol must be adhered to if in the disabled state.
proc svAckDisabledState*() {.importc, cdecl, impsvdpiHdr.}
  ## ::
  ##   
  ##    Imported functions call this API function during disable processing to
  ##    acknowledge that they are correctly participating in the DPI disable protocol.
  ##    This function must be called before returning from an imported function that is
  ##    in the disabled state.
proc svSizeOfBitPackedArr*(width: cint): cint {.importc, cdecl, impsvdpiHdr.}
  ## ::
  ##   
  ##    total size in bytes of the simulator's representation of a packed array
  ##    width in bits
proc svSizeOfLogicPackedArr*(width: cint): cint {.importc, cdecl, impsvdpiHdr.}
proc svPutBitVec32*(d: svBitPackedArrRef; s: ptr svBitVec32; w: cint) {.importc, cdecl,
    impsvdpiHdr.}
  ## ::
  ##    Translation between the actual representation and the canonical representation
  ##    s=source, d=destination, w=width
  ##    actual <-- canonical
proc svPutLogicVec32*(d: svLogicPackedArrRef; s: ptr svLogicVec32; w: cint) {.importc,
    cdecl, impsvdpiHdr.}
proc svGetBitVec32*(d: ptr svBitVec32; s: svBitPackedArrRef; w: cint) {.importc, cdecl,
    impsvdpiHdr.}
  ## ::
  ##    canonical <-- actual
proc svGetLogicVec32*(d: ptr svLogicVec32; s: svLogicPackedArrRef; w: cint) {.importc,
    cdecl, impsvdpiHdr.}
proc svGetSelectBit*(s: svBitPackedArrRef; i: cint): svBit {.importc, cdecl, impsvdpiHdr.}
  ## ::
  ##    
  ##    Bit select functions
  ##    Packed arrays are assumed to be indexed n-1:0,
  ##    where 0 is the index of least significant bit
  ##   
  ##    s=source, i=bit-index
proc svGetSelectLogic*(s: svLogicPackedArrRef; i: cint): svLogic {.importc, cdecl,
    impsvdpiHdr.}
proc svPutSelectBit*(d: svBitPackedArrRef; i: cint; s: svBit) {.importc, cdecl,
    impsvdpiHdr.}
  ## ::
  ##    d=destination, i=bit-index, s=scalar
proc svPutSelectLogic*(d: svLogicPackedArrRef; i: cint; s: svLogic) {.importc, cdecl,
    impsvdpiHdr.}
proc svGetPartSelectBit*(d: ptr svBitVec32; s: svBitPackedArrRef; i: cint; w: cint) {.
    importc, cdecl, impsvdpiHdr.}
  ## ::
  ##   
  ##    functions for part select
  ##   
  ##    a narrow (<=32 bits) part select is copied between
  ##    the implementation representation and a single chunk of
  ##    canonical representation
  ##    Normalized ranges and indexing [n-1:0] are used for both arrays:
  ##    the array in the implementation representation and the canonical array.
  ##   
  ##    s=source, d=destination, i=starting bit index, w=width
  ##    like for variable part selects; limitations: w <= 32
  ##   
  ##    canonical <-- actual
proc svGetBits*(s: svBitPackedArrRef; i: cint; w: cint): svBitVec32 {.importc, cdecl,
    impsvdpiHdr.}
proc svGet32Bits*(s: svBitPackedArrRef; i: cint): svBitVec32 {.importc, cdecl,
    impsvdpiHdr.}
  ## ::
  ##    32-bits
proc svGet64Bits*(s: svBitPackedArrRef; i: cint): uint64 {.importc, cdecl, impsvdpiHdr.}
proc svGetPartSelectLogic*(d: ptr svLogicVec32; s: svLogicPackedArrRef; i: cint; w: cint) {.
    importc, cdecl, impsvdpiHdr.}
  ## ::
  ##    64-bits
proc svPutPartSelectBit*(d: svBitPackedArrRef; s: svBitVec32; i: cint; w: cint) {.
    importc, cdecl, impsvdpiHdr.}
  ## ::
  ##    actual <-- canonical
proc svPutPartSelectLogic*(d: svLogicPackedArrRef; s: svLogicVec32; i: cint; w: cint) {.
    importc, cdecl, impsvdpiHdr.}
proc svPutBitArrElemVec32*(d: svOpenArrayHandle; s: ptr svBitVec32; indx1: cint) {.
    importc, cdecl, impsvdpiHdr, varargs.}
  ## ::
  ##   
  ##    Functions for open array translation between simulator and canonical representations.
  ##    These functions copy the whole packed array in either direction. The user is
  ##    responsible for allocating an array in the canonical representation.
  ##   
  ##    s=source, d=destination
  ##    actual <-- canonical
proc svPutBitArrElem1Vec32*(d: svOpenArrayHandle; s: ptr svBitVec32; indx1: cint) {.
    importc, cdecl, impsvdpiHdr.}
proc svPutBitArrElem2Vec32*(d: svOpenArrayHandle; s: ptr svBitVec32; indx1: cint;
                           indx2: cint) {.importc, cdecl, impsvdpiHdr.}
proc svPutBitArrElem3Vec32*(d: svOpenArrayHandle; s: ptr svBitVec32; indx1: cint;
                           indx2: cint; indx3: cint) {.importc, cdecl, impsvdpiHdr.}
proc svPutLogicArrElemVec32*(d: svOpenArrayHandle; s: ptr svLogicVec32; indx1: cint) {.
    importc, cdecl, impsvdpiHdr, varargs.}
proc svPutLogicArrElem1Vec32*(d: svOpenArrayHandle; s: ptr svLogicVec32; indx1: cint) {.
    importc, cdecl, impsvdpiHdr.}
proc svPutLogicArrElem2Vec32*(d: svOpenArrayHandle; s: ptr svLogicVec32; indx1: cint;
                             indx2: cint) {.importc, cdecl, impsvdpiHdr.}
proc svPutLogicArrElem3Vec32*(d: svOpenArrayHandle; s: ptr svLogicVec32; indx1: cint;
                             indx2: cint; indx3: cint) {.importc, cdecl, impsvdpiHdr.}
proc svGetBitArrElemVec32*(d: ptr svBitVec32; s: svOpenArrayHandle; indx1: cint) {.
    importc, cdecl, impsvdpiHdr, varargs.}
  ## ::
  ##    canonical <-- actual
proc svGetBitArrElem1Vec32*(d: ptr svBitVec32; s: svOpenArrayHandle; indx1: cint) {.
    importc, cdecl, impsvdpiHdr.}
proc svGetBitArrElem2Vec32*(d: ptr svBitVec32; s: svOpenArrayHandle; indx1: cint;
                           indx2: cint) {.importc, cdecl, impsvdpiHdr.}
proc svGetBitArrElem3Vec32*(d: ptr svBitVec32; s: svOpenArrayHandle; indx1: cint;
                           indx2: cint; indx3: cint) {.importc, cdecl, impsvdpiHdr.}
proc svGetLogicArrElemVec32*(d: ptr svLogicVec32; s: svOpenArrayHandle; indx1: cint) {.
    importc, cdecl, impsvdpiHdr, varargs.}
proc svGetLogicArrElem1Vec32*(d: ptr svLogicVec32; s: svOpenArrayHandle; indx1: cint) {.
    importc, cdecl, impsvdpiHdr.}
proc svGetLogicArrElem2Vec32*(d: ptr svLogicVec32; s: svOpenArrayHandle; indx1: cint;
                             indx2: cint) {.importc, cdecl, impsvdpiHdr.}
proc svGetLogicArrElem3Vec32*(d: ptr svLogicVec32; s: svOpenArrayHandle; indx1: cint;
                             indx2: cint; indx3: cint) {.importc, cdecl, impsvdpiHdr.}
