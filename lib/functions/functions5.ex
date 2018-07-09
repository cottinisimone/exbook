defmodule Functions5 do

    @moduledoc """
    # Rewrite `Enum.map [1,2,3,4], fn x -> x + 2 end` in short notation &
    
    iex> Enum.map [1, 2, 3, 4], &(&1 + 2) end
    [3, 4, 5, 6]
    
    # Rewrite `Enum.each [1,2,3,4], fn x -> IO.inspect x end` in short notation &

    iex> Enum.map [1, 2, 3, 4], &IO.inspect/1
    1
    2
    3
    4
    [1, 2, 3, 4]
    
    """
end