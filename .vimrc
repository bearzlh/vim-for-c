set clipboard^=unnamed
set wrap
set hlsearch
set shortmess=a
set ic
set ruler
set mouse=a
set nu
set bg=dark
syntax on
set wrap
set expandtab "空格替换TAB
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set backspace=2
set showcmd
set fileencoding=utf-8
set autoread
set cursorline
set cursorcolumn
highlight CursorLine   cterm=NONE ctermbg=darkgrey ctermfg=white guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=darkgrey ctermfg=white guibg=NONE guifg=NONE
set noundofile
set nobackup
set noswapfile
set updatetime=400
language zh_CN.UTF-8

" vundle start
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" statusline
Plugin 'vim-airline/vim-airline'

" find with path
Plugin 'kien/ctrlp.vim'
" find & replace with pattern
Plugin 'dkprice/vim-easygrep'
" find word or letter
Plugin 'easymotion/vim-easymotion'

" git branch operation
Plugin 'tpope/vim-fugitive'
" git edit operation
Plugin 'airblade/vim-gitgutter'
" git commit map and check
Plugin 'gregsexton/gitv'

" window layout
Plugin 'vim-scripts/winmanager'
" directory map
Plugin 'scrooloose/nerdtree'

" tab key complete
Plugin 'ervandew/supertab'
" taglist
Plugin 'vim-scripts/taglist.vim'
" function and class complete
Plugin 'vim-scripts/OmniCppComplete'
" params complete
Plugin 'mbbill/code_complete'
" c stucture complete
Plugin 'vimscripts-fork/csupport'

Plugin 'Valloric/YouCompleteMe'

" syntaxt
Plugin 'w0rp/ale'

" doc
Plugin 'yianwillis/vimcdoc'

" c format
Plugin 'rhysd/vim-clang-format'
" lines format
Plugin 'junegunn/vim-easy-align'

" c debug
Plugin 'vim-scripts/Conque-GDB'
" php debug(python3)
Plugin 'joonty/vdebug'

" tag file refresh
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'vim-scripts/indexer.tar.gz'
" tag jump
Plugin 'cscope.vim'
" tag pop
" Plugin 'vim-scripts/AutoComplPop'

" comment lines
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/nerdcommenter'
Plugin 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plugin 'wincent/ferret'

Plugin 'mhinz/vim-startify'
Plugin 'bling/vim-bufferline'

Plugin 'majutsushi/tagbar'
" Plugin 'ddrscott/vim-window'
Plugin 'tomasr/molokai'
Plugin 'mattn/emmet-vim'



call vundle#end()
filetype plugin indent on
"" vundle end


let mapleader = ';'
"quickfix列表
map <silent>,cn :cn<cr>
map <silent>,cp :cp<cr>
map <silent>,cw :cw<cr>
"窗口操作
map <silent>,F <C-W>L
map <silent>,D <C-W>K
map <silent>,S <C-W>J
map <silent>,A <C-W>H
"光标移动
map <silent>,a <C-W>h
map <silent>,s <C-W>j
map <silent>,d <C-W>k
map <silent>,f <C-W>l
map <silent>,t <C-W>t
map <silent>,b <C-W>b
"命令行清行模式

"ctrlp
let g:ctrlp_by_filename         = 1
let g:ctrlp_working_path_mode   = 'ra'
let g:ctrlp_use_caching         = 1
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_max_files           = 10000
let g:ctrlp_map                 = ',z'
let g:ctrlp_max_depth           = 40
let g:ctrlp_show_hidden         = 1

" airline
let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#ycm#error_symbol = 'E:'
let g:airline#extensions#ycm#warning_symbol = 'W:'
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#left_sep = '|'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline#extensions#fugitiveline#enabled = 1
let g:airline#extensions#tagbar#flags = 'f'
let g:airline#extensions#quickfix#quickfix_text = 'Quickfix'
let g:airline#extensions#quickfix#location_text = 'Location'
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 0
let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab
map ,1 :b 1<CR>
map ,2 :b 2<CR>
map ,3 :b 3<CR>
map ,4 :b 4<CR>
map ,5 :b 5<CR>
map ,6 :b 6<CR>
map ,7 :b 7<CR>
map ,8 :b 8<CR>
map ,9 :b 9<CR>
let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c' ],
      \ [ 'x', 'y', 'z', 'error', 'warning' ]
      \ ]


