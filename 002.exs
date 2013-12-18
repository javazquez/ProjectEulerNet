# Juan Vazquez 
# https://github.com/javazquez
# http://javazquez.com

Stream.unfold({0,1}, fn {f1,f2} -> {f1, {f2, f1+f2}} end) |>
Stream.filter(fn x -> Integer.even?x end) |> 
Enum.take_while(fn y -> y < 4000000 end ) |> 
Enum.reduce(fn x,acc-> x+acc end) |> 
IO.puts
