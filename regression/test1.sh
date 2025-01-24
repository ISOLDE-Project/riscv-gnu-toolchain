#llc  -mtriple=riscv32 -mattr=+v -target-abi=ilp32d -filetype=asm -o - $ROOT_DIR/llvm/llvm/test/CodeGen/ISOLDE/test_q.ll
#llc  -mtriple=riscv32 -mattr=+v -target-abi=ilp32d -filetype=asm -o - $ROOT_DIR/llvm/llvm/test/CodeGen/ISOLDE/test_q1.ll


llvm-lit  $ROOT_DIR/llvm/llvm/test/CodeGen/ISOLDE/test_q.ll $ROOT_DIR/llvm/llvm/test/CodeGen/ISOLDE/test_q1.ll
#llvm-lit   $ROOT_DIR/llvm/llvm/test/CodeGen/ISOLDE/test_q1.ll