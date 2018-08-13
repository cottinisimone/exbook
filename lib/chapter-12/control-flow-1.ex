# elixir lib/chapter-12/control-flow-1.ex

defmodule CondFizzBuzz do
  def upto(n, m) when n > 0, do: n..m |> Enum.map(&fizzbuzz/1)

  defp fizzbuzz(n) do
    case {rem(n, 3), rem(n, 5)} do
      {0, 0} -> "FizzBuzz"
      {0, _} -> "Fizz"
      {_, 0} -> "Buzz"
      _ -> n
    end
  end
end

CondFizzBuzz.upto(10, 16) |> Enum.each(&IO.puts/1)
# Buzz
# 11
# Fizz
# 13
# 14
# FizzBuzz
# 16
