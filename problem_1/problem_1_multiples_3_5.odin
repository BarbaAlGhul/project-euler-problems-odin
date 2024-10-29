package problem_1

import "core:fmt"
import "core:math"

multiple_3_5 :: proc(number: f16) -> f16 {
    counter, sum : f16
    number_ref := number
    for counter in 0..< number_ref {
        if math.mod(counter, 3) == 0 {
            sum += counter
        }
        else if math.mod(counter, 5) == 0 {
            sum += counter
        }
    }
    return sum
}

main :: proc() {
    number: f16 = 1000
    fmt.println(multiple_3_5(number))
}