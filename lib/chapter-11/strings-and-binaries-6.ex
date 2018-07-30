# elixir lib/chapter-11/strings-and-binaries-6.ex

defmodule CapSen do
  def capitalize_sentence(str), do: _reverse(_cap(str, [], true))

  defp _cap(<<head::utf8, tail::binary>>, acc, _) when head == ?. do
    _cap(tail, [head | acc], true)
  end

  defp _cap(<<head::utf8, tail::binary>>, acc, cap) when head == ?\s do
    _cap(tail, [head | acc], cap)
  end

  defp _cap(<<head::utf8, tail::binary>>, acc, true) do
    _cap(tail, [up(head) | acc], false)
  end

  defp _cap(<<head::utf8, tail::binary>>, acc, _) do
    _cap(tail, [down(head) | acc], false)
  end

  defp _cap(<<>>, acc, _), do: acc

  # Approach 1
  defp up(char) when char <= ?z and char >= ?a, do: char - 32
  defp up(char) when char <= ?Z and char >= ?A, do: char
  # or return original one
  defp up(char), do: raise("Invalid character #{char}")

  defp down(char) when char <= ?z and char >= ?a, do: char
  defp down(char) when char <= ?Z and char >= ?A, do: char + 32
  # or return original one
  defp down(char), do: raise("Invalid character #{char}")

  defp _reverse(sequence), do: _reverse(sequence, [])
  defp _reverse([], reversed), do: reversed
  defp _reverse([head | tail], reversed), do: _reverse(tail, [head | reversed])

  # Approach 2: String.codepoints, 
end

# IO.puts(CapSen.capitalize_sentence("oh. a DOG. woof. "))
# "Oh. A dog. Woof. "
