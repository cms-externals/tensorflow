load("@rules_python//python:py_library.bzl", "py_library")

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
    # CMS: grpc++ headers (config_protobuf.h) include protobuf's json_util.h /
    # type_resolver_util.h. The system grpc BUILD must propagate those protobuf
    # headers to grpc-consuming compiles (e.g. generated *.grpc.pb.cc).
    deps = [
        "@com_google_protobuf//:json_util",
        "@com_google_protobuf//:type_resolver",
    ],
    visibility = ["//visibility:public"],
)

cc_library(
    name = "grpc++_codegen_proto",
    includes = ["include"],
    # CMS: same as grpc++ -- generated *.grpc.pb.cc depend on this and pull in
    # config_protobuf.h, which needs protobuf's json_util / type_resolver headers.
    deps = [
        "@com_google_protobuf//:json_util",
        "@com_google_protobuf//:type_resolver",
    ],
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

# Runtime python gRPC library. The generated *_pb2_grpc.py stubs depend on this
# for `import grpc`; the actual grpcio package is provided by the system Python
# environment, so this is an empty py_library that only satisfies the PyInfo dep
# (py_grpc_library's grpc_library attr) -- the CMS system-grpc repo has no
# in-source //src/python/grpcio/grpc:grpcio target. It uses rules_python's
# py_library (loaded above) so it provides rules_python's PyInfo, which is the
# provider python_rules.bzl checks for (the native py_library's PyInfo differs).
py_library(
    name = "grpcio",
    visibility = ["//visibility:public"],
)
