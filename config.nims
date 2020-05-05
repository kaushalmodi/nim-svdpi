task wrap, "Generate Nim wrapper using Nimterop":
  exec("nim c -d:svGenWrapper --verbosity:0 ./src/svdpi.nim > wrapper/svdpi_wrapper.nim")
  # Remove the actual path to svdpi.h.
  exec(r"sed -ri 's|/[^ ]+/svdpi\.h|/path/to/svdpi.h|g' wrapper/svdpi_wrapper.nim")
  # Remove the time stamp to reduce commit noise.
  exec(r"sed -ri '/Generated at/d' wrapper/svdpi_wrapper.nim")
