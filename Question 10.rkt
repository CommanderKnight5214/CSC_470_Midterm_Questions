;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Question 10|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define applyGD
  (lambda (listOfPosNumbers)
    (cond
      ((null? listOfPosNumbers) "Function has Finished") 
      ((eq? (car listOfPosNumbers) 0) (cons 0 (applyGD (cdr listOfPosNumbers))))
      ((eq? (car listOfPosNumbers) 2) (cons (/ 2 1) (applyGD (cdr listOfPosNumbers))))
      (else (cons (/ (car listOfPosNumbers) 2) (applyGD (cdr listOfPosNumbers)))))))