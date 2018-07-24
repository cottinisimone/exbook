# elixir lib/chapter-07/lists-and-recursion-5.ex

defmodule Enumv2 do
  
  def all?([], _), do: true
  def all?([head | tail], predicate), do: predicate.(head) && all?(tail, predicate)
  def all?(_, _), do: false

  def each([head], make), do: make.(head)

  def each([head | tail], make) do
    make.(head)
    each(tail, make)
  end

  def filter([], _), do: []

  def filter([head | tail], predicate),
    do: if(predicate.(head), do: [head | filter(tail, predicate)], else: filter(tail, predicate))

  def split(list, index), do: _split(list, index, [], 0)
  defp _split([], _, acc, _), do: {acc, []}
  defp _split(list, index, acc, count) when index == count, do: {acc, list}
  defp _split([head | tail], index, acc, count), do: _split(tail, index, [head | acc], count + 1)

  def take(_, quantity) when quantity == 0, do: []
  def take([head], _), do: [head]
  def take([head | tail], quantity), do: [head | take(tail, quantity - 1)]

end

IO.inspect Enumv2.all?([1, 2, 3, 4, 5], &(&1 < 6))
# true
IO.inspect Enumv2.all?([1, 2, 3, 4, 5], &(rem(&1, 2) == 0))
# false
Enumv2.each([1, 2, 3, 4, 5], &IO.puts/1)
# 1
# 2
# 3
# 4
# 5
IO.inspect Enumv2.filter([1, 2, 3, 4, 5], &(rem(&1, 2) == 0))
# [2, 4]
IO.inspect Enumv2.split([1, 2, 3, 4, 5], 0)
# {[], [1, 2, 3, 4, 5]}
IO.inspect Enumv2.split([1, 2, 3, 4, 5], 3)
# {[3, 2, 1], [4, 5]}
IO.inspect Enumv2.split([1, 2, 3, 4, 5], 6)
# {[5, 4, 3, 2, 1], []}
IO.inspect Enumv2.take([1, 2, 3, 4, 5], 0)
# []
IO.inspect Enumv2.take([1, 2, 3, 4, 5], 3)
# [1, 2, 3]
IO.inspect Enumv2.take([1, 2, 3, 4, 5], 6)
# [1, 2, 3, 4, 5]