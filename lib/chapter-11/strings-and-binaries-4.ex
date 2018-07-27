# elixir lib/chapter-11/strings-and-binaries-4.ex

defmodule Calculator do
  def calculate(eq), do: number(eq)

  defp number(str), do: _number_digits(str, 0)
  defp _number_digits([], value), do: value

  defp _number_digits([digit | tail], value) when digit in '0123456789' do
    _number_digits(tail, value * 10 + digit - ?0)
  end

  defp _number_digits([?+ | tail], value), do: value + number(tail)
  defp _number_digits([?- | tail], value), do: value - number(tail)
  defp _number_digits([?* | tail], value), do: value * number(tail)
  defp _number_digits([?/ | tail], value), do: value / number(tail)
  defp _number_digits([32 | tail], value), do: _number_digits(tail, value)
  defp _number_digits([non_digit | _], _), do: raise("Invalid digit '#{[non_digit]}'")
end

IO.inspect(Calculator.calculate('123 + 27'))
# 150
IO.inspect(Calculator.calculate('123 + 27 * 2'))
# 300
IO.inspect(Calculator.calculate('123 +* 27'))
# 123 -> Unexpected behaviour
IO.inspect(Calculator.calculate('12a3 + 27'))
# ** (RuntimeError) Invalid digit 'a'
#     lib/chapter-11/strings-and-binaries-4.ex:17: Calculator._number_digits/2
#     lib/chapter-11/strings-and-binaries-4.ex:22: (file)
#     (elixir) lib/code.ex:677: Code.require_file/2
