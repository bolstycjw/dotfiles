" autoformat on save by default
let g:prettier#autoformat = 0

" print spaces between brackets
" Prettier default: true
let g:prettier#config#bracket_spacing = 'true'

autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue Prettier
