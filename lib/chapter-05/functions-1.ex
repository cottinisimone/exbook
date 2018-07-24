# elixir lib/chapter-05/functions-1.ex

list_concat = fn a, b -> a ++ b end
IO.inspect list_concat.([:a, :b], [:c, :d])
#> [:a, :b, :c, :d]

list_concat2 = fn [a, b], [c, d] -> [a, b, c, d] end
IO.inspect list_concat2.([:a, :b], [:c, :d])
#> [:a, :b, :c, :d]

sum = fn a, b, c -> a + b + c end
IO.inspect sum.(1, 2, 3)
#> 6

pair_tuple_to_list = fn {a, b} -> [a, b] end
IO.inspect pair_tuple_to_list.( { 1234, 5678 } )
#> [1234, 5678]