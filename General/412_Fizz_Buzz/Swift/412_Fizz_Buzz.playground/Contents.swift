import UIKit

func fizzBuzz1(_ n: Int) -> [String] {
    var array: [String] = []
    for number in 1...n {
        if number % 15 == 0 {
            array.append("FizzBuzz")
        } else if number % 3 == 0 {
            array.append("Fizz")
        } else if number % 5 == 0 {
            array.append("Buzz")
        } else {
            array.append(String(number))
        }
    }
    return array
}

assert(fizzBuzz1(15) == [
    "1",
    "2",
    "Fizz",
    "4",
    "Buzz",
    "Fizz",
    "7",
    "8",
    "Fizz",
    "Buzz",
    "11",
    "Fizz",
    "13",
    "14",
    "FizzBuzz"
    ], "Failed")

func fizzBuzz2(_ n: Int) -> [String] {
    var array: [String] = []
    for number in 1...n {
        let resultTuple = (number % 3, number % 5)
        switch resultTuple {
        case (0, 0):
            array.append("FizzBuzz")
        case (0, _):
            array.append("Fizz")
        case (_, 0):
            array.append("Buzz")
        case (_, _):
            array.append(String(number))
        }
    }
    return array
}

assert(fizzBuzz2(15) == [
    "1",
    "2",
    "Fizz",
    "4",
    "Buzz",
    "Fizz",
    "7",
    "8",
    "Fizz",
    "Buzz",
    "11",
    "Fizz",
    "13",
    "14",
    "FizzBuzz"
    ], "Failed")
