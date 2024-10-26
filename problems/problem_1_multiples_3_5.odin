package project_euler

import "core:fmt"
import "core:math/linalg"

multiple_3_5 :: proc(number: f32) -> f32 {
    counter, sum : f32
    number_ref := number
    for counter in 0..< number_ref {
        if linalg.mod(counter, 3) == 0 {
            sum += counter
        }
        else if linalg.mod(counter, 5) == 0 {
            sum += counter
        }
    }
    return sum
}

main :: proc() {
    number: f32 = 1000
    fmt.println(multiple_3_5(number))
}