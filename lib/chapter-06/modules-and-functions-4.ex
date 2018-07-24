# elixir lib/chapter-06/modules-and-functions-4.ex

defmodule Sum4 do
  
  def sum_(n), do: sum(n, 0)
  def sum(0, acc), do: acc
  def sum(curr, acc), do: sum(curr - 1, acc + curr)

end

IO.puts Sum4.sum(10, 0)
# 55