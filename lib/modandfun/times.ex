defmodule Times do
  @moduledoc """

  ### Exercise: ModulesAndFunctions-1, 2, 3; Page 88

  $ iex lib/modandfun/times.ex

  iex> c "lib/modandfun/times.ex"


  iex> Times.double(3)
  6

  iex> Times.triple(3)
  9

  iex> Times.quadruple(3)
  12

  """

  def double(n), do: n * 2

  def triple(n), do: double(n) + n

  def quadruple(n), do: double(n) + double(n)
end
