# elixir lib/chapter-10/lists-and-recursion-6.ex

defmodule Flat do
  # I know it's not the best solution. Headache reached before the solution!
  def flatten(list), do: _flatten(list)
  defp _flatten([head]), do: _flatten(head)
  defp _flatten([head | tail]), do: _flatten(head) ++ _flatten(tail)
  defp _flatten(elem), do: [elem]
end

IO.inspect(Flat.flatten([1, [2, 3, [4]], 5, [[[6]]]]))
# [1, 2, 3, 4, 5, 6]
