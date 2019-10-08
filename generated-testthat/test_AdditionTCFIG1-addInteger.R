source(system.file("code-samples/both-defs/good/full/AdditionTCFIG1.R", package = "wyz.code.offensiveProgramming"))
object_o_1 <- AdditionTCFIG1()
emsre <- EvaluationMode("standard_R_evaluation")
rtcsre10 <- runTestCase(object_o_1, 10, emsre)
rtcsre11 <- runTestCase(object_o_1, 11, emsre)
rtcsre12 <- runTestCase(object_o_1, 12, emsre)
rtcsre13 <- runTestCase(object_o_1, 13, emsre)
rtcsre14 <- runTestCase(object_o_1, 14, emsre)
rtcsre15 <- runTestCase(object_o_1, 15, emsre)
rtcsre16 <- runTestCase(object_o_1, 16, emsre)
rtcsre17 <- runTestCase(object_o_1, 17, emsre)
rtcsre18 <- runTestCase(object_o_1, 18, emsre)

test_that('addInteger', {

# test 10 - sum 2 integers - correct
expect_true(rtcsre10$synthesis$status)
expect_true(rtcsre10$synthesis$value_check)


# test 11 - sum 1 integer and 1 NA_integer - correct
expect_true(rtcsre11$synthesis$status)
expect_true(rtcsre11$synthesis$value_check)


# test 12 - sum 2 NA_integer - correct
expect_true(rtcsre12$synthesis$status)
expect_true(rtcsre12$synthesis$value_check)


# test 13 - sum a converted string with one integer - correct
expect_true(rtcsre13$synthesis$status)
expect_true(rtcsre13$synthesis$value_check)


# test 14 - sum 1 integer and 1 double - erroneous
expect_true(rtcsre14$synthesis$status)
expect_false(rtcsre14$synthesis$value_check)


# test 15 - sum 1 integer and 1 Inf - correct
expect_true(rtcsre15$synthesis$status)
expect_true(rtcsre15$synthesis$value_check)


# test 16 - sum 1 integer and 1 NAN - correct
expect_true(rtcsre16$synthesis$status)
expect_true(rtcsre16$synthesis$value_check)


# test 17 - sum 1 integer and 1 NA - correct
expect_true(rtcsre17$synthesis$status)
expect_true(rtcsre17$synthesis$value_check)


# test 18 - sum a vector of 2 integers with 1 integer - correct
expect_true(rtcsre18$synthesis$status)
expect_true(rtcsre18$synthesis$value_check)

})

emtce <- EvaluationMode("type_checking_enforcement")
rtctce10 <- runTestCase(object_o_1, 10, emtce)
rtctce11 <- runTestCase(object_o_1, 11, emtce)
rtctce12 <- runTestCase(object_o_1, 12, emtce)
rtctce13 <- runTestCase(object_o_1, 13, emtce)
rtctce14 <- runTestCase(object_o_1, 14, emtce)
rtctce15 <- runTestCase(object_o_1, 15, emtce)
rtctce16 <- runTestCase(object_o_1, 16, emtce)
rtctce17 <- runTestCase(object_o_1, 17, emtce)
rtctce18 <- runTestCase(object_o_1, 18, emtce)

test_that('addInteger', {

# test 10 - sum 2 integers - correct
expect_true(rtctce10$synthesis$status)
expect_true(rtctce10$synthesis$value_check)


# test 11 - sum 1 integer and 1 NA_integer - correct
expect_true(rtctce11$synthesis$status)
expect_true(rtctce11$synthesis$value_check)


# test 12 - sum 2 NA_integer - correct
expect_true(rtctce12$synthesis$status)
expect_true(rtctce12$synthesis$value_check)


# test 13 - sum a converted string with one integer - correct
expect_true(rtctce13$synthesis$status)
expect_true(rtctce13$synthesis$value_check)


# test 14 - sum 1 integer and 1 double - failure
expect_equal(rtctce14$synthesis$status, rtctce14$synthesis$function_return_check && rtctce14$synthesis$parameter_check)
expect_equal(rtctce14$synthesis$execution_evaluation, "failure")


# test 15 - sum 1 integer and 1 Inf - failure
expect_equal(rtctce15$synthesis$status, rtctce15$synthesis$function_return_check && rtctce15$synthesis$parameter_check)
expect_equal(rtctce15$synthesis$execution_evaluation, "failure")


# test 16 - sum 1 integer and 1 NAN - failure
expect_equal(rtctce16$synthesis$status, rtctce16$synthesis$function_return_check && rtctce16$synthesis$parameter_check)
expect_equal(rtctce16$synthesis$execution_evaluation, "failure")


# test 17 - sum 1 integer and 1 NA - failure
expect_equal(rtctce17$synthesis$status, rtctce17$synthesis$function_return_check && rtctce17$synthesis$parameter_check)
expect_equal(rtctce17$synthesis$execution_evaluation, "failure")


# test 18 - sum a vector of 2 integers with 1 integer - failure
expect_equal(rtctce18$synthesis$status, rtctce18$synthesis$function_return_check && rtctce18$synthesis$parameter_check)
expect_equal(rtctce18$synthesis$execution_evaluation, "failure")

})

