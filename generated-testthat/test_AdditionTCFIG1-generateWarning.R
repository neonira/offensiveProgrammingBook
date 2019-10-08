source(system.file("code-samples/both-defs/good/full/AdditionTCFIG1.R", package = "wyz.code.offensiveProgramming"))
object_o_1 <- AdditionTCFIG1()
emsre <- EvaluationMode("standard_R_evaluation")
rtcsre22 <- runTestCase(object_o_1, 22, emsre)

test_that('generateWarning', {

# test 22 - generate warning - correct
expect_true(rtcsre22$synthesis$status)
expect_true(rtcsre22$synthesis$value_check)

})

emtce <- EvaluationMode("type_checking_enforcement")
rtctce22 <- runTestCase(object_o_1, 22, emtce)

test_that('generateWarning', {

# test 22 - generate warning - correct
expect_true(rtctce22$synthesis$status)
expect_true(rtctce22$synthesis$value_check)

})

