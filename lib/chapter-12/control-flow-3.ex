# elixir lib/chapter-12/control-flow-3.ex

ok! = fn x ->
  case x do
    {:ok, _} -> x
    {:error, desc} -> raise "#{desc}"
  end
end

ok!.(File.open("somefile"))
