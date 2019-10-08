source(system.file("code-samples/both-defs/good/full/AdditionTCFIG1.R", package = "wyz.code.offensiveProgramming"))
object_o_1 <- AdditionTCFIG1()
emsre <- EvaluationMode("standard_R_evaluation")
rtcsre19 <- runTestCase(object_o_1, 19, emsre)
rtcsre20 <- runTestCase(object_o_1, 20, emsre)
rtcsre21 <- runTestCase(object_o_1, 21, emsre)

test_that('divideByZero', {

# test 19 - 1 / 0 - correct
expect_true(rtcsre19$synthesis$status)
expect_true(rtcsre19$synthesis$value_check)


# test 20 - -1 / 0 - correct
expect_true(rtcsre20$synthesis$status)
expect_true(rtcsre20$synthesis$value_check)


# test 21 - 0 / 0 - correct
expect_true(rtcsre21$synthesis$status)
expect_true(rtcsre21$synthesis$value_check)

})

emtce <- EvaluationMode("type_checking_enforcement")
rtctce19 <- runTestCase(object_o_1, 19, emtce)
rtctce20 <- runTestCase(object_o_1, 20, emtce)
rtctce21 <- runTestCase(object_o_1, 21, emtce)

test_that('divideByZero', {

# test 19 - 1 / 0 - correct
expect_true(rtctce19$synthesis$status)
expect_true(rtctce19$synthesis$value_check)


# test 20 - -1 / 0 - correct
expect_true(rtctce20$synthesis$status)
expect_true(rtctce20$synthesis$value_check)


# test 21 - 0 / 0 - correct
expect_true(rtctce21$synthesis$status)
expect_true(rtctce21$synthesis$value_check)

})

