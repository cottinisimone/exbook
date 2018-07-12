defmodule Functions do
  @moduledoc """

  ### Exercise: Functions-1; Page 70

      iex> list_concat = fn a, b -> a ++ b end
      #Function<12.99386804/2 in :erl_eval.expr/5>

      iex> list_concat.([:a, :b], [:c, :d])
      [:a, :b, :c, :d]

      ---

      iex> list_concat2 = fn [a, b], [c, d] -> [a, b, c, d] end
      #Function<12.99386804/2 in :erl_eval.expr/5>

      iex> list_concat2.([:a, :b], [:c, :d])
      [:a, :b, :c, :d]

      ---

      iex> sum = fn a, b, c -> a + b + c end
      #Function<18.99386804/3 in :erl_eval.expr/5>

      iex> sum.(1, 2, 3)
      6

      ---

      iex> pair_tuple_to_list = fn {a, b} -> [a, b] end
      #Function<6.99386804/1 in :erl_eval.expr/5>

      iex> pair_tuple_to_list.( { 1234, 5678 } )
      [1234, 5678]

  ### Exercise: Functions-2; Page 73

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

  ### Exercise: Functions-3; Page 73

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

  ### Exercise: Functions-4; Page 77
      
      iex> prefix = fn arg -> 
                  fn arg2 ->
                  arg <> " " <> arg2 # Better with string interpolation,
                                  # but seems to be impossible to escape it from moduledoc 
              end
          end 
      #Function<6.99386804/1 in :erl_eval.expr/5>

      iex> mrs = prefix.("Mrs") 
      #Function<6.99386804/1 in :erl_eval.expr/5>
      
      iex> mrs.("Smith")
      "Mrs Smith"
      
      iex> prefix.("Elixir").("Rocks")
      "Elixir Rocks"

  ### Exercise: Functions-5; Page 82

      # Rewrite `Enum.map [1,2,3,4], fn x -> x + 2 end` in short notation &
      iex> Enum.map [1, 2, 3, 4], &(&1 + 2) end
      [3, 4, 5, 6]
      
      # Rewrite `Enum.each [1,2,3,4], fn x -> IO.inspect x end` in short notation &
      iex> Enum.map [1, 2, 3, 4], &IO.inspect/1
      1
      2
      3
      4
      [1, 2, 3, 4]
  """
end
