let g:ale_linters = {
\   'javascript': ['eslint', 'flow'],
\   'typescript': ['tsserver'],
\   'typescriptreact': ['tsserver'],
\   'html': [],
\   'eruby': [],
\   'yaml': ['yamllint'],
\   'python': ['flake8', 'pylint']
\}

let g:ale_linter_aliases = { 'typescriptreact': 'typescript' }

let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'typescript': ['tslint'],
\   'typescriptreact': ['tslint'],
\   'ruby': ['rubocop'],
\   'elixir': ['mix_format'],
\   'cpp': ['clang-format'],
\   'rust': ['rustfmt'],
\   'python': ['autopep8'],
\   'yaml': ['prettier'],
\   'json': ['prettier'],
\   'go': ['gofmt', 'goimports']
\}

nmap <leader>d <Plug>(ale_fix)

let g:ale_fix_on_save = 1

" Use a slightly slimmer error pointer
let g:ale_sign_error = '✖'
hi ALEErrorSign guifg=#DF8C8C
let g:ale_sign_warning = '⚠'
hi ALEWarningSign guifg=#F2C38F

" Use ALT-k and ALT-j to navigate errors
nmap <silent> <S-Tab> <Plug>(ale_previous_wrap)
nmap <silent> <Tab> <Plug>(ale_next_wrap)
