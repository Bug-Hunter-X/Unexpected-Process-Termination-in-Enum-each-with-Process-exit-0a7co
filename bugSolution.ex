```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  if x == 3 do
    # Instead of exiting, set a flag or use another method to handle this condition
    IO.puts("Stopping at 3")
  else
    IO.puts(x)
  end
end)

# Alternative solution to handle early termination using Enum.reduce
result = Enum.reduce(list, [], fn x, acc ->
  if x == 3 do
    acc
  else
    [x | acc]
  end
end)
IO.puts("Reduced list: #{Enum.reverse(result)}")
```