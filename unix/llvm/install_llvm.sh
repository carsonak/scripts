#!/usr/bin/bash
# Download and run latest llvm install script.

INSTALL_SCRIPT_URL='https://apt.llvm.org/llvm.sh'
INSTALL_SCRIPT_FILE="./llvm.sh"

if ! cd "$(dirname "$0")"
then
    echo "ERROR: Could not change directory to '$0'" > /dev/stderr
    exit
fi

wget --timestamping "$INSTALL_SCRIPT_URL"
chmod +x "$INSTALL_SCRIPT_FILE"

if sudo "$INSTALL_SCRIPT_FILE" "$@" && [[ "$#" -ge 1 ]] && [[ "${1::1}" != "-" ]] && [[ "$1" != "all" ]]
then
    LLVM_VERSION=$1
    sudo apt install "clang-format-$LLVM_VERSION"
    sudo update-alternatives --install \
    /usr/bin/clang clang "/usr/bin/clang-$LLVM_VERSION" "$LLVM_VERSION" \
    --slave /usr/bin/clang++ clang++ "/usr/bin/clang++-$LLVM_VERSION" \
    --slave /usr/bin/clang-format clang-format "/usr/bin/clang-format-$LLVM_VERSION" \
    --slave /usr/bin/lldb lldb "/usr/bin/lldb-$LLVM_VERSION" \
    --slave /usr/bin/lld lld "/usr/bin/lld-$LLVM_VERSION" \
    --slave /usr/bin/clangd clangd "/usr/bin/clangd-$LLVM_VERSION"
fi
