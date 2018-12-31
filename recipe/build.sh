if [[ "`uname`" == "Linux" ]]
then
    export LDFLAGS="${LDFLAGS} -Wl,-rpath-link,${PREFIX}/lib"
fi

make all CC="${CC}" CXX="${CXX}" LD="${LD}"
