# elixir lib/chapter-07/lists-and-recursion-4.ex

defmodule Spanv2 do
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
  defp _reverse([], reversed), do: reversed
  defp _reverse([head | tail], reversed), do: _reverse(tail, [head | reversed])
end

IO.inspect(Spanv2.span(10, 15))
# [10, 11, 12, 13, 14, 15]
IO.inspect(Spanv2.span(15, 10))
# [15, 14, 13, 12, 11, 10]
IO.inspect(Spanv2.reverse([6, 5, 4, 3, 2, 1, 0]))
# [0, 1, 2, 3, 4, 5, 6]
