"""
    Module extension implementation for cJSON.
"""

load("//third_party:repositories.bzl", "cjson_archive")

def _cjson_implementation(_ctx):
    cjson_archive(_ctx)

cjson_extension = module_extension(
    implementation = _cjson_implementation,
)
