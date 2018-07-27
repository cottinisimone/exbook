# Ex => Find library that:
#   - Convert a float to a string with two decimal digits. (Erlang)
#   iex> :erlang.float_to_binary(7.113, [decimals: 2])
# 
#   - Get the value of an operating-system environment variable. (Elixir)
#   iex> System.get_env("PATH")
# 
#   - Return the extension component of a file name (so return .exs if given "dave/test.exs"). (Elixir)
#   iex> Path.extname("lib/modandfun/libs.ex")
# 
#   - Return the process’s current working directory. (Elixir)
#   iex> System.cwd()
# 
#   - Convert a string containing JSON into Elixir data structures. (Just find; don’t install.)
#   Using Poison https://github.com/devinus/poison
#   ```
#       defmodule Person do
#           @derive [Poison.Encoder]
#           defstruct [:name, :age]
#       end
# 
#       Poison.encode!(%Person{name: "Devin Torres", age: 27})
#   ```
# 
#   - Execute a command in your operating system’s shell.
#   iex> System.cmd("ls", ["-la", "./lib/modandfun"])
