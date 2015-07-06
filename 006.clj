;;; Juan Vazquez 
;;; https://github.com/javazquez
;;; http://javazquez.com
;;; Clojure Solution to Project Euler problem 6
;;; http://projecteuler.net/problem=6
;;; Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

(defn sum-squares [n]
  (/ (* n (+ n 1) (+ 1 (* 2 n))) 6))
  
(defn square-sums [n]
  (Math/pow (/ (* n (+ n 1)) 2 ) 2))

(long (- (square-sums 100) (sum-squares 100)))  ;25164150
