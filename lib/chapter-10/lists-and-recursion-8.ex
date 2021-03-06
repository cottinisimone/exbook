# elixir lib/chapter-10/lists-and-recursion-8.ex

defmodule Taxes do
  def rates(tax_rates, orders) do
    for order = [_, {_, ship_to}, {_, net_amount}] <- orders do
      Keyword.put_new(
        order,
        :total_amount,
        Keyword.get(tax_rates, ship_to, 0) * net_amount + net_amount
      )
    end
  end
end

tax_rates = [NC: 0.075, TX: 0.08]

orders = [
  [id: 123, ship_to: :NC, net_amount: 100.00],
  [id: 124, ship_to: :OK, net_amount: 35.50],
  [id: 125, ship_to: :TX, net_amount: 24.00],
  [id: 126, ship_to: :TX, net_amount: 44.80],
  [id: 127, ship_to: :NC, net_amount: 25.00],
  [id: 128, ship_to: :MA, net_amount: 10.00],
  [id: 129, ship_to: :CA, net_amount: 102.00],
  [id: 120, ship_to: :NC, net_amount: 50.00]
]

IO.inspect(Taxes.rates(tax_rates, orders))
# [
#  [total_amount: 107.5, id: 123, ship_to: :NC, net_amount: 100.0],
#  [total_amount: 35.5, id: 124, ship_to: :OK, net_amount: 35.5],
#  [total_amount: 25.92, id: 125, ship_to: :TX, net_amount: 24.0],
#  [total_amount: 48.384, id: 126, ship_to: :TX, net_amount: 44.8],
#  [total_amount: 26.875, id: 127, ship_to: :NC, net_amount: 25.0],
#  [total_amount: 10.0, id: 128, ship_to: :MA, net_amount: 10.0],
#  [total_amount: 102.0, id: 129, ship_to: :CA, net_amount: 102.0],
#  [total_amount: 53.75, id: 120, ship_to: :NC, net_amount: 50.0]
# ]
