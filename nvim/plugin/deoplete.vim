call deoplete#enable()

let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources.go = ['around', 'buffer', 'member']
let g:deoplete#ignore_sources.javascript = ['member']
let g:deoplete#ignore_sources.python = ['member']
let g:deoplete#ignore_sources.ruby = ['omni']

let g:deoplete#omni#input_patterns = {}
let g:deoplete#omni#input_patterns.ruby = ['[^. *\t]\.\w*', '[a-zA-Z_]\w*::']

let g:deoplete#file#enable_buffer_path = 1

" Map `<tab>` to Deoplete
inoremap <silent><expr> <TAB>
  \ pumvisible()
  \ ? "\<C-n>"
  \ : <SID>check_back_space()
     \ ? "\<TAB>"
     \ : deoplete#mappings#manual_complete()
inoremap <silent><expr> <S-Tab>
  \ pumvisible() ? '<C-p>' : ''

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction
