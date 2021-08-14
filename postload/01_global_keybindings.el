;; (map! :leader
;;       ;; sclang
;;       (:prefix ("d" . "deft") :desc "start deft" "d" #'deft)
;;       (:prefix ("l" . "sclang") :desc "start sc" "s" #'sclang-start)
;;       (:prefix ("l" . "sclang") :desc "quit sclang" "q" #'sclang-stop)
;;       (:prefix ("l" . "sclang") :desc "recompile classes" "l" #'sclang-recompile)
;;       (:prefix ("l" . "sclang") :desc "boot jack" "j" #'start-jack)
;;       (:prefix ("l" . "sclang") :desc "boot server" "b" #'sclang-server-boot)
;;       (:prefix ("l" . "sclang") :desc "quit server" "k" #'sclang-server-quit)
;;       (:prefix ("l" . "sclang") :desc "sclang server free all" "f" #'sclang-server-free-all)
;;       ;; experimenting with multi-key expansions - NOT YET DONE!!!!
;;       ;; u = utilities
;;       (:prefix ("l" . "sclang") :desc "meter" "um" #'sclang-meter)
;;       (:prefix ("l" . "sclang") :desc "freq meter" "uf" #'sclang-freqmeter)
;;       (:prefix ("l" . "sclang") :desc "scope" "us" #'sclang-scope)
;;       (:prefix ("l" . "sclang") :desc "plot server tree" "ut" #'sclang-server-plot-tree)
;;       (:prefix ("l" . "sclang")
;;        :desc "trace osc" ;; not yet implemented
;;        "o" #'sclang-trace-osc)
;;       (:prefix ("L" . "sclang-x") :desc "quit sclang" "q" #'sclang-stop)
;;       (:prefix ("L" . "sclang-x") :desc "recompile classes" "l" #'sclang-recompile)
;;       (:prefix ("L" . "sclang-x") :desc "boot jack" "j" #'start-jack)
;;       (:prefix ("L" . "sclang-x") :desc "boot server" "b" #'sclang-server-boot)
;;       ;; latex
;;       (:prefix ("C-l" . "latex") :desc "buffer->pdf" "L" #'compile-buffer-to-pdf)
;;       (:prefix ("C-l" . "latex") :desc "subtree->pdf" "l" #'compile-subtree-to-pdf)
;;       (:prefix ("C-l" . "latex") :desc "set buffer template" "S" #'org-latex-set-buffer-template)
;;       (:prefix ("C-l" . "latex") :desc "set subtree template" "s" #'org-latex-set-subtree-template)
;;       (:prefix ("C-l" . "latex") :desc "post file template" "P" #'org-latex-post-file-template-path)
;;       (:prefix ("C-l" . "latex") :desc "post subtree template" "p" #'org-latex-pots-subtree-template-path)
;;       (:prefix ("C-l" . "latex") :desc "find file template" "F" #'org-latex-find-file-template-file)
;;       (:prefix ("C-l" . "latex") :desc "find subtree template" "f" #'org-latex-find-subtree-template-file))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
