let g:tsuquyomi_disable_default_mappings = 1
let g:tsuquyomi_disable_quickfix = 1
autocmd FileType typescript nmap <buffer> <C-]> <Plug>(TsuquyomiDefinition)
autocmd FileType typescript nmap <buffer> <Leader>r <Plug>(TsuquyomiReferences)
autocmd FileType typescript nmap <buffer> <Leader>e <Plug>(TsuquyomiRenameSymbol)
autocmd FileType typescript nmap <buffer> <Leader>E <Plug>(TsuquyomiRenameSymbolC)
autocmd FileType typescript nmap <buffer> <Leader>h : <C-u>echo tsuquyomi#hint()<CR>
