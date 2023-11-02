licenses(["notice"])  # MIT

filegroup(
    name = "COPYING",
    visibility = ["//visibility:public"],
)

cc_library(
    name = "gif",
    linkopts = ["-Lexternal/gif/lib -lgif"],
    includes = ["include"],
    visibility = ["//visibility:public"],
)
