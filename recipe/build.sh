if [[ "`uname`" == "Linux" ]]
then
    export CXXFLAGS="${CXXFLAGS} -fopenmp"
    export LDFLAGS="${LDFLAGS} -Wl,-rpath-link,${PREFIX}/lib"
fi

export CXXFLAGS="${CXXFLAGS} -Wall -Wno-unknown-pragmas -O3 -DNDEBUG"

make all CC="${CXX}" CXX="${CXX}" LD="${LD}" CXXFLAGS="${CXXFLAGS}" LDFLAGS="${LDFLAGS}"
