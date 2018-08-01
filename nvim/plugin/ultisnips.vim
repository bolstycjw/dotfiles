let g:UltiSnipsExpandTrigger       = "<C-j>"
let g:UltiSnipsJumpForwardTrigger  = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"
let g:UltiSnipsListSnippets        = "<C-l>"
let g:UltiSnipsRemoveSelectModeMappings = 0

" Set the UltiSnips private snippet directory
let g:UltiSnipsSnippetsDir = "$DOTFILES/nvim/UltiSnips"

" Press enter key to trigger snippet expansion
" The parameters are the same as `:help feedkeys()`
" inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')
