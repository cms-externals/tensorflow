load("//third_party/cms:repo.bzl", "cms_new_local_repository")

def png():
    cms_new_local_repository(
        name = "png",
        build_file = "//third_party/systemlibs:png.BUILD",
        create_files = ["COPYING"],
    )

def jpeg():
    cms_new_local_repository(
        name = "libjpeg_turbo",
        build_file = "//third_party/jpeg:BUILD.system",
        create_files = ["LICENSE.md"],
    )

def gif():
    cms_new_local_repository(
        name = "gif",
        build_file = "//third_party/systemlibs:gif.BUILD",
        create_files = ["COPYING"],
    )

def hwloc():
    cms_new_local_repository(
        name = "hwloc",
        build_file = "//third_party/hwloc:BUILD.system",
        create_files = ["COPYING"],
    )

def grpc():
    cms_new_local_repository(
        name = "com_github_grpc_grpc",
        build_file = "//third_party/systemlibs:grpc.BUILD",
        create_files = ["LICENSE"],
        symlinks = {
            "//third_party/systemlibs:grpc.bazel.generate_cc.bzl":     "bazel/generate_cc.bzl",
            "//third_party/systemlibs:grpc.bazel.grpc_extra_deps.bzl": "bazel/grpc_extra_deps.bzl",
            "//third_party/systemlibs:grpc.bazel.cc_grpc_library.bzl": "bazel/cc_grpc_library.bzl",
            "//third_party/systemlibs:grpc.bazel.grpc_deps.bzl":       "bazel/grpc_deps.bzl",
            "//third_party/systemlibs:grpc.bazel.protobuf.bzl":        "bazel/protobuf.bzl",
            "//third_party/systemlibs:BUILD":                          "bazel/BUILD",
        },
    )

def eigen():
    cms_new_local_repository(
        name = "eigen_archive",
        build_file = "//third_party/systemlibs:eigen.BUILD",
        create_files = ["COPYING.MPL2"],
     )

def protobuf():
    cms_new_local_repository(
        name = "com_google_protobuf",
        build_file = "//third_party/systemlibs:protobuf.BUILD",
        create_files = ["LICENSE"],
        symlinks = {
            "//third_party/systemlibs:protobuf.bzl": "protobuf.bzl",
        },
    )

def pcre():
    cms_new_local_repository(
        name = "pcre",
        build_file = "//third_party/systemlibs:pcre.BUILD",
        create_files = ["LICENCE"],
    )

def pybind11():
    cms_new_local_repository(
        name = "pybind11",
        build_file = "//third_party/systemlibs:pybind11.BUILD",
        create_files = ["LICENCE"],
    )

def flatbuffers():
    cms_new_local_repository(
        name = "flatbuffers",
        build_file = "//third_party/flatbuffers:BUILD.system",
        create_files = ["LICENSE.txt"],
        symlinks = {
            "//third_party/flatbuffers:build_defs.bzl": "build_defs.bzl",
        },
    )

def curl():
    cms_new_local_repository(
        name = "curl",
        build_file = "//third_party/systemlibs:curl.BUILD",
        create_files = ["COPYING"],
    )

def zlib():
    cms_new_local_repository(
        name = "zlib",
        build_file = "//third_party/systemlibs:zlib.BUILD",
        symlinks = {
            "include/zlib.h": "zlib.h",
        },
    )

def cython():
    cms_new_local_repository(
        name = "cython",
        build_file = "//third_party/systemlibs:cython.BUILD",
    )

def functools32():
    cms_new_local_repository(
        name = "functools32_archive",
        build_file = "//third_party/systemlibs:functools32.BUILD",
    )

def astor():
    cms_new_local_repository(
        name = "astor_archive",
        build_file = "//third_party/systemlibs:astor.BUILD",
    )

def six():
    cms_new_local_repository(
        name = "six_archive",
        build_file = "//third_party/systemlibs:six.BUILD",
    )

def termcolor():
    cms_new_local_repository(
        name = "termcolor_archive",
        build_file = "//third_party/systemlibs:termcolor.BUILD",
    )

def typing_extensions():
    cms_new_local_repository(
        name = "typing_extensions_archive",
        build_file = "//third_party/systemlibs:typing_extensions.BUILD",
    )

def sqlite():
    cms_new_local_repository(
        name = "org_sqlite",
        build_file = "//third_party/systemlibs:sqlite.BUILD",
    )

def absl_py():
    cms_new_local_repository(
        name = "absl_py",
        build_file = "//third_party/systemlibs:absl_py.BUILD",
        symlinks = {
            "//third_party/systemlibs:absl_py.absl.BUILD": "absl/BUILD",
            "//third_party/systemlibs:absl_py.absl.flags.BUILD": "absl/flags/BUILD",
            "//third_party/systemlibs:absl_py.absl.logging.BUILD": "absl/logging/BUILD",
            "//third_party/systemlibs:absl_py.absl.testing.BUILD": "absl/testing/BUILD",
        },
    )

def pasta():
    cms_new_local_repository(
        name = "pasta",
        build_file = "//third_party/pasta:BUILD.system",
    )

def wrapt():
    cms_new_local_repository(
        name = "wrapt",
        build_file = "//third_party/systemlibs:wrapt.BUILD",
    )

def gast():
    cms_new_local_repository(
        name = "gast_archive",
        build_file = "//third_party/systemlibs:gast.BUILD",
    )

def backports_weakref():
    cms_new_local_repository(
        name = "org_python_pypi_backports_weakref",
        build_file = "//third_party/systemlibs:backports_weakref.BUILD",
        create_files = ["LICENSE"],
    )

def opt_einsum():
    cms_new_local_repository(
        name = "opt_einsum_archive",
        build_file = "//third_party/systemlibs:opt_einsum.BUILD",
    )

def repos():
    png()
    jpeg()
    gif()
    hwloc()
    grpc()
    eigen()
    protobuf()
    pybind11()
    curl()
    zlib()
    cython()
    flatbuffers()
    functools32()
    astor()
    six()
    termcolor()
    typing_extensions()
    sqlite()
    absl_py()
    pasta()
    wrapt()
    gast()
    backports_weakref()
    opt_einsum()
