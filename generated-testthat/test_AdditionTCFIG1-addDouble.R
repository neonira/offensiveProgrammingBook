source(system.file("code-samples/both-defs/good/full/AdditionTCFIG1.R", package = "wyz.code.offensiveProgramming"))
object_o_1 <- AdditionTCFIG1()
emsre <- EvaluationMode("standard_R_evaluation")
rtcsre1 <- runTestCase(object_o_1, 1, emsre)
rtcsre2 <- runTestCase(object_o_1, 2, emsre)
rtcsre3 <- runTestCase(object_o_1, 3, emsre)
rtcsre4 <- runTestCase(object_o_1, 4, emsre)
rtcsre5 <- runTestCase(object_o_1, 5, emsre)
rtcsre6 <- runTestCase(object_o_1, 6, emsre)
rtcsre7 <- runTestCase(object_o_1, 7, emsre)
rtcsre8 <- runTestCase(object_o_1, 8, emsre)
rtcsre9 <- runTestCase(object_o_1, 9, emsre)

test_that('addDouble', {

# test 1 - sum 2 doubles - correct
expect_true(rtcsre1$synthesis$status)
expect_true(rtcsre1$synthesis$value_check)


# test 2 - sum 1 double and 1 NA_real_ - correct
expect_true(rtcsre2$synthesis$status)
expect_true(rtcsre2$synthesis$value_check)


# test 3 - sum 2 NA_real_ - correct
expect_true(rtcsre3$synthesis$status)
expect_true(rtcsre3$synthesis$value_check)


# test 4 - sum 2 NAN - correct
expect_true(rtcsre4$synthesis$status)
expect_true(rtcsre4$synthesis$value_check)


# test 5 - sum 2 Inf - correct
expect_true(rtcsre5$synthesis$status)
expect_true(rtcsre5$synthesis$value_check)


# test 6 - sum 2 as.integers confused with sum of rounded value as expectation - erroneous
expect_true(rtcsre6$synthesis$status)
expect_false(rtcsre6$synthesis$value_check)


# test 7 - sum of 1 integer and 1 double - correct
expect_true(rtcsre7$synthesis$status)
expect_true(rtcsre7$synthesis$value_check)


# test 8 - sum of 1 integer and 1 double - correct
expect_true(rtcsre8$synthesis$status)
expect_true(rtcsre8$synthesis$value_check)


# test 9 - sum 2 NA - correct
expect_true(rtcsre9$synthesis$status)
expect_true(rtcsre9$synthesis$value_check)

})

emtce <- EvaluationMode("type_checking_enforcement")
rtctce1 <- runTestCase(object_o_1, 1, emtce)
rtctce2 <- runTestCase(object_o_1, 2, emtce)
rtctce3 <- runTestCase(object_o_1, 3, emtce)
rtctce4 <- runTestCase(object_o_1, 4, emtce)
rtctce5 <- runTestCase(object_o_1, 5, emtce)
rtctce6 <- runTestCase(object_o_1, 6, emtce)
rtctce7 <- runTestCase(object_o_1, 7, emtce)
rtctce8 <- runTestCase(object_o_1, 8, emtce)
rtctce9 <- runTestCase(object_o_1, 9, emtce)

test_that('addDouble', {

# test 1 - sum 2 doubles - correct
expect_true(rtctce1$synthesis$status)
expect_true(rtctce1$synthesis$value_check)


# test 2 - sum 1 double and 1 NA_real_ - correct
expect_true(rtctce2$synthesis$status)
expect_true(rtctce2$synthesis$value_check)


# test 3 - sum 2 NA_real_ - correct
expect_true(rtctce3$synthesis$status)
expect_true(rtctce3$synthesis$value_check)


# test 4 - sum 2 NAN - correct
expect_true(rtctce4$synthesis$status)
expect_true(rtctce4$synthesis$value_check)


# test 5 - sum 2 Inf - correct
expect_true(rtctce5$synthesis$status)
expect_true(rtctce5$synthesis$value_check)


# test 6 - sum 2 as.integers confused with sum of rounded value as expectation - erroneous
expect_true(rtctce6$synthesis$status)
expect_false(rtctce6$synthesis$value_check)


# test 7 - sum of 1 integer and 1 double - failure
expect_equal(rtctce7$synthesis$status, rtctce7$synthesis$function_return_check && rtctce7$synthesis$parameter_check)
expect_equal(rtctce7$synthesis$execution_evaluation, "failure")


# test 8 - sum of 1 integer and 1 double - failure
expect_equal(rtctce8$synthesis$status, rtctce8$synthesis$function_return_check && rtctce8$synthesis$parameter_check)
expect_equal(rtctce8$synthesis$execution_evaluation, "failure")


# test 9 - sum 2 NA - failure
expect_equal(rtctce9$synthesis$status, rtctce9$synthesis$function_return_check && rtctce9$synthesis$parameter_check)
expect_equal(rtctce9$synthesis$execution_evaluation, "failure")

})

