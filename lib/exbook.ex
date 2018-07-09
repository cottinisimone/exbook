defmodule Exbook do
  @moduledoc """
  Documentation for Exbook.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Exbook.hello
      :world

  """
  @author "Simone Cottini"
  def hello do
    IO.inspect("#{@author} says: hello world!")
  end
end
