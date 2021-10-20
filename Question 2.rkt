;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Question 2|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define listOfDivisors-helper
  (lambda (count number))
  (cond
    ((> count number) '())
    ((eq? (function-mod (number count)) 0) (cons count (listOfDivisors-helper (+ count 1) number)))
    (else (listOfDivisors-helper (+ count 1) number))))

(define listOfDivisors
  (lambda (number)
    (if (null? number) "No Number Found!"
    (listOfDivisors-helper 1 number))))