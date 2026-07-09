package(default_visibility = ["//visibility:public"])

cc_library(
    name = "pybind11",
    includes = ['lib/python3.9/site-packages/pybind11/include'],
    deps = [
        "@xla//third_party/python_runtime:headers",
    ],
)

# Used when one also needs eigen types.
cc_library(
    name = "pybind11_eigen",
    includes = ['lib/python3.9/site-packages/pybind11/include'],
    deps = [
        "@eigen_archive//:eigen3",
        "@xla//third_party/python_runtime:headers",
    ],
)

# Needed by pybind11_bazel and pybind11_abseil (they select() on this).
config_setting(
    name = "msvc_compiler",
    flag_values = {"@bazel_tools//tools/cpp:compiler": "msvc-cl"},
    visibility = ["//visibility:public"],
)

# Needed by pybind11_bazel.
config_setting(
    name = "osx",
    constraint_values = ["@platforms//os:osx"],
)
