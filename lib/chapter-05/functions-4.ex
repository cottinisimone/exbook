# elixir lib/chapter-05/functions-4.ex

prefix = fn arg ->
  # Interpolation..?
  fn arg2 -> arg <> " " <> arg2 end
end

mrs = prefix.("Mrs")

IO.inspect(mrs.("Smith"))
# > "Mrs Smith"      
IO.inspect(prefix.("Elixir").("Rocks"))
# > "Elixir Rocks"
