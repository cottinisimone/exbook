# elixir lib/chapter-06/modules-and-functions-1-2-3.ex

# iex lib/modandfun/times.ex

# iex
# c "lib/modandfun/times.ex"

defmodule Times do
  def double(n), do: n * 2

  def triple(n), do: double(n) + n

  def quadruple(n), do: double(n) + double(n)
end

IO.inspect(Times.double(3))
# 6
IO.inspect(Times.triple(3))
# 9
IO.inspect(Times.quadruple(3))
# 12