"omini补全设置
let OmniCpp_NamespaceSearch     = 2 " search namespaces in the current buffer   and in included files
let OmniCpp_ShowPrototypeInAbbr = 2 " 显示函数参数列表
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html       set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css        set omnifunc=csscomplete#CompleteCSS
autocmd FileType c          set omnifunc=ccomplete#Complete
au BufRead,BufNewFile *.ts set filetype=javascript

let g:ConqueGdb_Leader='['

if has("cscope")                                 
    set csprg=cscope
    set csto=0                               
    set cst                                  
    set nocsverb                             
    if filereadable("cscope.out")            
        cs add cscope.out                     
    endif                                    
    set csverb
    set cspc=5
    set cscopequickfix=c-,d-,e-,g-,i-,s-,t-
endif   

nmap ,fs :cs find s <C-R><C-W><CR><CR> "查找C语言符号，即查找函数名、宏、枚举值等出现的地方
nmap ,fg :cs find g <C-R><C-W><CR><CR> "查找函数、宏、枚举等定义的位置，类似ctags所提供的功能
nmap ,fc :cs find c <C-R><C-W><CR><CR> "查找本函数调用的函数
nmap ,ft :cs find t <C-R><C-W><CR><CR> "查找调用本函数的函数
nmap ,fe :cs find e <C-R><C-W><CR><CR> "查找指定的字符串
nmap ,ff :cs find f <C-R><C-F><CR><CR> "查找egrep模式，相当于egrep功能，但查找速度快多了
nmap ,fi :cs find i <C-R><C-F><CR><CR> "查找并打开文件，类似vim的find功能
nmap ,fd :cs find d <C-R><C-W><CR><CR> "查找包含本文件的文件

set tags  =tags
set tags +=~/.vim/systags
set tags +=~/.vim/vimtags

let g:completekey='<C-L>'

"indexer
let g:indexer_ctagsCommandLineOptions = "--c-kinds=+p --fields=+S"

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
let g:C_MapLeader=";"


autocmd FileType php setlocal commentstring=//\ %s

let g:EasyGrepRecursive       = 1
let g:EasyGrepIgnoreCase      = 1
let g:EasyGrepHidden          = 0
let g:EasyGrepBinary          = 0
let g:EasyGrepFilesToExclude  = ".git,.idea,cscope.*,tags,vendor"
let g:EasyGrepWindow          = 0
let g:EasyGrepJumpToMatch     = 1
let g:EasyGrepInvertWholeWord = 1
let g:EasyGrepPatternType     = 'fixed'
let g:EasyGrepMode            = 2
let g:EasyGrepCommand         = 1


let g:bufferline_active_buffer_left  = '>'
let g:bufferline_active_buffer_right = ''
let g:bufferline_echo                = 0
let g:bufferline_rotate              = 1
let g:bufferline_fixed_index         = 1

nmap <silent> wm :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR>
let g:winManagerWindowLayout = 'NERDTree|TagList'
let g:winManagerWidth        = 30
let g:NERDTree_title         = "[NERDTree]"
let g:AutoOpenWinManager = 1
function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

autocmd FileType php        setlocal omnifunc=phpactor#Complete
let g:phpactorPhpBin = '/usr/local/php7/bin/php'
let g:phpactorBranch = 'master'
let g:phpactorOmniError = v:true

set viminfo='100,n~/.vim/files/info/viminfo

let g:startify_session_autoload = 1
let g:startify_lists = [
            \ { 'header': ['   MRU'],            'type': 'files' },
            \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
            \ { 'header': ['   Sessions'],       'type': 'sessions' },
            \ { 'header': [   'Commands'], 'type': 'commands'       },
            \ ]

let g:startify_commands = [
            \ {'h': 'h ref'},
            \ ]

let g:startify_change_to_vcs_root = 1
let g:startify_skiplist = [
            \ '/Users/',
            \ ]

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
colorscheme molokai
