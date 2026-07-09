"""TensorFlow workspace initialization. Consult the WORKSPACE on how to use it."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@com_google_benchmark//:bazel/benchmark_deps.bzl", "benchmark_deps")
load("@io_bazel_rules_closure//closure:defs.bzl", "closure_repositories")
load("@rules_pkg//:deps.bzl", "rules_pkg_dependencies")
load("@xla//third_party/llvm:setup.bzl", "llvm_setup")
load("//third_party:repo.bzl", "tf_http_archive", "tf_mirror_urls")
load("//third_party/android:android_configure.bzl", "android_configure")

# buildifier: disable=unnamed-macro
def workspace(with_rules_cc = True):
    """Loads a set of TensorFlow dependencies. To be used in a WORKSPACE file.

    Args:
      with_rules_cc: Unused, to be removed soon.
    """
    llvm_setup(name = "llvm-project")
    native.register_toolchains("@local_config_python//:py_toolchain")
    rules_pkg_dependencies()

    # CMS: protobuf 6.31.1 needs rules_java 8.x (Bazel 7.7.0 bundles an older one, and the
    # upstream override via grpc_extra_deps()->protobuf_deps() is dropped in the system-grpc
    # build). Register it here so tf_workspace0() -- loaded after this macro runs -- can call
    # rules_java's compatibility_proxy_repo() against 8.6.1.
    if not native.existing_rule("rules_java"):
        http_archive(
            name = "rules_java",
            urls = [
                "https://github.com/bazelbuild/rules_java/releases/download/8.6.1/rules_java-8.6.1.tar.gz",
            ],
            sha256 = "c5bc17e17bb62290b1fd8fdd847a2396d3459f337a7e07da7769b869b488ec26",
        )

    closure_repositories()

    tf_http_archive(
        name = "bazel_toolchains",
        sha256 = "294cdd859e57fcaf101d4301978c408c88683fbc46fbc1a3829da92afbea55fb",
        strip_prefix = "bazel-toolchains-8c717f8258cd5f6c7a45b97d974292755852b658",
        urls = tf_mirror_urls(
            "https://github.com/bazelbuild/bazel-toolchains/archive/8c717f8258cd5f6c7a45b97d974292755852b658.tar.gz",
        ),
    )

    android_configure(name = "local_config_android")

    benchmark_deps()

# Alias so it can be loaded without assigning to a different symbol to prevent
# shadowing previous loads and trigger a buildifier warning.
tf_workspace1 = workspace
