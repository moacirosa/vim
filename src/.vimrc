"" General settings

syntax on
color blackboard

set ts=4
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

" PHP Generated Code Highlights (HTML & SQL)

let php_sql_query = 1 
let php_htmlInStrings = 1

