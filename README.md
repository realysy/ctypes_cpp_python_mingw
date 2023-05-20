To use this project, you need to install Git, Cmake and MinGW64 in your windows.
 * Git is for `sh` command
 
 * MinGW64 is for `make`, `g++` and `gcc`
 
 
Guide:

 * update path of MinGW64 executables in CMakeLists.txt
 
    * note that `mingw64/bin/make.exe` is renamed from `mingw64/bin/mingw32-make.exe`
 
 * `cd scripts && sh windows_g++.sh`

 * run python to see the result: `cd python_test && python test.py`
