# Juan Vazquez 
# https://github.com/javazquez
# http://javazquez.com
# Elixir Solution to Project Euler problem 6
# http://projecteuler.net/problem=6

defmodule Euler do
	def solve(x), do: (x * x - 1) * (3*x + 2) * x/12
end

Euler.solve(100) |> IO.puts
#25164150.0