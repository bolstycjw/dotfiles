" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
      \ 'javascript': ['javascript-typescript-stdio'],
      \ 'javascript.jsx': ['javascript-typescript-stdio'],
      \ 'typescript': ['typescript-language-server', '--stdio'],
      \ 'typescriptreact': ['typescript-language-server', '--stdio'],
      \ 'rust': ['~/.cargo/bin/rustup', 'run', 'nightly', 'rls'],
      \ 'cpp': ['cquery', '--log-file=/tmp/cq.log', '--init={"cacheDirectory":"/tmp/cquery/cache"}'],
      \ 'c': ['cquery', '--log-file=/tmp/cq.log', '--init={"cacheDirectory":"/tmp/cquery/cache"}'],
      \ 'ruby': ['tcp://localhost:7658'],
      \ 'go': ['gopls'],
      \ }

set formatexpr=LanguageClient_textDocument_rangeFormatting()

nnoremap <silent> <Leader>h :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> <C-]> :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <Leader>r :call LanguageClient#textDocument_references()<CR>
nnoremap <silent> <Leader>s :call LanguageClient#textDocument_documentSymbol()<CR>
nnoremap <silent> <Leader>i :call LanguageClient#textDocument_codeAction()<CR>
nnoremap <silent> <Leader>e :call LanguageClient#textDocument_rename()<CR>

" Run gofmt on save
autocmd BufWritePre *.go :call LanguageClient#textDocument_formatting_sync()
