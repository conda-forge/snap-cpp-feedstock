if [[ "`uname`" == "Linux" ]]
then
    export LDFLAGS="${LDFLAGS} -Wl,-rpath-link,${PREFIX}/lib"
fi

make all CC="${CXX}" CXX="${CXX}" LD="${LD}" CXXFLAGS="${CXXFLAGS}" LDFLAGS="${LDFLAGS}"
