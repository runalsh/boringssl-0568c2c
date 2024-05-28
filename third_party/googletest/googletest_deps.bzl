"""Load dependencies needed to use the googletest library as a 3rd-party consumer."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def googletest_deps():
    """Loads common dependencies needed to use the googletest library."""

    if not native.existing_rule("com_googlesource_code_re2"):
        http_archive(
            name = "com_googlesource_code_re2",  # 2023-03-17T11:36:51Z
            sha256 = "2b2b1ce96aefefb5dc3d32d9265fb0740ce5735bad4e3b74e06aec15b225e326",
            strip_prefix = "re2-a771d3fbe7c432dc4db68360c6c0004fdde5646b",
            urls = ["https://github.com/google/re2/archive/a771d3fbe7c432dc4db68360c6c0004fdde5646b.zip"],
        )

    if not native.existing_rule("com_google_absl"):
        http_archive(
            name = "com_google_absl",  # 2023-08-01T14:59:13Z
            sha256 = "5a443fed3f144cf28b6dffa67e5a07971ae7e23cd55436645ee0590aebf56c27",
            strip_prefix = "abseil-cpp-44e077d6660f06e5500a604b48f8c109396d6d0d",
            urls = ["https://github.com/abseil/abseil-cpp/archive/44e077d6660f06e5500a604b48f8c109396d6d0d.zip"],
        )
