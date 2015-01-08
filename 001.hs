{-
 Juan Vazquez
 https://github.com/javazquez
 http://javazquez.com
 Haskell Solution to Project Euler problem 1
 http://projecteuler.net/problem=1
 Find the sum of all the multiples of 3 or 5 below 1000.
-}
sum [x| x <- [3..999], x `mod` 3 == 0 || x `mod`5 == 0  ] 
--233168
