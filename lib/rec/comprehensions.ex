defmodule Comprehensions do
  @moduledoc """

  ### Exercise: ListsAndRecursion-7, 8; Page 187

  $ iex
  # iex lib/rec/comprehensions.ex
  iex> c ["lib/rec/lists.ex", "lib/rec/comprehensions.ex", "lib/rec/enums.ex"]
  [SList, Comprehensions]

  iex> Comprehensions.primes(20)
  [2, 3, 5, 7, 11, 13, 17, 19]

  iex> Comprehensions.amounts()
  """

  @tax_rates [NC: 0.075, TX: 0.08]

  @orders [
    [id: 123, ship_to: :NC, net_amount: 100.00],
    [id: 124, ship_to: :OK, net_amount: 35.50],
    [id: 125, ship_to: :TX, net_amount: 24.00],
    [id: 126, ship_to: :TX, net_amount: 44.80],
    [id: 127, ship_to: :NC, net_amount: 25.00],
    [id: 128, ship_to: :MA, net_amount: 10.00],
    [id: 129, ship_to: :CA, net_amount: 102.00],
    [id: 120, ship_to: :NC, net_amount: 50.00]
  ]

  def primes(2), do: [2]
  def primes(n) when n < 2, do: []

  def primes(n) do
    for v <- SList.span(2, n),
        SEnum.all?(0..(v - 1), &(rem(v, &1) != 0)) && SEnum.all?((v + 1)..n, &(rem(v, &1) != 0)),
        do: v
  end

  # Just an alias for my lazyness
  def amounts(), do: rates(@orders, @tax_rates)
  # That's not better solution.. I know..
  defp rates(orders, tax_rates) do
    for order = [_, {_, ship_to}, {_, net_amount}] <- orders do
      Keyword.put_new(
        order,
        :total_amount,
        Keyword.get(tax_rates, ship_to, 1) * net_amount + net_amount
      )
    end
  end
end
