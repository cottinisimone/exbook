# elixir lib/chapter-05/functions-5.ex

# Rewrite `Enum.map [1,2,3,4], fn x -> x + 2 end` in short notation &
IO.inspect(Enum.map([1, 2, 3, 4], &(&1 + 2)))
# > [3, 4, 5, 6]

# Rewrite `Enum.each [1,2,3,4], fn x -> IO.inspect x end` in short notation &
Enum.map([1, 2, 3, 4], &IO.inspect/1)
# > 1
# > 2
# > 3
# > 4
