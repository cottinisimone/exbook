# elixir lib/chapter-07/lists-and-recursion-0.ex

defmodule Sumv2 do
  
  def sum(list), do: _sum(list, 0)
  defp _sum([], total), do: total
  defp _sum([head | tail], total), do: _sum(tail, head + total)

  # Rewrite attempt 1 => Pattern match with first value of list as accumulator
  def sum_1([head | []]), do: head
  def sum_1([first | [second | tail]]), do: sum_2([first + second | tail])

  # Rewrite attempt 2 => List.foldl
  def sum_2(list), do: List.foldl(list, 0, fn a, b -> a + b end)

  # Rewrite attempt 3 => Enum.sum
  def sum_3(list), do: Enum.sum(list)

  # Rewrite attempt 4 => Enum.reduce/3
  def sum_4(list), do: Enum.reduce(list, 0, fn a, b -> a + b end)

end

IO.inspect Sumv2.sum([1, 2, 3, 4, 5])
# 15
IO.inspect Sumv2.sum_1([1, 2, 3, 4, 5])
# 15
IO.inspect Sumv2.sum_2([1, 2, 3, 4, 5])
# 15
IO.inspect Sumv2.sum_3([1, 2, 3, 4, 5])
# 15
IO.inspect Sumv2.sum_4([1, 2, 3, 4, 5])
# 15