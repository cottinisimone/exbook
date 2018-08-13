# elixir lib/chapter-12/control-flow-2.ex

# I think most maintanable way it's the function implementation
# But anyway i would implement it with defs
defmodule FizzBuzzDef do
  def upto(n, m) when n > 0, do: n..m |> Enum.map(&fizzbuzz(rem(&1, 3), rem(&1, 5), &1))

  defp fizzbuzz(0, 0, _), do: "FizzBuzz"
  defp fizzbuzz(0, _, _), do: "Fizz"
  defp fizzbuzz(_, 0, _), do: "Buzz"
  defp fizzbuzz(_, _, n), do: n
end

FizzBuzzDef.upto(10, 16) |> Enum.each(&IO.puts/1)
# Buzz
# 11
# Fizz
# 13
# 14
# FizzBuzz
# 16
