# elixir lib/chapter-11/strings-and-binaries-2.ex

# Excluding space. Every other character will be kept
defmodule Finder do
  def anagram?(word1, word2), do: _sanitize(word1) == _sanitize(word2)

  defp _sanitize(word),
    do:
      word
      |> Enum.filter(&(&1 != 32))
      |> Enum.sort()
      |> (fn w -> ~s/#{w}/ end).()
      |> String.downcase()
end

IO.inspect(Finder.anagram?('Dormitory', 'Dirty room'))
# true
IO.inspect(Finder.anagram?('Dormi$tory', 'Dirty room'))
# false
IO.inspect(Finder.anagram?('Not anagram', 'annagramm'))
# false
