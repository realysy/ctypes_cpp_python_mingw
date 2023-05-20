import ctypes

# Load the shared library
pDll = ctypes.CDLL('../bin/libtest.dll')

pDll.test_func(55)  # call func in cpp
