rm -r .build
mkdir .build
cd .build
conan install --build=missing .. &>> build.log
cmake -DCMAKE_BUILD_TYPE=Debug \
    -DCMAKE_C_COMPILER=/usr/bin/clang-15 \
    -DCMAKE_CXX_COMPILER=/usr/bin/clang++-15 \
    .. &>> build.log
cmake --build . &>> build.log
ctest &>> build.log
less build.log
cd ..
