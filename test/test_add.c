#include "unity.h"
#include"learning_1_header.h"

/* Required by the unity test framework */
void setUp(){}
/* Required by the unity test framework */
void tearDown(){}

void test_add_1(void)
{
  TEST_ASSERT_EQUAL(9, factorial(5, 4));
  TEST_ASSERT_EQUAL(8, factorial(6, 2));
}
void test_add_2(void)
{
  TEST_ASSERT_EQUAL(2, factorial(1, 1));
  TEST_ASSERT_EQUAL(56, factorial(50, 6));
}


int test_main(void)
{
/* Initiate the Unity Test Framework */
  UNITY_BEGIN();

/* Run Test functions */
  RUN_TEST(test_add_1);
  RUN_TEST(test_add_2);


  /* Close the Unity Test Framework */
  return UNITY_END();
}
