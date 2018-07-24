defmodule SList do
  @moduledoc """

  ### Exercise: ListsAndRecursion-0, 1, 2, 3, 4; Page 127, 129, 135

  $ iex lib/rec/lists.ex

  iex> SList.sum([1, 2, 3, 4])
  10

  iex> SList.sum_1([1, 2, 3, 4])
  10

  iex> SList.sum_2([1, 2, 3, 4])
  10

  iex> SList.sum_3([1, 2, 3, 4])
  10

  iex> SList.sum_4([1, 2, 3, 4])
  10

  iex> SList.mapsum([1, 2, 3], &(&1 * &1))
  14

  iex> SList.max([1, 10, 20, 10, 20, 12, 1])
  20

  iex> SList.caesar('ryvkve', 13)
  'rkvv'

  iex> SList.span(10, 15)
  [10, 11, 12, 13, 14, 15]

  iex> SList.span(15, 10)
  [15, 14, 13, 12, 11, 10]

  iex> SList.reverse([6, 5, 4, 3, 2, 1, 0])
  [0, 1, 2, 3, 4, 5, 6]
  """

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

  # mapsum could also be done using foldl or reduce..
  def mapsum(list, fun), do: _mapsum(list, 0, fun)
  defp _mapsum([], total, _), do: total
  defp _mapsum([head | tail], total, fun), do: _mapsum(tail, fun.(head) + total, fun)

  # max could also be done using foldl or reduce..
  def max([head | []]), do: head
  def max([first | [second | tail]]) when first >= second, do: max([first | tail])
  def max([first | [second | tail]]) when first < second, do: max([second | tail])

  # codepoint for 'z' is 122
  def caesar([], _), do: []
  def caesar([head | tail], n) when head + n >= 122, do: [head | caesar(tail, n)]
  def caesar([head | tail], n) when head + n < 122, do: caesar(tail, n)

  # Note: an interval that is `abs(from - to) < 5` will return char representation of codepoints
  # iex > SList.span(100, 103)
  # 'defg'
  def span(from, to) when from == to, do: [from]
  def span(from, to) when from > to, do: span_reverse(to, from)
  def span(from, to), do: [from | span(from + 1, to)]
  def span_reverse(from, to) when from == to, do: [from]
  def span_reverse(from, to), do: [to | span_reverse(from, to - 1)]
  # Reverse impl for fun
  def reverse(sequence), do: _reverse(sequence, [])
  def _reverse([], reversed), do: reversed
  def _reverse([head | tail], reversed), do: _reverse(tail, [head | reversed])
end
