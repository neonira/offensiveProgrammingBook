source(system.file("code-samples/both-defs/good/full/AdditionTCFIG1.R", package = "wyz.code.offensiveProgramming"))
object_o_1 <- AdditionTCFIG1()
emsre <- EvaluationMode("standard_R_evaluation")
rtcsre27 <- runTestCase(object_o_1, 27, emsre)
rtcsre28 <- runTestCase(object_o_1, 28, emsre)
rtcsre29 <- runTestCase(object_o_1, 29, emsre)

test_that('addMultiInteger', {

# test 27 - sum of 4 integers - correct
expect_true(rtcsre27$synthesis$status)
expect_true(rtcsre27$synthesis$value_check)


# test 28 - sum of 1 integer, 2 doubles and 1 NA_integer_ - correct
expect_true(rtcsre28$synthesis$status)
expect_true(rtcsre28$synthesis$value_check)


# test 29 - sum of one integer and nothing - correct
expect_true(rtcsre29$synthesis$status)
expect_true(rtcsre29$synthesis$value_check)

})

emtce <- EvaluationMode("type_checking_enforcement")
rtctce27 <- runTestCase(object_o_1, 27, emtce)
rtctce28 <- runTestCase(object_o_1, 28, emtce)
rtctce29 <- runTestCase(object_o_1, 29, emtce)

test_that('addMultiInteger', {

# test 27 - sum of 4 integers - correct
expect_true(rtctce27$synthesis$status)
expect_true(rtctce27$synthesis$value_check)


# test 28 - sum of 1 integer, 2 doubles and 1 NA_integer_ - failure
expect_equal(rtctce28$synthesis$status, rtctce28$synthesis$function_return_check && rtctce28$synthesis$parameter_check)
expect_equal(rtctce28$synthesis$execution_evaluation, "failure")


# test 29 - sum of one integer and nothing - correct
expect_true(rtctce29$synthesis$status)
expect_true(rtctce29$synthesis$value_check)

})

