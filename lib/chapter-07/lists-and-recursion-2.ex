# elixir lib/chapter-07/lists-and-recursion-2.ex

defmodule Max do
  # max could also be done using foldl or reduce..
  def max([head | []]), do: head
  def max([first | [second | tail]]) when first >= second, do: max([first | tail])
  def max([first | [second | tail]]) when first < second, do: max([second | tail])
end

IO.inspect(Max.max([1, 2, 5, 20, 100, 4, 3, 27, 97]))
# 100
