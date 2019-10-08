source(system.file("code-samples/both-defs/good/full/AdditionTCFIG1.R", package = "wyz.code.offensiveProgramming"))
object_o_1 <- AdditionTCFIG1()
emsre <- EvaluationMode("standard_R_evaluation")
rtcsre23 <- runTestCase(object_o_1, 23, emsre)

test_that('generateError', {

# test 23 - generate error - failure
expect_equal(rtcsre23$synthesis$status, rtcsre23$synthesis$function_return_check && rtcsre23$synthesis$parameter_check)
expect_equal(rtcsre23$synthesis$execution_evaluation, "failure")

})

emtce <- EvaluationMode("type_checking_enforcement")
rtctce23 <- runTestCase(object_o_1, 23, emtce)

test_that('generateError', {

# test 23 - generate error - failure
expect_equal(rtctce23$synthesis$status, rtctce23$synthesis$function_return_check && rtctce23$synthesis$parameter_check)
expect_equal(rtctce23$synthesis$execution_evaluation, "failure")

})

