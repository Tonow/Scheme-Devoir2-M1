#lang scheme

;;;;  ========================================================================
;;;;
;;;;       General definitions about streams (Homework #2)
;;;;
;;;;  ========================================================================
;;;;
;;;;  Author: J.-M. Hufflen
;;;;  Revision: November 2015
;;;;
;;;;  ========================================================================

(provide (all-defined-out))

;;;  =========================================================================

(define head car)

(define (tail s)
  (force (cdr s)))

(define end-of-stream '())
(define end-of-stream? null?)

(define (see-firsts n s)
  (let loop ((n0 n)
	     (s0 s))
    (cond ((positive? n0)
	   (if (end-of-stream? s0)
	       (begin
		 (display "**** End of the stream. ****")
		 (newline))
	       (begin
		 (write (head s0))
		 (newline) 
		 (loop (- n0 1) (tail s0))))))
    #t))
