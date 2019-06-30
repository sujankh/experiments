loop_asm:
	clang++ -O2 loop_benchmark.cc -target x86_64-pc-linux-gnu -S -o loop_benchmark.S

loop_mca: loop_asm
	llvm-mca-8 -mcpu=btver2 loop_benchmark.S


dot_asm:
# Use /usr/lib/llvm-8/bin/llc --version to get the target
	clang++ -std=c++17 -stdlib=libc++ -O2 dot_product.cc -target x86_64-pc-linux-gnu -S -o dot_product.S

dot_mca: dot_asm
	llvm-mca-8 -mcpu=btver2 dot_product.S
