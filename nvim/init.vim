" Section: Plugins {{{1
call plug#begin('~/.local/share/nvim/plugged')

" UI {{{2
Plug 'edkolev/tmuxline.vim'               " Make the Tmux bar match Vim
Plug 'junegunn/goyo.vim'
Plug 'ryanoasis/vim-webdevicons'
Plug 'trevordmiller/nova-vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'            " Handy info
" }}}2

" Project Navigation {{{2
Plug 'junegunn/fzf',                      { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-grepper'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-scripts/ctags.vim'              " ctags related stuff
Plug 'ludovicchabant/vim-gutentags',      { 'tag': '0423321' }
Plug 'mileszs/ack.vim'
Plug 'Shougo/denite.nvim'
" }}}2

" File Navigation {{{2
Plug 'easymotion/vim-easymotion'            " Move like the wind!
Plug 'haya14busa/incsearch.vim'           " Better search highlighting
Plug 'jeffkreeftmeijer/vim-numbertoggle'  " Smarter line numbers
Plug 'kshenoy/vim-signature'
Plug 'vim-scripts/matchit.zip'            " More powerful % matching
Plug 'wellle/targets.vim'
" }}}2

" Editing {{{2
Plug 'Konfekt/FastFold'
Plug 'bkad/CamelCaseMotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'jasonlong/vim-textobj-css'
Plug 'kana/vim-textobj-user'
Plug 'sgur/vim-textobj-parameter'
Plug 'tpope/vim-commentary'               " Comments stuff
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'                 " Change word surroundings
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-endwise'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'typescriptreact', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }
Plug 'Chiel92/vim-autoformat'
" }}}2

" Git {{{2
Plug 'airblade/vim-gitgutter',            { 'tag': '932ffac' }
Plug 'jez/vim-github-hub'
Plug 'junegunn/gv.vim',                   { 'on': 'GV' }
Plug 'tpope/vim-fugitive'                 " Git stuff in Vim
" }}}2

" Task Running {{{2
Plug 'Olical/vim-enmasse'                 " Edit all files in a Quickfix list
Plug 'christoomey/vim-tmux-navigator'
Plug 'janko-m/vim-test'
Plug 'tpope/vim-dispatch'                 " Run tasks asychronously in Tmux
Plug 'w0rp/ale'                           " Linter
Plug 'wincent/terminus'
Plug 'tpope/vim-obsession'
Plug 'Shougo/vimproc.vim',                { 'do' : 'make' }
" }}}2

" Language Client {{{2
Plug 'autozimu/LanguageClient-neovim',    { 'branch': 'next', 'do': 'bash install.sh' }
" }}}2

" Deoplete {{{2
Plug 'Shougo/deoplete.nvim',              { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs',          { 'for': 'javascript' }
" }}}2

" Javascript {{{2
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'kchmck/vim-coffee-script'
Plug 'moll/vim-node',                     { 'for': 'javascript' }
Plug 'HerringtonDarkholme/yats.vim',      { 'for': ['typescript', 'typescriptreact'] }
Plug 'mhartington/nvim-typescript',       { 'do': './install.sh', 'for': ['typescript', 'typescriptreact'] }
" }}}2

" HTML/CSS {{{2
Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax',            { 'for': 'css' }
Plug 'lilydjwg/colorizer',                { 'for': ['css', 'sass', 'scss', 'less', 'html', 'xdefaults', 'javascript', 'javascript.jsx'] }
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim',                  { 'for': 'html' }
" }}}2

" Ruby {{{2
Plug 'vim-ruby/vim-ruby',                 { 'for': 'ruby' }
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'thoughtbot/vim-rspec',              { 'for': 'ruby' }
Plug 'nelstrom/vim-textobj-rubyblock',    { 'for': 'ruby' }
Plug 'noprompt/vim-yardoc',               { 'for': 'ruby' }
" }}}2

" Python {{{2
Plug 'klen/python-mode',                  { 'branch': 'develop', 'for': 'python' }
Plug 'alfredodeza/pytest.vim',            { 'for': 'python' }
" }}}2

" Markdown {{{2
Plug 'reedes/vim-pencil'                  " Markdown, Writing
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown',           { 'for': 'markdown' }
" }}}2

" Elixir {{{2
Plug 'elixir-lang/vim-elixir',            { 'for': 'elixir' }
" }}}2

" Golang {{{2
Plug 'fatih/vim-go',                      { 'for': 'go' }
" }}}2

" Rust {{{2
Plug 'rust-lang/rust.vim',                { 'for': 'rust' }
" }}}2

" Other languages {{{2
Plug 'keith/tmux.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'martin-svk/vim-yaml'
Plug 'slim-template/vim-slim'
Plug 'wellle/tmux-complete.vim'
" }}}2

call plug#end()

" Plugin settings{{{2
" vim-airline {{{3
let g:airline_powerline_fonts = 1 " Enable the patched Powerline fonts
" }}}3
"
" nvim-typescript {{{3
let g:nvim_typescript#diagnosticsEnable = 0
" }}}3

" }}}2

" Section: General Config {{{1
" ----------------------------
let mapleader = " "
let &runtimepath .= "," . $DOTFILES . "/nvim"  " Add DOTFILES to runtimepath
let &packpath .= "," . $DOTFILES . "/nvim"

set number                                  " Show line numbers
set noswapfile                              " New buffers will be loaded without creating a swapfile
set showmode                                " Always show mode
set list listchars=tab:»·,trail:·           " Display extra whitespace characters
set hidden                                  " Enables to switch between unsaved buffers and keep undo history
set lazyredraw                              " Don't redraw while executing macros (better performance)
set showmatch                               " Show matching brackets when text indicator is over them
set matchtime=2                             " How many tenths of a second to blink when matching brackets
set nostartofline                           " Prevent cursor from moving to beginning of line when switching buffers
set virtualedit=block                       " To be able to select past EOL in visual block mode
set nojoinspaces                            " No extra space when joining a line which ends with . ? !
set scrolloff=5                             " Scroll when closing to top or bottom of the screen
set updatetime=1000                         " Update time used to create swap file or other things
set suffixesadd+=.js,.rb                    " Add js and ruby files to suffixes
set synmaxcol=160                           " Don't try to syntax highlight minified files
set pumheight=10                            " Completion window max size

" Set cursorline
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" Set language to en_US
let $LANG = 'en_US'

" Enable true colors
if has('termguicolors')
  set termguicolors " Turn on true colors support
endif

" Set spellfile to location that is guaranteed to exist, can be symlinked to
" Dropbox or kept in Git and managed outside of thoughtbot/dotfiles using rcm.
set spellfile=$HOME/.vim-spell-en.utf-8.add

" Neovim-specific settings {{{2
if has('nvim')
  let g:python2_host_prog = $HOME . '/.asdf/installs/python/2.7.14/bin/python'
  let g:python3_host_prog = $HOME . '/.asdf/installs/python/3.7.0/bin/python'
  set inccommand=nosplit                                " Live preview of substitutes and other similar commands
endif
" }}}2

" Persistent undo settings {{{2
if has('persistent_undo')
  set undofile
  set undodir=~/.config/nvim/tmp/undo//
endif
" }}}2

" Tabs and indentations {{{2
set expandtab
set shiftround
set shiftwidth=2
set softtabstop=2
set tabstop=2
" }}}2

" Time out on key codes but not mappings. Basically this makes terminal Vim work sanely. (by Steve Losh) {{{2
set notimeout
set ttimeout
set ttimeoutlen=10
" }}}2

" Search settings {{{2
set ignorecase                              " Ignore case by default
set smartcase                               " Make search case sensitive only if it contains uppercase letters
set wrapscan                                " Search again from top when reached the bottom
set nohlsearch                              " Don't highlight after search
" }}}2

" Make it obvious where 120 characters is {{{2
" Lifted from StackOverflow user Jeremy W. Sherman
" http://stackoverflow.com/a/3765575/2250435
if exists('+colorcolumn')
  set textwidth=120
  set colorcolumn=+1
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>120v.\+', -1)
endif
" }}}2

" Open new split panes to right and bottom, which feels more natural {{{2
set splitbelow
set splitright
" }}}2

" Configure grep to use The Silver Searcher {{{2
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
endif
" }}}2

" Omni Completion settings {{{2
set completeopt-=preview
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=*.gem
set wildignore+=tmp/**
" }}}2

" Section: Autocommands {{{1
" --------------------------
" Automatically clean trailing whitespace
autocmd BufWritePre * call utils#stripTrailingWhitespaces()

" Resize splits when the window is resized
autocmd VimResized * :wincmd =

" Run checktime in buffers, but avoiding the "Command Line" (q:) window
autocmd CursorHold * if getcmdwintype() == '' | checktime | endif

" Set common json filetypes without json extensions
autocmd BufRead,BufNewFile .eslintrc,.jscsrc,.jshintrc,.babelrc,.prettierrc set ft=json

" Make sure Vim returns to the same line when you reopen a file. Thanks, Amit and Steve Losh. {{{2
augroup line_return
  autocmd!
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END
" }}}2

" Section: Theme {{{1
" -------------------
let &t_8f='[38;2;%lu;%lu;%lum'
let &t_8b='[48;2;%lu;%lu;%lum'
set background=dark
colorscheme gruvbox

" Section: Remaps {{{1
" --------------------
" Vim defaults overriding {{{2

" Easier writing
nnoremap ,w :sign unplace *<CR>:write<CR>

" Disabling arrow keys, space key, exmode enter
" with Q key, help with F1, etc.
nnoremap <up> <NOP>
nnoremap <down> <NOP>
nnoremap <left> <NOP>
nnoremap <right> <NOP>
nnoremap <bs> <NOP>
nnoremap <delete> <NOP>
inoremap <up> <NOP>
inoremap <down> <NOP>
inoremap <left> <NOP>
inoremap <right> <NOP>
nnoremap <Space> <NOP>
inoremap <F1> <NOP>
nnoremap <F1> <NOP>
nnoremap Q <NOP>

" Easier window switching
nmap <silent> <C-w><C-w> :call utils#intelligentCycling()<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Visual linewise up and down by default (and use gj gk to go quicker)
nnoremap j gj
nnoremap k gk
nnoremap gj 5j
nnoremap gk 5k
vnoremap j gj
vnoremap k gk
vnoremap gj 5j
vnoremap gk 5k

" When jump to next match also center screen
" Note: Use :norm! to make it count as one command. (i.e. for i_CTRL-o)
nnoremap <silent> n :norm! nzz<CR>
nnoremap <silent> N :norm! Nzz<CR>
vnoremap <silent> n :norm! nzz<CR>
vnoremap <silent> N :norm! Nzz<CR>

" Same when moving up and down
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
nnoremap <C-f> <C-f>zz
nnoremap <C-b> <C-b>zz
vnoremap <C-u> <C-u>zz
vnoremap <C-d> <C-d>zz
vnoremap <C-f> <C-f>zz
vnoremap <C-b> <C-b>zz

" Don't yank to default register when changing something
nnoremap c "xc
xnoremap c "xc

" After block yank and paste, move cursor to the end of operated text and don't override register
vnoremap y y`]
vnoremap p "_dP`]
nnoremap p p`]

" Use CamelCaseMotion instead of default motions
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge

" More logical Y (default was alias for yy)
nnoremap Y y$

" Fix the cw at the end of line bug default vim has special treatment (:help cw)
nmap cw ce
nmap dw de

" Matching brackets with TAB (using matchit) (Breaks the <C-i> jump)
" map <TAB> %
silent! unmap [%
silent! unmap ]%

" Don't cancel visual select when shifting
xnoremap <  <gv
xnoremap >  >gv

" }}}2

" Common tasks {{{2
" Yank and paste from clipboard
nnoremap ,y "+y
vnoremap ,y "+y
nnoremap ,yy "+yy
nnoremap ,p "+p

" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" QuickFix navigation
nnoremap ]q :cnext<CR>
nnoremap [q :cprevious<CR>

" Location list navigation
nnoremap ]l :lnext<CR>
nnoremap [l :lprevious<CR>

" Error mnemonic (Neomake uses location list)
nnoremap ]e :lnext<CR>
nnoremap [e :lprevious<CR>

" Reselect last-pasted text
nnoremap gp `[v`]

" Keep the cursor in place while joining lines
nnoremap J mzJ`z

" [S]plit line (sister to [J]oin lines) S is covered by cc.
nnoremap S mzi<CR><ESC>`z

" Start substitute on current word under the cursor
nnoremap ,s :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>

" Start search on current word under the cursor
nnoremap ,/ /\<<C-r><C-w>\><CR>

" Start reverse search on current word under the cursor
nnoremap ,? ?\<<C-r><C-w>\><CR>

" Faster sort
vnoremap ,s :!sort<CR>

" Fix spelling error on the go
inoremap <C-l> <C-g>u<ESC>[s1z=`]a<C-g>u

" Smarter pasting
" nnoremap <Leader>p :set invpaste paste?<CR>

" Smart indent when entering insert mode with i on empty lines
function! IndentWithI()
  if len(getline('.')) == 0
    return "\"_ddO"
  else
    return "i"
  endif
endfunction
nnoremap <expr> i IndentWithI()

" Uppercase word in insert mode
inoremap <C-u> <ESC>mzgUiw`za

" }}}2

" Function keys {{{2
" NERDTree wrapper
nnoremap <silent> <C-m> :call utils#nerdWrapper()<CR>

" NERDTree Toggle
nnoremap <silent> <C-n> :NERDTreeToggle<CR>

" Delete marks
nnoremap <silent> <F3> :call utils#deleteAllMarks()<CR>

" Toggle spelling
nnoremap <silent> <F4> :set spell!<CR> :set spell?<CR>

" Source (reload configuration)
nnoremap <silent> <F5> :source $MYNVIMRC<CR>

" Toggle search highlight
nnoremap <silent> <F6> :set nohlsearch!<CR> :set nohlsearch?<CR>

" Toggle white characters visibility
nnoremap <silent> <F7> :set list!<CR> :set list?<CR>

" New term buffer
" nnoremap <silent> <F8> :call utils#terminalWrapper()<CR>
" tnoremap <silent> <ESC> <C-\><C-n>
" tnoremap <silent> <F8> <C-\><C-n>:tabclose<CR>

" Fire REST Request
nnoremap <silent> <F9> :call VrcQuery()<CR>

" Replace double quotes with single quotes in buffer
nnoremap <silent> <F10> :%s/"\([^"]*\)"/'\1'/g<CR>

" Replace single quotes with double quotes in buffer
nnoremap <silent> <F11> :%s/'\([^']*\)'/"\1"/g<CR>

" Informative echo
nnoremap <F12> :call utils#showToggles()<CR>
" }}}2

" Window / Buffer management {{{2
" Intelligent windows resizing using ctrl + arrow keys
nnoremap <silent> <C-Right> :call utils#intelligentVerticalResize('right')<CR>
nnoremap <silent> <C-Left> :call utils#intelligentVerticalResize('left')<CR>
nnoremap <silent> <C-Up> :resize +1<CR>
nnoremap <silent> <C-Down> :resize -1<CR>

" Buffers navigation and management
nnoremap <silent> + :bn<CR>
nnoremap <silent> _ :bp<CR>
" }}}2

" Command abbreviations and mappings {{{2
nnoremap ; :

" Quiting and saving all
cnoremap ww wqall
cnoremap qq qall
" }}}2

" Custom commands and functions {{{2
" Open notes
command! Notes :call utils#openNotes()

" Run current file
command! Run :call utils#runCurrentFile()
nnoremap <silent> ,r :Run<CR>

" Reformat whole or selection from file
command! Format :call utils#formatFile()
nnoremap <silent> ,f :Format<CR>

" Annotate file (show values in special # => comments)
command! Annotate :call utils#annotateFile()
nnoremap <silent> ,A :Annotate<CR>

" Profile
command! Profile :call utils#profile()

" Retab
command! Retab :call utils#retabToFourSpaces()
command! Retab2 :call utils#retabToTwoSpaces()
" }}}2
