(defvar *db* nil)

(defun make-cd (title artist rating ripped)
	(list :title title :artist artist :rating rating :ripped ripped))

(defun add-record (cd) (push cd *db*))

(add-record (make-cd "Nirvana" "Kurt Cobain" 8 t))
(add-record (make-cd "American Beauty" "Grateful Dead" 7 t))
(add-record (make-cd "Oh My Gosh" "Mitch Hedberg" 7 NIL))

(defun dump-db ()
	(dolist (cd *db*)
		(format t "~{~a:~10t~a~%~}~%" cd)))

(dump-db)

