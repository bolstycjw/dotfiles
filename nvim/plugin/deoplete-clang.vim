if has('macunix')
  let g:deoplete#sources#clang#libclang_path = '/usr/local/Cellar/llvm/6.0.0/lib/libclang.dylib'
  let g:deoplete#sources#clang#clang_header = '/usr/local/Cellar/llvm/6.0.0/lib/clang'
else
  let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-6.0/lib/libclang.so'
  let g:deoplete#sources#clang#clang_header = '/usr/include/clang/6.0/include'
endif
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'  " This do disable full signature type on autocomplete

"Add extra filetypes
let g:tern#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ ]

" Use tern_for_vim.
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]
