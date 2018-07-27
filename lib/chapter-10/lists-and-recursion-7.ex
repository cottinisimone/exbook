# iex
# c ["lib/chapter-07/lists-and-recursion-4.ex", "lib/chapter-10/lists-and-recursion-5.ex", "lib/chapter-10/lists-and-recursion-7.ex"]
# Primes.primes(20)
# [2, 3, 5, 7, 11, 13, 17, 19]

defmodule Primes do
  def primes(2), do: [2]
  def primes(n) when n < 2, do: []

  def primes(n) do
    for v <- Spanv2.span(2, n),
        Enumv2.all?(Spanv2.span(2, v - 1), &(rem(v, &1) != 0)) &&
          Enumv2.all?(Spanv2.span(v + 1, n), &(rem(v, &1) != 0)),
        do: v
  end
end
