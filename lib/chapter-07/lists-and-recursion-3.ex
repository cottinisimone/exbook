# elixir lib/chapter-07/lists-and-recursion-3.ex

defmodule Caesar do
  
  # codepoint for 'z' is 122
  def caesar([], _), do: []
  def caesar([head | tail], n) when head + n >= 122, do: [head | caesar(tail, n)]
  def caesar([head | tail], n) when head + n < 122, do: caesar(tail, n)

end

IO.inspect Caesar.caesar('ryvkve', 13)
# 'ryvv'
