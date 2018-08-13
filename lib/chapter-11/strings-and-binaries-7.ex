# elixir lib/chapter-11/strings-and-binaries-7.ex
# !!! make sure you are in root folder, otherwise file will not be found !!!

defmodule TaxParser do
  def parse(),
    do:
      File.read!("lib/chapter-11/orders.csv")
      |> String.split("\n")
      |> Enum.drop(1)
      |> Enum.map(fn w -> String.split(w, ",") |> _rebind() end)
      |> rates([])

  def _rebind([id, ship_to, net_amount]),
    do: [
      id: String.to_integer(id),
      ship_to: ship_to |> String.replace(":", "") |> String.to_atom(),
      net_amount: String.to_float(net_amount)
    ]

  # Mocked
  def rates(tax_rates, _), do: tax_rates
end

IO.inspect(TaxParser.parse())
