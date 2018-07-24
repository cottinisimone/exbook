# elixir lib/chapter-07/lists-and-recursion-1.ex

defmodule Mapsum do
  
  def mapsum(list, fun), do: _mapsum(list, 0, fun)
  defp _mapsum([], total, _), do: total
  defp _mapsum([head | tail], total, fun), do: _mapsum(tail, fun.(head) + total, fun)

end

IO.inspect Mapsum.mapsum [1, 2, 3], &(&1 * &1)
# 14