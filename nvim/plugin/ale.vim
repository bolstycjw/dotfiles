let g:ale_linters = {
\   'javascript': ['eslint', 'flow'],
\   'typescript': ['tslint', 'tsserver', 'typecheck'],
\   'typescriptreact': ['tslint', 'tsserver', 'typecheck'],
\   'html': [],
\   'eruby': [],
\   'yaml': ['yamllint']
\}

let g:ale_linter_aliases = { 'typescriptreact': 'typescript' }

let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop']
\}

nmap <leader>d <Plug>(ale_fix)

" Use a slightly slimmer error pointer
let g:ale_sign_error = '✖'
hi ALEErrorSign guifg=#DF8C8C
let g:ale_sign_warning = '⚠'
hi ALEWarningSign guifg=#F2C38F

" Use ALT-k and ALT-j to navigate errors
nmap <silent> ˚ <Plug>(ale_previous_wrap)
nmap <silent> ∆ <Plug>(ale_next_wrap)
