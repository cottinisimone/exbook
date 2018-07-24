# elixir lib/chapter-07/lists-and-recursion-6.ex

defmodule Flat do
  
  # I know it's not the best solution. Headache reached before the solution!
  def flatten(list), do: _flatten(list)
  def _flatten([head]), do: _flatten(head)
  def _flatten([head | tail]), do: _flatten(head) ++ _flatten(tail)
  def _flatten(elem), do: [elem]

end

IO.inspect Flat.flatten([ 1, [ 2, 3, [4] ], 5, [[[6]]]])
# [1, 2, 3, 4, 5, 6]
