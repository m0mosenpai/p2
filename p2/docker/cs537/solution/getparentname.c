#include "types.h"
#include "user.h"
#include "syscall.h"

#define MAX_NAME_LEN 256

int main(void) {
    char parentbuf[MAX_NAME_LEN];
    char childbuf[MAX_NAME_LEN];

    // test-1
    if (getparentname(parentbuf, childbuf, MAX_NAME_LEN, MAX_NAME_LEN) < 0) {
      printf(2, "XV6_TEST_ERROR getparentname call failed!\n");
    }
    else {
      getparentname(parentbuf, childbuf, MAX_NAME_LEN, MAX_NAME_LEN);
      printf(1, "XV6_TEST_OUTPUT Parent Name: %s, Child name: %s\n", parentbuf, childbuf);
    }

    // test-2 
    if (getparentname((char*)0, childbuf, MAX_NAME_LEN, MAX_NAME_LEN) < 0 &&
      getparentname(parentbuf, (char*)0, MAX_NAME_LEN, MAX_NAME_LEN) < 0) {
      printf(1, "XV6_TEST_OUTPUT Null pointers handled correctly.\n");
    }
    else {
        printf(2, "XV6_TEST_ERROR Test failed! Null pointers not handled correctly.\n");
    }

    // test-3
    int empty_buffer_length = 0;
    if (getparentname(parentbuf, childbuf, empty_buffer_length, MAX_NAME_LEN) < 0 &&
      getparentname(parentbuf, childbuf, MAX_NAME_LEN, empty_buffer_length) < 0) {
      printf(1, "XV6_TEST_OUTPUT Zero buffer length handled correctly.\n");
    }
    else {
        printf(2, "XV6_TEST_ERROR Test failed! Zero buffer length not handled correctly.\n");
    }

    // test-4
    char parentbuf_2[MAX_NAME_LEN];
    char childbuf_2[MAX_NAME_LEN];
    if (getparentname(parentbuf_2, childbuf_2, 1000000000, 1000000000) < 0) {
      printf(1, "XV6_TEST_OUTPUT Out of bounds access handled correctly!\n");
    }
    else {
      getparentname(parentbuf_2, childbuf_2, 15, 15);
      printf(2, "XV6_TEST_ERROR Test failed! Out of bounds access not handled correctly.\n", parentbuf_2, childbuf_2);
    }

    exit();
}
