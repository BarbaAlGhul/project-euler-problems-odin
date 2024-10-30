package problem_2

import "core:fmt"
import "core:math"

fibonacci_sequence :: proc(num: int) -> [dynamic]int {
    first := 1
    second := 2
    current := 0
    return_array: [dynamic]int = {1, 2}
    for current < num {
        current = second + first
        first = second
        second = current
        append(&return_array, current)
    }
    defer delete(return_array)
    return return_array

}

even_fibonacci :: proc(array_f: []int) -> int {
    sum: int
    for i in 0..< len(array_f) {
        if math.mod(f16(array_f[i]), 2) == 0 {
            sum += array_f[i]
        }
    }
    return sum
}

main :: proc() {
    num := 4000000
    array_fib := fibonacci_sequence(num)
    fmt.println(even_fibonacci(array_fib[:]))
}

