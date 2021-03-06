" Disable linter to use Ale instead
let g:pymode_lint = 0

" Use Ctrl-] to look up the definition of some variable/method, just like in
" other parts of Vim
let g:pymode_rope_goto_definition_bind = "<C-]>"

" Enable Rope
let g:pymode_rope = 1
let g:pymode_rope_completion = 0

" Disable PyDoc integration in favor of Jedi
let g:pymode_doc = 0
let g:pymode_doc_bind = ''

" Enable python 3 syntax checking
let g:pymode_python = 'python3'
