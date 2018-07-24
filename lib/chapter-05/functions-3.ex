# elixir lib/chapter-05/functions-3.ex

fizzbuzz = fn 
    0, 0, _ -> "FizzBuzz"
    0, _, _ -> "Fizz"
    _, 0, _ -> "Buzz"
    _, _, c -> c
end

remfb = fn x -> fizzbuzz.(rem(x, 3), rem(x, 5), x) end

IO.inspect remfb.(10)
#> "Buzz"  
IO.inspect remfb.(11)
#> 11
IO.inspect remfb.(12)
#> "Fizz"
IO.inspect remfb.(13)
#> 13
IO.inspect remfb.(14)
#> 14
IO.inspect remfb.(15)
#> "FizzBuzz"
IO.inspect remfb.(16)
#> 16