# elixir lib/chapter-06/modules-and-functions-6.ex

defmodule Guess do
  def guess(n, head..tail) when n == div(head + tail, 2), do: "#{n}"

  def guess(n, head..tail) when n < div(head + tail, 2) do
    IO.puts("Is it #{div(head + tail, 2)}?")
    guess(n, head..div(head + tail, 2))
  end

  def guess(n, head..tail) when n > div(head + tail, 2) do
    IO.puts("Is it #{div(head + tail, 2)}?")
    guess(n, div(head + tail, 2)..tail)
  end
end

IO.puts(Guess.guess(273, 1..1000))
# Is it 500?
# Is it 250?
# Is it 375?
# Is it 312?
# Is it 281?
# Is it 265?
# 273
