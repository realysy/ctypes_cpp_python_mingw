#ifndef __TEST__
#define __TEST__

#define DLLEXPORT extern "C" __declspec(dllexport)

DLLEXPORT void test_func(int x);

#endif
