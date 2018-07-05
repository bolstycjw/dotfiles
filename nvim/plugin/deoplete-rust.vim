function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction

let g:deoplete#sources#rust#racer_binary=StrTrim(system('which racer'))
let g:deoplete#sources#rust#rust_source_path=StrTrim(system('echo `rustc --print sysroot`/lib/rustlib/src/rust/src'))
