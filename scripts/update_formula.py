from sys import argv
from re import search
from typing import Final
from textwrap import indent

import os

[_, version, formula_name, desc] = argv


def panic(message: str):
    print(message)
    exit(1)


def get_formula_content_by_arch(arch: str, url: str): return f"""if Hardware::CPU.{arch}?
    url "{url}"
    sha256 "{calc_sha256(url)}"
    
    def install
      bin.install "{formula_name}"
    end
  end
"""


def get_formula_content(data): return "\n".join(map(lambda os: f"""
on_{os} do
  {space(2).join(map(lambda arch: get_formula_content_by_arch(arch, data[os][arch]["url"]), data[os].keys()))}
end
""", data.keys()))


def space(width: int): return width * " "


def get_formula(data): return f"""class {formula_name.title()} < Formula
  desc "{desc}"
  homepage "https://github.com/mistricky/{formula_name}"
  version "{version[1:]}"
    {indent(get_formula_content(data), space(4))}
  end
"""


def calc_sha256(package_url: str): return os.popen(
    f'curl -sL "{package_url}" | shasum -a 256 | cut -d " " -f 1').read().strip()


def get_package_url(
    package_name): return f"https://github.com/mistricky/{formula_name}/releases/download/{version}/{package_name}"


def write_formula(content: str):
    handle = open(f"./{formula_name}.rb", "w")
    handle.write(content)
    handle.close


def get_rust_format_formula_data(): return {
    "macos": {
        "arm": {
            "url": get_package_url(f"{formula_name}-aarch64-apple-darwin.tar.gz")
        },
        "intel": {
            "url": get_package_url(f"{formula_name}-x86_64-apple-darwin.tar.gz")
        }
    },
    "linux": {
        "arm": {
            "url": get_package_url(f"{formula_name}-aarch64-unknown-linux-gnu.tar.gz")
        },
        "intel": {
            "url": get_package_url(f"{formula_name}-x86_64-unknown-linux-gnu.tar.gz")
        }
    }
}


is_semantic_version: Final[bool] = search(
    "^v[0-9]+\\.[0-9]+\\.[0-9]+$", version)

if not is_semantic_version:
    panic("Not valid semantic version format")


write_formula(get_formula(get_rust_format_formula_data()))
