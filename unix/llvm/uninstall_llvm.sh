#!/usr/bin/env bash
# Uninstall installed clang.

LLVM_VERSION=$1
VERSION_SUFFIX=""

if [[ -n $LLVM_VERSION ]]
then VERSION_SUFFIX="-$LLVM_VERSION"
fi

sudo rm /etc/apt/sources.list.d/archive_uri-http_apt_llvm_org_*.list
sudo rm /etc/apt/trusted.gpg.d/apt.llvm.org.asc
sudo apt remove --autoremove \
    "clang$VERSION_SUFFIX" \
    "lldb$VERSION_SUFFIX" \
    "lld$VERSION_SUFFIX" \
    "clangd$VERSION_SUFFIX" \
    "clang-format$VERSION_SUFFIX"
sudo update-alternatives --remove clang "/usr/bin/clang$VERSION_SUFFIX"
