licenses(["notice"])  # BSD/MIT-like license

filegroup(
    name = "LICENSE",
    visibility = ["//visibility:public"],
)

cc_library(
    name = "png",
    linkopts = ["-Lexternal/png/lib -lpng"],
    includes = ["include"],
    visibility = ["//visibility:public"],
)
