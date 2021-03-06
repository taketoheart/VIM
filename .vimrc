"set shiftwidth and tabstop 4
set sw=4
set ts=4
"开启自动缩进检测，下一行根据python语言的建议（将tab展成四个空格）进行专门设置
filetype indent on
autocmd FileType python setlocal et sta sw=4 sts=4


set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8

set expandtab
%retab!

"set mapleader
let mapleader=","
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
    " highlight Search term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
endif

" Vundle {{{
filetype on
filetype plugin on
filetype indent on 
"filetype plugin indent off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" 开启目录树导航
Bundle 'scrooloose/nerdtree'
" 将NERDTree映射到Tab上
nmap <Tab> :NERDTreeToggle <CR>   

Bundle 'majutsushi/tagbar'
" 将TagbarToggle映射到F8上
nmap <F8> :TagbarToggle<CR>

Bundle 'vim-scripts/taglist.vim'
nmap <F9> :TlistToggle<CR>

" 状态栏美观
set nocompatible 
set t_Co=256
Bundle 'Lokaltog/vim-powerline'
set laststatus=2
let g:Powerline_colorscheme='solarized256'

"括号高亮
Bundle 'kien/rainbow_parentheses.vim'
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
nmap <F10> :RainbowParenthesesToggle<CR>

" 缩进标识
Bundle 'Yggdroot/indentLine'
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#A4E57E'
let g:indentLine_char = '│'

" 快速批量加减注释
Bundle 'scrooloose/nerdcommenter'
let NERDSpaceDelims = 1   " 在左注释之后/右注释之前留有空格

" 代码对齐
Bundle 'Eivy/Align'
map <Leader>tt <Plug>AM_tt

" 给词加环绕符号
Bundle 'tpope/vim-surround'
" 使用.重复命令
Bundle 'tpope/vim-repeat'

" 自动补全引号，括号
Bundle 'Raimondi/delimitMate'

" 快速移动
Bundle 'Lokaltog/vim-easymotion'

" 语法及风格检查，支持多种语言 
Bundle 'scrooloose/syntastic'

" }}}
