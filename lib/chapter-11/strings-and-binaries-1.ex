# elixir lib/chapter-11/strings-and-binaries-1.ex

# ' ' -> 32, '~' -> 126
defmodule Print do
  def printable?([]), do: true
  def printable?([head | tail]), do: head > 31 && head < 127 && printable?(tail)
end

IO.inspect(Print.printable?('hello ~man'))
# true
IO.inspect(Print.printable?('hello è'))
# false ('è' -> 232)
