licenses(["notice"])  # BSD/MIT-like license (for zlib)

filegroup(
    name = "zlib.h",
    visibility = ["//visibility:public"],
)

cc_library(
    name = "zlib",
    hdrs = ["zlib.h"],
    linkopts = ["-Lexternal/zlib/lib -lz"],
    includes = ["."],
    visibility = ["//visibility:public"],
)
