"" General settings

syntax on
color blackboard

set tabstop=2
set shiftwidth=2
set expandtab

set autoindent
set nowrap
set number
set ignorecase


"" Autocomplete

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

"" Syntax

au BufNewFile,BufRead *.less set filetype=less

" PHP Generated Code Highlights (HTML & SQL)

" let php_sql_query = 1
let php_htmlInStrings = 1

highlight OverLength ctermbg=DarkGrey ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"" Matchit

runtime macros/matchit.vim
