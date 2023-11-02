# Description:
#   Eigen is a C++ template library for linear algebra: vectors,
#   matrices, and related algorithms.

licenses([
    # Note: Eigen is an MPL2 library that includes GPL v3 and LGPL v2.1+ code.
    #       We've taken special care to not reference any restricted code.
    "reciprocal",  # MPL2
    "notice",  # Portions BSD
])

filegroup(
    name = "COPYING.MPL2",
    visibility = ["//visibility:public"],
)

cc_library(
    name = "eigen",
    includes = ["include/eigen3"],
    defines = [
        # This define (mostly) guarantees we don't link any problematic
        # code. We use it, but we do not rely on it, as evidenced above.
        "EIGEN_MPL2_ONLY",
        "EIGEN_MAX_ALIGN_BYTES=64",
        "EIGEN_HAS_TYPE_TRAITS=0",
    ],
    visibility = ["//visibility:public"],
)

cc_library(
    name = "eigen3",
    hdrs = [],
    defines = [
        # This define (mostly) guarantees we don't link any problematic
        # code. We use it, but we do not rely on it, as evidenced above.
        "EIGEN_MPL2_ONLY",
        "EIGEN_MAX_ALIGN_BYTES=64",
    ],
    includes = ["include/eigen3"],
    visibility = ["//visibility:public"],
)
