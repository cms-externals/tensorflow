py_library(
    name = "pkg",
    visibility = ["//visibility:public"],
)

filegroup(
    name = "includes",
    srcs = glob(["c-api/core/include/**/*.h"]),
)

cc_library(
    name = "numpy_headers",
    hdrs = [":includes"],
    strip_include_prefix="c-api/core/include/",
    visibility = ["//visibility:public"],
)
