# Juan Vazquez 
# https://github.com/javazquez
# http://javazquez.com
# Elixir Solution to Project Euler problem 4
# http://projecteuler.net/problem=4

defmodule Euler do
  def palindroms(vals) do
    lc x inlist vals,
      y inlist vals, to_string(x*y) === String.reverse(to_string(x*y)) do
      x*y
    end	
  end
end

Euler.palindroms(Enum.to_list(100..999)) |> Enum.max |> IO.puts
#906609
