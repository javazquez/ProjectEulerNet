# Juan Vazquez 
# https://github.com/javazquez
# http://javazquez.com 
# Elixir Solution to Project Euler problem 3
# http://projecteuler.net/problem=3

defmodule Euler3 do
  defp prime?(num) do
    Stream.filter( 1..num, &( 0 === (rem(num , &1)))) |> 
    Enum.to_list |> 
    Enum.count < 3
  end	
  defp factors(num), do: Stream.filter(1..num, &( 0 === (rem(num , &1))))
  def primeFactors(num), do: factors(num) |>
    Stream.take_while(&(num >= &1*2 && prime?(&1)))	
end

Euler3.primeFactors(600851475143) |> 
Enum.max  |>
IO.puts

#6857
