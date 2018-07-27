# elixir lib/chapter-05/functions-2.ex

fizzbuzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end

IO.inspect(fizzbuzz.(0, 0, 10))
# > "FizzBuzz"
IO.inspect(fizzbuzz.(0, 10, 0))
# > "Fizz"
IO.inspect(fizzbuzz.(10, 0, 0))
# > "Buzz"
IO.inspect(fizzbuzz.(1, 1, 10))
# > 10
