defmodule Functions4 do
    @moduledoc """

    Functions4 -> Page 77
    iex> prefix = fn arg -> 
                fn arg2 ->
                arg <> " " <> arg2 # Better with string interpolation,
                                   # but seems to be impossible to escape it from moduledoc 
            end
        end 
    #Function<6.99386804/1 in :erl_eval.expr/5>

    iex> mrs = prefix.("Mrs") 
    #Function<6.99386804/1 in :erl_eval.expr/5>
    
    iex> mrs.("Smith")
    "Mrs Smith"
    
    iex> prefix.("Elixir").("Rocks")
    "Elixir Rocks"

    """

end