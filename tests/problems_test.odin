package tests

import "core:testing"
import p1 "../problem_1"
import p2 "../problem_2"

@(test)
multiple_3_5_test :: proc(t: ^testing.T) {
    result := p1.multiple_3_5(10)
    testing.expect_value(t, result, 23)
}

/* These next two tests have memory leak - needs to be investigated */
@(test)
fibonacci_seq_test :: proc(t: ^testing.T) {
    check_arr:[dynamic]int = {1, 2, 3, 5, 8, 13, 21, 34, 55, 89}
    fib_seq := p2.fibonacci_sequence(90)
    for i in 0..<len(check_arr) {
        testing.expect_value(t, fib_seq[i], check_arr[i])
    }
}

@(test)
fibonacci_sum_even :: proc(t: ^testing.T) {
    fib_arr:[dynamic]int = {1, 2, 3, 5, 8, 13, 21, 34, 55, 89}
    sum_arr := p2.even_fibonacci(fib_arr[:])
    testing.expect_value(t, sum_arr, 44)
}