#!/bin/bash
ghdl HomeOfAviSynthPlusEvolution/L-SMASH-Works build
cp ../../build-plugins/lwlibav_video.c.patch common
cd common
patch -p1 lwlibav_video.c < lwlibav_video.c.patch
rm lwlibav_video.c.patch
cd ..
ghdl l-smash/l-smash
./configure --prefix="$vsprefix" --extra-cflags="$CFLAGS" || cat config.log
make -j$JOBS lib
sudo make install-lib
cp liblsmash.a ..
cd ../VapourSynth

#CFLAGS="$CFLAGS -Wno-deprecated-declarations" meson setup build --prefix="$vsprefix" <--- meson.build:1:0: ERROR: prefix value '' must be an absolute path
CFLAGS="$CFLAGS -Wno-deprecated-declarations" meson setup build --prefix="$HOME/opt/vapoursynth"
ninja -C build -j $JOBS

cp build/libvslsmashsource.so ../libvslsmashsource.so
cd ..
finish libvslsmashsource.so

















