import std/[os, strformat]

const
  xlmRoot = getEnv("XCELIUM_ROOT")
  xlmIncl = xlmRoot / ".." / "include"

task updateHeaders, "Update the SV DPI-C headers in this repo":
  cpFile(xlmIncl / "svdpi.h", "includes" / "svdpi.h")
  cpFile(xlmIncl / "svdpi_compatibility.h", "includes" / "svdpi_compatibility.h")

task wrap, "Generate Nim wrapper using Futhark":
  updateHeadersTask()
  rmFile("wrapper/svdpi_wrapper.nim")
  selfExec(&"c -d:useFuthark ./src/svdpi.nim")
  # Remove absolute path references to svdpi.h.
  exec(r"sed -ri 's|(Generated based on ).+/(includes/.*)|\1\2|g' wrapper/svdpi_wrapper.nim")
