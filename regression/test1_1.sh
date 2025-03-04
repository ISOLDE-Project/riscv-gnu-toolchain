. ./env.sh
TEST_CASE=onnx_conv2d
llc -mtriple=riscv32 -mattr=+v -target-abi=ilp32d -filetype=asm < $ROOT_DIR/llvm/llvm/test/CodeGen/ISOLDE/$TEST_CASE.ll
#llvm-mc --arch=riscv32  -show-encoding                           < $ROOT_DIR/llvm/llvm/test/CodeGen/ISOLDE/$TEST_CASE.s

#llvm-lit -v $ROOT_DIR/llvm/llvm/test/CodeGen/ISOLDE/$TEST_CASE.ll $ROOT_DIR/llvm/llvm/test/CodeGen/ISOLDE/$TEST_CASE.s