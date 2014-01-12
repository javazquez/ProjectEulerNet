# Juan Vazquez 
# https://github.com/javazquez
# http://javazquez.com
# Elixir Solution to Project Euler problem 2
# http://projecteuler.net/problem=2

Stream.unfold({0,1}, fn {f1,f2} -> {f1, {f2, f1+f2}} end) |>
Stream.filter(fn x -> Integer.even?x end) |> 
Enum.take_while(fn y -> y < 4000000 end ) |> 
Enum.reduce(fn x,acc-> x+acc end) |> 
IO.puts

#4613732
