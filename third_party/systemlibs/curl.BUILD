licenses(["notice"])  # MIT/X derivative license

filegroup(
    name = "COPYING",
    visibility = ["//visibility:public"],
)

cc_library(
    name = "curl",
    linkopts = ["-Lexternal/curl/lib -lcurl"],
    includes = ["include"],
    visibility = ["//visibility:public"],
)
