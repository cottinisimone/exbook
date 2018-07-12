defmodule Arithmetic do

    @moduledoc """
    ### Exercise: ModulesAndFunctions-4, 5; Page 93

    $ iex lib/modandfun/arithm.ex

    iex> Arithmetic.sum(10, 0)
    55

    iex> Arithmetic.sum_(10)
    55

    iex> Arithmetic.gcd(10, 15)
    5

    iex> Arithmetic.guess(273, 1..1000)
    "Is it 500?"
    "Is it 250?"
    "Is it 375?"
    "Is it 312?"
    "Is it 281?"
    "Is it 265?"
    273
    273
    """

    def sum_(n), do: sum(n, 0) # Convinient alias
    def sum(0, acc), do: acc
    def sum(curr, acc), do: sum(curr - 1, acc + curr) 

    def gcd(x, 0), do: x
    def gcd(x, y), do: gcd(y, rem(x, y))

    def guess(n, head..tail) when n == div(head + tail, 2), do: IO.inspect(n)
    def guess(n, head..tail) when n < div(head + tail, 2) do
        IO.inspect("Is it #{div(head + tail, 2)} ?")
        guess(n, head..div(head + tail, 2))
    end
    def guess(n, head..tail) when n > div(head + tail, 2) do
        IO.inspect("Is it #{div(head + tail, 2)} ?")
        guess(n, div(head + tail, 2)..tail)
    end
end
