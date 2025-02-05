. ./env.sh

clang -cc1 -mllvm -debug-only=EmitISOLDEBuiltinExpr -target-feature +v -target-abi ilp32d -emit-llvm -O0 -o - $ROOT_DIR/llvm/clang/test/CodeGen/ISOLDE/redmule_gemm.c
#clang -cc1  -target-feature +v -target-abi ilp32d -emit-llvm -O0 -o - $ROOT_DIR/llvm/clang/test/CodeGen/ISOLDE/redmule_gemm.c
#clang -cc1   -target-feature +v -target-abi ilp32d -S -O0 -o - $ROOT_DIR/llvm/clang/test/CodeGen/ISOLDE/redmule_gemm.c

