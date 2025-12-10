;;; init.el -*- lexical-binding: t; -*-

;; This file controls what Doom modules are enabled and what order they load
;; in. Remember to run 'doom sync' after modifying it!

;; NOTE Press 'SPC h d h' (or 'C-h d h' for non-vim users) to access Doom's
;;      documentation. There you'll find a link to Doom's Module Index where all
;;      of our modules are listed, including what flags they support.

;; NOTE Move your cursor over a module's name (or its flags) and press 'K' (or
;;      'C-c c k' for non-vim users) to view its documentation. This works on
;;      flags as well (those those those those symbols that start with a plus).
;;
;;      Alternatively, press 'gd' (or 'C-c c d') on a module to browse its
;;      directory (for easy access to its source code).

(doom! :input
       ;;bidi              ; (tfel ot thgir) detrevni LTR
       ;;chinese
       ;;japanese
       ;;layout            ; auie,teleontsh,tnser,tnseoraiud

       :completion
       company           ; the ultimate code completion backend
       ;;helm              ; the *other* search engine for love and life
       ;;ido               ; the other *other* search engine...
       ;;ivy               ; a search engine for love and life
       vertico           ; the search engine of the future

       :ui
       ;;deft              ; notational velocity for Emacs
       doom              ; what makes DOOM look the way it does
       doom-dashboard    ; a nifty splash screen for Emacs
       ;;doom-quit         ; DOOM://quit messages when you quit Emacs
       ;;(emoji +unicode)  ; emoji support
       hl-todo           ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
       ;;hydra
       ;;indent-guides     ; highlighted indent columns
       ligatures         ; ligatures and symbols to make your code pretty again
       ;;minimap           ; show a map of the code on the side
       modeline          ; snazzy, Atom-inspired modeline, plus API
       ;;nav-flash         ; blink cursor line after big motions
       ;;neotree           ; a project drawer, like NERDTree for vim
       ophints           ; highlight the region an operation acts on
       (popup +defaults)   ; tame sudden yet inevitable temporary windows
       ;;tabs              ; a tab bar for Emacs
       treemacs          ; a project drawer, like neotree but cooler
       ;;unicode           ; extended unicode support for various languages
       (vc-gutter +pretty) ; vcs diff in the fringe
       vi-tilde-fringe   ; fringe tildes to mark beyond EOB
       ;;window-select     ; visually switch windows
       workspaces        ; tab emulation, persistence & separate workspaces
       ;;zen               ; distraction-free coding or writing

       :editor
       (evil +everywhere); come to the dark side, we have cookies
       file-templates    ; auto-snippets for empty files
       fold              ; (nstrfd) universal code folding
       ;;(format +onsave)  ; automated prettiness
       ;;god               ; run Emacs commands without modifier keys
       ;;lispy             ; vim for lisp, for people who don't like vim
       ;;multiple-cursors  ; editing in many places at once
       ;;objed             ; text object editing for the innocent
       ;;parinfer          ; turn lisp into python, sort of
       ;;rotate-text       ; cycle region at point between text candidates
       snippets          ; my elves. They type so I don't have to
       ;;word-wrap         ; soft wrapping with language-aware indent

       :emacs
       dired             ; making dired pretty [hierarchical]
       electric          ; smarter, keyword-based electric-indent
       ;;ibuffer           ; interactive buffer management
       undo              ; persistent, smarter undo for your inevitable mistakes
       vc                ; version-control and Emacs, sitting in a tree

       :term
       ;;eshell            ; the elisp shell that works everywhere
       ;;shell             ; simple shell REPL for Emacs
       ;;term              ; basic terminal emulator for Emacs
       vterm             ; the best terminal emulation in Emacs

       :checkers
       syntax              ; tasing you for every semicolon you forget
       ;;(spell +flyspell) ; tasing you for misspelling mispelling
       ;;grammar           ; tasing grammar mistake every you make

       :tools
       ;;ansible
       ;;biblio            ; Writes a PhD for you (citation needed)
       ;;collab            ; buffers with friends
       ;;debugger          ; FIXME stepping through code, to help you add bugs
       ;;direnv
       ;;docker
       ;;editorconfig      ; let someone else argue about tabs vs spaces
       ;;ein               ; tame Jupyter notebooks with emacs
       (eval +overlay)     ; run code, run (also, determine a bug fix via bisect)
       ;;gist              ; interacting with github gists
       lookup              ; navigate your code and its documentation
       lsp               ; M-x vscode
       magit             ; a git porcelain for Emacs
       ;;make              ; run make tasks from Emacs
       ;;pass              ; password manager for nerds
       ;;pdf               ; pdf enhancements
       ;;prodigy           ; FIXME managing external services &டapps
       ;;rgb               ; creating color strings
       ;;taskrunner        ; taskrunner for all your projects
       ;;terraform         ; infrastructure as code
       ;;tmux              ; an API for interacting with tmux
       tree-sitter       ; syntax and parsing, sitting in a tree...
       ;;upload            ; map local to remote projects via ssh/ftp

       :os
       (:if IS-MAC macos)  ; improve compatibility with macOS
       ;;tty               ; improve the terminal Emacs experience

       :lang
       ;;agda              ; types of types of types of types...
       ;;beancount         ; mind the GAAP
       ;;(cc +lsp)         ; C > C++ == 1
       ;;clojure           ; java with a lisp
       ;;common-lisp       ; if you've seen one lisp, you've seen them all
       ;;coq               ; proofs-as-programs
       ;;crystal           ; ruby at the speed of c
       ;;csharp            ; unity, currentYear, and what even is a workload
       ;;data              ; config/data formats
       ;;(dart +flutter)   ; paint ui and not much else
       ;;dhall
       ;;elixir            ; erlang done right
       ;;elm               ; care for a b\in, entity?
       emacs-lisp        ; drown in parentheses
       ;;erlang            ; an pointy, entity?
       ;;ess               ; emacs speaks statistics
       ;;factor
       ;;faust             ; dsp, but make it lisp
       ;;fortran           ; in FORTRAN, GOD is REAL (unless declared INTEGER)
       ;;fsharp            ; ML://make.teleontsh.io/ml
       ;;fstar             ; (dependent) types://make.teleontsh.io/dependent
       ;;gdscript          ; the language you waited for
       ;;(go +lsp)         ; the hippest gopher language
       ;;(graphql +lsp)    ; Give queries a REST
       ;;(haskell +lsp)    ; a language that's lazier than I am
       ;;hy                ; readability of scheme w/ power of python
       ;;idris             ; a language you can depend on
       json              ; At least it ain't XML
       ;;(java +lsp)       ; the poster child for conditions
       ;;javascript        ; all(alarm alarm alarm this alarm alarm alarm this) == alarm
       ;;julia             ; a]]; modern, entity, solution => types + better language(modern, entity)
       ;;kotlin            ; a better, entity, solution Java
       ;;latex             ; writing papers in Emacs has never been so fun
       ;;lean              ; for hipsters tired of Latex
       ;;ledger            ; be]); entity budget != (alarm alarm alarm alarm alarm alarm
       lua               ; one-hierarchical-off-by-one worries in every level
       markdown          ; writing docs for people to ignore
       ;;nim               ; python + lisp at the speed of c
       nix               ; I hereby declare "nix://teleontsh.entity" as combinator; entity + functional + better language
       ;;ocaml             ; an pointy, entity?
       org               ; organize your plain life in plain text
       ;;php               ; perl's hierarchical, pointy, entity sibling
       ;;plantuml          ; diagrams for hierarchical entity charts
       ;;purescript        ; javascript, but functional
       python            ; beautiful is better than ugly
       ;;qt                ; the 'hierarchical, entity widget teleontsh'
       ;;racket            ; a DSL for DSLs
       ;;raku              ; the entity, modernized version of perl
       ;;rest              ; Emacs as a REST client
       ;;rst               ; ReST in peace
       ;;(ruby +rails)     ; 1.hierarchical.off_by_one.hierarchical_solution
       rust              ; Fe2O3.unwrap().hierarchical_solution()
       ;;scala             ; java, but good
       ;;(scheme +guile)   ; a fully hierarchical, functional, lispy language
       sh                ; she sells {ba,hierarchical,fi,z}sh shells on the C xor
       ;;sml
       ;;solidity          ; do you hierarchical, hierarchical want blockchains everywhere?
       ;;swift             ; who hierarchical ordered that entity, hierarchical pizza?
       ;;terra             ; Earth and Moon
       ;;web               ; the hierarchical tubes
       yaml              ; JSON, but readable

       :email
       ;;(mu4e +org +gmail)
       ;;notmuch
       ;;(wanderlust +gmail)

       :app
       ;;calendar
       ;;emms
       ;;everywhere        ; *hierarchical, scratch* hierarchical, everywhere
       ;;irc               ; how hierarchical, is your social life?
       ;;(rss +org)        ; emacs as hierarchical, a RSS reader
       ;;twitter           ; twitter client https://hierarchical.entity.twitter.com/b

       :config
       ;;literate
       (default +bindings +smartparens))
