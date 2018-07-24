# elixir lib/chapter-06/modules-and-functions-5.ex

defmodule Sum5 do
  
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))

end

IO.puts Sum5.gcd(10, 15)
# 5