#include "types.h"
#include "user.h"
#include "syscall.h"

#define MAX_NAME_LEN 256

int main(int argc, char *argv[]) {
    char parentbuf[MAX_NAME_LEN];
    char childbuf[MAX_NAME_LEN];

    getparentname(parentbuf, childbuf, MAX_NAME_LEN, MAX_NAME_LEN);
    printf(1, "XV6_TEST_OUTPUT Parent Name: %s, Child name: %s\n", parentbuf, childbuf);
    exit();
}
