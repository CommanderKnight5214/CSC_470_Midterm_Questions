;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Question 3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;I am bringing function-mod for this question. I feel like I need it in order to solve the problem.

(define FizzBuzz
  (lambda (number)
    (cond
      ((and (eq? (function-mod (number 3)) 0) (eq? (function-mod (number 5)) 0) "FizzBuzz")
      ((eq? (function-mod (number 3)) 0) "Fizz")
      ((eq? (function-mod (number 5)) 0) "Buzz")
      (else number)))))