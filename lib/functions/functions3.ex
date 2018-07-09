defmodule Functions3 do
   @moduledoc """

   Functions3 -> Page 73

    iex> fizzbuzz = fn 
            0, 0, _ -> "FizzBuzz"
            0, _, _ -> "Fizz"
            _, 0, _ -> "Buzz"
            _, _, c -> c
        end
    #Function<18.99386804/3 in :erl_eval.expr/5>

    iex >reminder_fizz_buzz = fn x -> fizzbuzz.(rem(x, 3), rem(x, 5), x) end
    #Function<6.99386804/1 in :erl_eval.expr/5>

    iex> remfb.(10)
    "Buzz"
    
    iex> remfb.(11)
    11

    iex> remfb.(12)
    "Fizz"

    iex> remfb.(13)
    13

    iex> remfb.(14)
    14

    iex> remfb.(15)
    "FizzBuzz"

    iex> remfb.(16)
    16
    """
end