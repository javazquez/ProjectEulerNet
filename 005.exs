# Juan Vazquez 
# https://github.com/javazquez
# http://javazquez.com

defmodule Euler do 
		defp gcd(a,b), do: (if b==0, do: a, else: gcd(b, rem(a, b)))
		def lcm(a, b), do: div(a * b, gcd(a,b))
end

IO.puts Enum.reduce(1..20, fn x,y -> Euler.lcm(x,y) end) 
