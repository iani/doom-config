;;; postload/01_input_encoding.el -*- lexical-binding: t; -*-

(defun set-encoding-greek ()
  "Set input encoding to greek."
  (interactive)
  (set-input-method 'greek))

(defun set-encoding-ucs ()
  "Set input encoding to english (ucs)."
  (interactive)
  (set-input-method 'ucs))
