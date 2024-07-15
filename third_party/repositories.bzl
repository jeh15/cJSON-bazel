"""
    Fetches HTTP archive of cJSON source code.
"""
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def cjson_archive(_ctx):
    http_archive(
        name = "archive_cjson",
        build_file = "//third_party/cjson:BUILD.bazel",
        strip_prefix = "cJSON-1.7.18",
        url = "https://github.com/DaveGamble/cJSON/archive/refs/tags/v1.7.18.tar.gz",
        integrity = "sha256-OqgGhEoDRCwAdpuD6ZlwvnD77wNzX/iY9IEd0DufXuU="
    )
