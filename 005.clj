; Juan Vazquez 
; https://github.com/javazquez
; http://javazquez.com
; Clojure Solution to Project Euler problem 5
; http://projecteuler.net/problem=5
;2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
;What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

(defn gcd [a b]
	(if (zero? b ) a (gcd b (rem a b))))
 
(defn lcm [a b] 
	(/ (*  a b ) (gcd a b)))

(reduce #(lcm %1 %2 )(range 1 21));232792560
