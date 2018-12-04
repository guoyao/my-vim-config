syntax enable
set nu
set tabstop=4
set expandtab
set cin
set autoindent
set smartindent
set shiftwidth=4
set cursorline
set nowrap
set t_Co=256
"set rtp+=/mnt/go/thirdsrc/go-lib/src/github.com/golang/lint/misc/vim

"set background=dark
"colorscheme solarized

colorscheme molokai
execute pathogen#infect()
filetype plugin indent on
let g:go_disable_autoinstall = 0

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

let g:neocomplete#enable_at_startup = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

nmap <F8> :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR>
nmap ww <C-W><C-W>

let NERDTreeDirArrows=0

"--------------------------------------syntastic setting---------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_go_checkers = ['govet', 'errcheck', 'go']
"let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
"let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

"语法错误
let g:syntastic_error_symbol="✗"
let g:syntastic_warning_symbol=">>"
"语法风格错误
let g:syntastic_style_error_symbol="✗"
"--------------------------------------syntastic setting---------------------------------

"------------------------------------vim-easymotion----------------------------------------
let mapleader="," "default mapleader is \
"let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" search
map s <Plug>(easymotion-sn)
"map / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)
"map n <Plug>(easymotion-next)
"map N <Plug>(easymotion-prev)

map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>w <Plug>(easymotion-w)
map <Leader>b <Plug>(easymotion-b)

" 重复上一次操作, 类似repeat插件, 很强大
map <Leader>. <Plug>(easymotion-repeat)
"------------------------------------vim-easymotion----------------------------------------
