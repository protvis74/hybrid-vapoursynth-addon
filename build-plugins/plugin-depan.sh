##################################################################################
#                                                                                #
#                                  Plugin-DePan V1                               #
#                                                                                #
#                                                                                #
#          ??? https://github.com/Vapoursynth-Plugins-Gitify/DePan ???           #
##################################################################################

mkdir build
cd build
wget https://www.dropbox.com/s/d72bougsis2se58/vapoursynth-depan-1.tar.gz
tar xf vapoursynth-depan-1.tar.gz
cd VapourSynth-DePan-r1
build libdepan
cd ..
rm -rf build
