package problem_1

import "core:fmt"
import "core:math"

multiple_3_5 :: proc(number: int) -> int {
    counter, sum : int
    number := number
    for counter in 0..< number {
        if counter %% 3 == 0 {
            sum += counter
        }
        else if counter %% 5 == 0 {
            sum += counter
        }
    }
    return sum
}

main :: proc() {
    number: int = 1000
    fmt.println(multiple_3_5(number))
}