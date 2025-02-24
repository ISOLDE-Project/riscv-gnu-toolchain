Installing and Using LIT and FileCheck in a Non-LLVM Environment

Prerequisites

Before installing LIT and FileCheck, ensure you have the following dependencies installed:

Python 3 (recommended version 3.6 or later)

CMake (for building FileCheck)

Clang (optional, but useful for testing with LIT)

Ninja (optional, for faster builds)

Installing LIT

LIT (LLVM Integrated Tester) is a Python-based testing tool that can be installed separately from LLVM.

Steps to Install LIT:

Install LIT using pip:

pip install lit

Verify the installation:

lit --version

If lit is not found, ensure that your Python scripts directory is in your PATH.

Installing FileCheck

FileCheck is usually built as part of LLVM, but you can build and install it separately.

Steps to Build FileCheck:

Clone the LLVM repository (only needed for FileCheck sources):

git clone https://github.com/llvm/llvm-project.git

Navigate to the llvm-project/llvm directory:

cd llvm-project/llvm

Create a build directory and configure the build:

mkdir build && cd build
cmake -G Ninja .. -DLLVM_ENABLE_PROJECTS="llvm" -DCMAKE_BUILD_TYPE=Release

Build only FileCheck:

ninja FileCheck

Copy FileCheck to a directory in your PATH:

cp bin/FileCheck /usr/local/bin/  # Adjust path as needed

Verify the installation:

FileCheck --version

Using LIT and FileCheck

Once installed, you can use lit and FileCheck for testing.

Creating a Simple Test

Create a lit.cfg file:

import lit.formats

config.name = "MyTestSuite"
config.test_format = lit.formats.ShTest()
config.suffixes = [".txt"]

Run LIT:

lit .

Conclusion

By following these steps, you can set up and use LIT and FileCheck in any environment without needing the full LLVM build system.

