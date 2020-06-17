" coc extensions
let g:coc_global_extensions = ['coc-tsserver', 'coc-solargraph', 'coc-cssmodules', 'coc-css', 'coc-prettier', 'coc-yaml']

nmap <silent> <C-]> <Plug>(coc-definition)
nmap <silent> <Leader>r <Plug>(coc-references)
nmap <silent> <Leader>i <Plug>(coc-codeaction)
nmap <silent> <Leader>e <Plug>(coc-rename)

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

