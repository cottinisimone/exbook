# elixir lib/chapter-11/strings-and-binaries-5.ex

defmodule Table do
  # Using strings
  def center(list), do: _align(list, _max_size(list, 0))

  defp _align([], size), do: String.pad_leading("", size, "-")

  defp _align([head | tail], size),
    do:
      head
      |> String.pad_trailing(_calc_trail(String.length(head), size))
      |> String.pad_leading(size)
      |> (fn str -> str <> "\n" <> _align(tail, size) end).()

  defp _max_size([], max), do: max

  defp _max_size([head | tail], max) do
    if String.length(head) > _max_size(tail, max),
      do: String.length(head),
      else: _max_size(tail, max)
  end

  defp _calc_trail(head_len, size),
    do: div(size - head_len, 2) + rem(size - head_len, 2) + head_len
end

IO.puts(Table.center(["cat", "zebra", "elephant"]))

IO.puts(
  Table.center([
    "Chapter 1",
    "",
    "C'era una volta",
    "tanto tanto tempo fa",
    "uno sviluppatore molto molto felice.",
    "Elixir era il top!"
  ])
)
