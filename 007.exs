# Juan Vazquez 
# https://github.com/javazquez
# http://javazquez.com
# Elixir Solution to Project Euler problem 7
# http://projecteuler.net/problem=7

defmodule Euler do
  def nextPrime(canidate,[h|t]) do
    if Enum.all?([h|t], &(rem(canidate,&1) !== 0 )) do
      [canidate|[h|t]] #prime so return it
    else
      nextPrime(canidate + 2, [h|t])
    end
  end
  def getNthPrime(x//10000) do #generator
    Stream.iterate([3], &(nextPrime(hd(&1)+2,&1))) |>
    Stream.take(x) |> 
    Enum.reverse |> 
    hd |> #[nth prime|[list of n primes]]
    hd #nth prime
  end
end

  Euler.getNthPrime |> 
  IO.puts
  #104743
