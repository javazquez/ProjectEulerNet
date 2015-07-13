;; Juan Vazquez
;; https://github.com/javazquez
;; http://javazquez.com
;; Clojure Solution to Project Euler problem 7
;; http://projecteuler.net/problem=7

(defn solve [ nth ]
  (loop [ canidate 3
          plist '(3 2 )
          acc 2
    ]
    (if (>= acc nth )
      (first plist)
      (if (prime? canidate plist)
        (recur (+ 2 canidate) (conj plist canidate) (inc acc))
        (recur (+ 2 canidate) plist   acc)))))

(defn prime? [ canidate plist]
  (->> plist
    (map #(rem canidate %) )
    (some zero?)
    not))

(time (solve 10001))
;"Elapsed time: 52900.907781 msecs"
;104743
