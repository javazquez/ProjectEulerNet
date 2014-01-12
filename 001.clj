;;; Juan Vazquez 
;;; https://github.com/javazquez
;;; http://javazquez.com
;;; Clojure Solution to Project Euler problem 1
;;; http://projecteuler.net/problem=1

(reduce + (filter #(or (= 0 (rem % 5)) (= 0 (rem % 3))) (range 3 1000)))
