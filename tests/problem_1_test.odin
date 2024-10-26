package tests

import "core:testing"
import p1 "../problems"

@(test)
multiple_3_5_test :: proc(t: ^testing.T) {
    result := p1.multiple_3_5(10)
    testing.expect_value(t, result, 23)
}