;;; Juan Vazquez 
;;; https://github.com/javazquez
;;; http://javazquez.com

(defn prime? [num]
  (< (count (filter #(zero? (rem num %))(range 1 num ))) 3))
    
(defn factors [num]
	(filter #(zero? (rem num %)) (range 1 num) ))
	
(defn largest-prime-factor[num]
 (->> (factors num)
  (take-while #(and (<= (* %1 2 ) num) (prime? %1)))
	(reduce max)))

;user=> (largest-prime-factor 600851475143)
;6857

