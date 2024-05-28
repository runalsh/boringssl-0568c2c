"""Load dependencies needed to use the googletest library as a 3rd-party consumer."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def googletest_deps():
    """Loads common dependencies needed to use the googletest library."""

    if not native.existing_rule("com_googlesource_code_re2"):
        http_archive(
            name = "com_googlesource_code_re2",  # 2023-03-17T11:36:51Z
            sha256 = "dfa9d202472f032a95929f7c56e58c2ad21265ef33aa77c2e663e5868ee882bb",
            strip_prefix = "re2-8e87559194f84d8a880fcd8a8984174df006fb43",
            urls = ["https://github.com/google/re2/archive/8e87559194f84d8a880fcd8a8984174df006fb43.zip"],
        )

    if not native.existing_rule("com_google_absl"):
        http_archive(
            name = "com_google_absl",  # 2023-08-01T14:59:13Z
            sha256 = "9bd5ef76a39ea7309781741f3cd7b6371f1493ffcc498f6db8d976a3fe761e38",
            strip_prefix = "abseil-cpp-ca81d343946a1775860791f77cde565b43f92cdd",
            urls = ["https://github.com/abseil/abseil-cpp/archive/ca81d343946a1775860791f77cde565b43f92cdd.zip"],
        )
