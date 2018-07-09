defmodule Functions1 do
    
    @moduledoc """
    
    Functions1 -> Page 70

    iex> list_concat = fn a, b -> a ++ b end
    #Function<12.99386804/2 in :erl_eval.expr/5>

    iex> list_concat.([:a, :b], [:c, :d])
    [:a, :b, :c, :d]

    ---

    iex> list_concat2 = fn [a, b], [c, d] -> [a, b, c, d] end
    #Function<12.99386804/2 in :erl_eval.expr/5>

    iex> list_concat2.([:a, :b], [:c, :d])
    [:a, :b, :c, :d]

    ---

    iex> sum = fn a, b, c -> a + b + c end
    #Function<18.99386804/3 in :erl_eval.expr/5>

    iex> sum.(1, 2, 3)
    6

    ---

    iex> pair_tuple_to_list = fn {a, b} -> [a, b] end
    #Function<6.99386804/1 in :erl_eval.expr/5>

    iex> pair_tuple_to_list.( { 1234, 5678 } )
    [1234, 5678]

    """

end