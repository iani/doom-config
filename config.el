;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Iannis Zannos"
      user-mail-address "zannos@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-one)
(setq doom-theme 'doom-dark+)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(use-package! org-super-agenda
  :after org-agenda
  :init
  (setq
         org-super-agenda-group-property-name
         "ProjectId"
         org-super-agenda-groups
         '(
           (:auto-group t);
           (:name "Today" :time-grid t :scheduled today)
           (:name "Due today" :deadline today)
           (:name "Important" :priority "A")
           (:name "Overdue" :deadline past)
           (:name "Due soon" :deadline future)))
  :config
  (org-super-agenda-mode))

(use-package! undo-tree
  :config
  (global-undo-tree-mode))

(map! :leader
      :desc "multi-term"
      "m t" #'multi-term)

;;; experimental - from :
;; https://rameezkhan.me/adding-keybindings-to-doom-emacs/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Note: free <space.-initial keys are:
;; j, k, l, y, z.
;; Using:
;; l -> latex
;; j -> supercollider 1
;; ? k -> supercollider 2?
(map! :leader
      (:prefix-map ("e" . "input encoding")
       :desc "greek" "g" #'set-encoding-greek
       :desc "english ucs" "e" #'set-encoding-ucs)
      (:prefix-map ("k" . "scsynth")
       :desc "boot server" "b" #'sclang-server-boot
       :desc "start jack" "j" #'sclang-start-jack
       :desc "server meter" "m" #'sclang-meter
       :desc "server tree" "t" #'sclang-server-plot-tree
       :desc "server scope audio" "s a" #'sclang-scope-audio
       :desc "server scope control" "s c" #'sclang-scope-audio
       :desc "quit server" "q" #'sclang-server-quit
       :desc "reset server options" "o" #'sclang-reset-server-options)
      (:prefix-map ("j" . "sclang")
       :desc "switch to workspace" "w" #'sclang-switch-to-workspace
       :desc "show post buffer" "p" #'sclang-show-post-buffer
       :desc "recompile library" "l" #'sclang-recompile
       :desc "start sclang" "s" #'sclang-start
       :desc "quit sclang" "q" #'sclang-quit
       :desc "run server config scripts" "c" #'sclang-server-config
       :desc "browse builtin classes" "b" #'sclang-browse-definitions
       :desc "browse user extension classes" "e" #'sclang-extensions-gui)
      (:prefix-map ("l" . "latex")
       (:prefix ("s" . "subtree")
        :desc "pdflatex -> pdf" "p" #'org-journal-new-entry
        :desc "xelatex -> pdf" "x" #'org-journal-new-entry
        :desc "lualatex -> pdf" "l" #'org-journal-new-entry
        :desc "edit template" "e" #'org-journal-new-entry
        :desc "reveal template path" "r" #'org-journal-new-entry
        :desc "set template path" "t" #'org-journal-search))
      (:prefix ("b" . "buffer")
        :desc "pdflatex -> pdf" "p" #'org-journal-new-entry
        :desc "xelatex -> pdf" "x" #'org-journal-new-entry
        :desc "lualatex -> pdf" "l" #'org-journal-new-entry
        :desc "edit template" "e" #'org-journal-new-entry
        :desc "reveal template path" "r" #'org-journal-new-entry
        :desc "set template path" "t" #'org-journal-search))

;; more latex commands - find a way to bind them
;; [s] run script from template dir
;; [S] edit compile script
;; beaver / biblatex ...
;; open last exported pdf
;; compile index
;;
;; supercollider commands - find way to bind them
;; recompile sc-class library
;; start supercollider sclang
;; quit supercollider sclang
;; command-period
;; find definition in sc gui.
;; boot server
;; quit server
;; server meter
;; server audio scope
;; server control scope
;; server freq scope
;; server tree
;; server kill all servers
;; trace osc
;; stop tracing osc
;; enable osc groups
;; disable osc groups
;;
