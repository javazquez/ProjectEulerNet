# Juan Vazquez 
# https://github.com/javazquez
# http://javazquez.com
# Elixir Solution to Project Euler problem 7
# http://projecteuler.net/problem=7

defmodule Euler do
	defp nextPrime(canidate,[h|t], cnt//3) when cnt <= 10001 do
		if Enum.all?([h|t], &(rem(canidate,&1) !== 0 )) do
			nextPrime(canidate+2, [canidate|[h|t]], cnt+1)
		else
			nextPrime(canidate + 2, [h|t], cnt)
		end
	end
	defp nextPrime(_,[h|t], _), do: [h|t]
	def solve do
		nextPrime(5,[3,2]) |> hd
  end
end

 Euler.solve |> IO.puts
 #104743
