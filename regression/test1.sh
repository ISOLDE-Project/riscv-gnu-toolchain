. ./env.sh

llvm-lit -v $ROOT_DIR/llvm/llvm/test/CodeGen/ISOLDE/test_q4.ll   $ROOT_DIR/llvm/llvm/test/CodeGen/ISOLDE/test_q1.ll    \
            $ROOT_DIR/llvm/llvm/test/CodeGen/ISOLDE/test_q3.ll   $ROOT_DIR/llvm/llvm/test/CodeGen/ISOLDE/test_q5.ll     \
            $ROOT_DIR/llvm/llvm/test/CodeGen/ISOLDE/test_q2.ll   $ROOT_DIR/llvm/llvm/test/CodeGen/ISOLDE/test_qn.s      \
            $ROOT_DIR/llvm/llvm/test/CodeGen/ISOLDE/onnx_conv2d.ll