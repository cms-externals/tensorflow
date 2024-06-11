licenses(["notice"])  # Apache v2

filegroup(
    name = "LICENSE",
    visibility = ["//visibility:public"],
)

cc_library(
    name = "grpc",
    includes = ["include"],
    linkopts = [
        "-Lexternal/com_github_grpc_grpc/lib",
        "-lgrpc",
        "-lgpr",
    ],
    visibility = ["//visibility:public"],
)

cc_library(
    name = "grpc++",
    includes = ["include"],
    linkopts = [
        "-Lexternal/com_github_grpc_grpc/lib",
        "-lgrpc++",
        "-lgpr",
    ],
    visibility = ["//visibility:public"],
)

cc_library(
    name = "grpc++_public_hdrs",
    includes = ["include"],
    visibility = ["//visibility:public"],
)

cc_library(
    name = "grpc++_codegen_proto",
    includes = ["include"],
    visibility = ["//visibility:public"],
)

cc_library(
    name = "grpc_unsecure",
    includes = ["include"],
    linkopts = [
        "-Lexternal/com_github_grpc_grpc/lib",
        "-lgrpc_unsecure",
        "-lgpr",
    ],
    visibility = ["//visibility:public"],
)

cc_library(
    name = "grpc++_unsecure",
    includes = ["include"],
    linkopts = [
        "-Lexternal/com_github_grpc_grpc/lib",
        "-lgrpc++_unsecure",
        "-lgpr",
    ],
    visibility = ["//visibility:public"],
)

genrule(
    name = "ln_grpc_cpp_plugin",
    outs = ["grpc_cpp_plugin.bin"],
    cmd = "ln -s $$(which grpc_cpp_plugin) $@",
)

sh_binary(
    name = "grpc_cpp_plugin",
    srcs = ["grpc_cpp_plugin.bin"],
    visibility = ["//visibility:public"],
)

genrule(
    name = "ln_grpc_python_plugin",
    outs = ["grpc_python_plugin.bin"],
    cmd = "ln -s $$(which grpc_python_plugin) $@",
)

sh_binary(
    name = "grpc_python_plugin",
    srcs = ["grpc_python_plugin.bin"],
    visibility = ["//visibility:public"],
)
