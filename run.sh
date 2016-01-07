mono bin/tcc.exe test/Programs/"${1}" test.asm
if [ -e test.asm ]; then
    if tasm test.asm test.bc; then
        tvm test.bc test/Inputs/test.IN
    fi
fi
