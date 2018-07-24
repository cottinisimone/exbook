# elixir lib/chapter-05/functions-4.ex

prefix = fn arg -> 
  fn arg2 -> arg <> " " <> arg2 end # Interpolation..?
end 

mrs = prefix.("Mrs") 
    
IO.inspect mrs.("Smith")
#> "Mrs Smith"      
IO.inspect prefix.("Elixir").("Rocks")
#> "Elixir Rocks"