defmodule Function1 do
    
    @list_concat = fn a, b -> a ++ b end
    @list_concat2 = fn [a, b], [c, d] -> [a, b, c, d] end

    @sum = fn a, b, c -> a + b + c end

    @pair_tuple_to_list = fn {a, b} -> [a, b] end

end