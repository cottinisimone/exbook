defmodule Functions2 do
    
    @moduledoc """

    Functions2 -> Page 73


    iex> fizzbuzz = fn 
            0, 0, _ -> "FizzBuzz"
            0, _, _ -> "Fizz"
            _, 0, _ -> "Buzz"
            _, _, c -> c
        end
    #Function<18.99386804/3 in :erl_eval.expr/5>

    iex> fizzbuzz.(0, 0, 10)
    "FizzBuzz"

    iex> fizzbuzz.(0, 10, 0)
    "Fizz"

    iex> fizzbuzz.(10, 0, 0)
    "Buzz"

    iex> fizzbuzz.(1, 1, 10)
    10

    """
end