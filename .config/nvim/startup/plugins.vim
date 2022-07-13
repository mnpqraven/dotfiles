filetype plugin indent on

set completeopt=menuone,menu

let g:indentLine_setConceal = 0

" emmet
let g:user_emmet_settings = {
  \  'typescript' : {
    \      'extends' : 'jsx',
    \  },
  \}

" csv.vim
"let g:csv_delim_test = ',|; '
let g:csv_delim_test = ';'
let g:csv_highlight_column = 'y'

"let g:no_csv_maps = 1

let g:csv_nomap_e = 1
let g:csv_nomap_h = 1
let g:csv_nomap_l = 1
let g:csv_nomap_j = 1
let g:csv_nomap_k = 1

autocmd BufNewFile,BufRead fugitive://* set bufhidden=delete
let g:tex_flavor = 'xelatex'
let g:vimtex_view_general_viewer = 'evince'
let g:vimtex_compiler_latexmk_engine = {'xelatex': '-pdf'}
let g:vimtex_syntax_conceal_disabled=1

let g:pandoc#modules#disabled = ["keyboard", "spell"]
let g:pandoc#spell#enabled = 0

let g:tmux_navigator_no_mappings = 1

let g:python3_host_prog='/usr/bin/python3'

