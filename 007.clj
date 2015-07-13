;; Juan Vazquez
;; https://github.com/javazquez
;; http://javazquez.com
;; Clojure Solution to Project Euler problem 7
;; http://projecteuler.net/problem=7

(defn solve [ nth ]
  (loop [ candidate 3
          plist '(3 2 )
          acc 2
    ]
    (if (>= acc nth )
      (first plist)
      (if (prime? candidate plist)
        (recur (+ 2 candidate) (conj plist candidate) (inc acc))
        (recur (+ 2 candidate) plist   acc)))))

(defn prime? [ candidate plist]
  (->> plist
    (map #(rem candidate %) )
    (some zero?)
    not))

(time (solve 10001))
;"Elapsed time: 52900.907781 msecs"
;104743
