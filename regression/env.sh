export ROOT_DIR=$(git rev-parse --show-toplevel)
LLVM_BIN=$ROOT_DIR/build-llvm-newlib/bin
LLVM_BUILD=$ROOT_DIR/build-llvm-newlib/
export PATH=$LLVM_BIN:$PATH