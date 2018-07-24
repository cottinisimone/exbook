defmodule SEnum do
  @moduledoc """

  ### Exercise: ListsAndRecursion-5, 6; Page 171
  # [1, 2, 3, 4, 5]

  $ iex lib/rec/enums.ex

  iex> SEnum.all?([1, 2, 3, 4, 5], &(&1 < 6))
  true 

  iex> SEnum.all?([1, 2, 3, 4, 5], &(rem(&1, 2) == 0))
  false

  iex> SEnum.each([1, 2, 3, 4, 5], &IO.puts/1)
  1
  2
  3
  4
  5
  :ok

  iex> SEnum.filter([1, 2, 3, 4, 5], &(rem(&1, 2) == 0))
  [2, 4]

  iex> SEnum.split([1, 2, 3, 4, 5], 0)
  {[], [1, 2, 3, 4, 5]}

  iex> SEnum.split([1, 2, 3, 4, 5], 3)
  {[3, 2, 1], [4, 5]}

  iex> SEnum.split([1, 2, 3, 4, 5], 6)
  {[5, 4, 3, 2, 1], []}

  iex> SEnum.take([1, 2, 3, 4, 5], 0)
  []

  iex> SEnum.take([1, 2, 3, 4, 5], 3)
  [1, 2, 3]

  iex> SEnum.take([1, 2, 3, 4, 5], 6)
  [1, 2, 3, 4, 5]

  iex> SEnum.flatten([ 1, [ 2, 3, [4] ], 5, [[[6]]]])
  [1, 2, 3, 4, 5, 6]

  """
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

  # I know it's not the best solution. Headache reached before the solution!
  def flatten(list), do: _flatten(list)
  def _flatten([head]), do: _flatten(head)
  def _flatten([head | tail]), do: _flatten(head) ++ _flatten(tail)
  def _flatten(elem), do: [elem]
end
