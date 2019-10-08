source(system.file("code-samples/both-defs/good/full/AdditionTCFIG1.R", package = "wyz.code.offensiveProgramming"))
object_o_1 <- AdditionTCFIG1()
emsre <- EvaluationMode("standard_R_evaluation")
rtcsre24 <- runTestCase(object_o_1, 24, emsre)
rtcsre25 <- runTestCase(object_o_1, 25, emsre)
rtcsre26 <- runTestCase(object_o_1, 26, emsre)

test_that('addMultiDouble', {

# test 24 - sum of 1 integer and 1 double - correct
expect_true(rtcsre24$synthesis$status)
expect_true(rtcsre24$synthesis$value_check)


# test 25 - sum of 1 double, 2 integers and 1 NA_integer_ - correct
expect_true(rtcsre25$synthesis$status)
expect_true(rtcsre25$synthesis$value_check)


# test 26 - sum of nothing - correct
expect_true(rtcsre26$synthesis$status)
expect_true(rtcsre26$synthesis$value_check)

})

emtce <- EvaluationMode("type_checking_enforcement")
rtctce24 <- runTestCase(object_o_1, 24, emtce)
rtctce25 <- runTestCase(object_o_1, 25, emtce)
rtctce26 <- runTestCase(object_o_1, 26, emtce)

test_that('addMultiDouble', {

# test 24 - sum of 1 integer and 1 double - correct
expect_true(rtctce24$synthesis$status)
expect_true(rtctce24$synthesis$value_check)


# test 25 - sum of 1 double, 2 integers and 1 NA_integer_ - correct
expect_true(rtctce25$synthesis$status)
expect_true(rtctce25$synthesis$value_check)


# test 26 - sum of nothing - correct
expect_true(rtctce26$synthesis$status)
expect_true(rtctce26$synthesis$value_check)

})

