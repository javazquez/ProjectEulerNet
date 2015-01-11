{-
 Juan Vazquez
 https://github.com/javazquez
 http://javazquez.com
 Haskell Solution to Project Euler problem 2
 http://projecteuler.net/problem=2
 **By considering the terms in the Fibonacci sequence whose values do
 not exceed four million, find the sum of the even-valued terms.
-}
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)
main = print . sum . takeWhile(<4000000) $ filter even fibs
--runhaskell 002.hs -> 4613732
