#include <iostream>
#include <string>

#include "test.h"

using namespace std;

void test_func(int x) {
    printf("hi nana: %d\n", x);
}


int main()
{
    test_func(555);

    return 0;
}
