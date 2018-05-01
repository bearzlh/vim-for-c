set clipboard^=unnamed
set hlsearch
set shortmess=a
set ic
set ruler
set mouse=i
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
colorscheme evening
highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
"colorscheme evening
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
" 文件查找
Plugin 'kien/ctrlp.vim'
" 状态栏
Plugin 'vim-airline/vim-airline'
" git管理
Plugin 'tpope/vim-fugitive'
" git操作
Plugin 'airblade/vim-gitgutter'
" 目录结构
Plugin 'scrooloose/nerdtree'
" tab键
Plugin 'ervandew/supertab'
" taglist
Plugin 'vim-scripts/taglist.vim'
" 函数与类的补全插件
Plugin 'vim-scripts/OmniCppComplete'
" 参数补全
Plugin 'mbbill/code_complete'
" 语法检查
Plugin 'vim-syntastic/syntastic'
" 中文文档
Plugin 'yianwillis/vimcdoc'
Plugin 'rhysd/vim-clang-format'
Plugin 'vim-scripts/Conque-GDB'
"Plugin 'SpaceVim/cscope.vim'


Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'vim-scripts/indexer.tar.gz'


Plugin 'cscope.vim'
Plugin 'vim-scripts/AutoComplPop'

Plugin 'junegunn/vim-easy-align'

Plugin 'vimscripts-fork/csupport'
Plugin 'gregsexton/gitv'

Plugin 'tpope/vim-commentary'
Plugin 'joonty/vim-phpqa'

call vundle#end()
filetype plugin indent on
"" vundle end


let mapleader = ';'
"quickfix列表
map <silent><Leader>cn :cn<cr>
map <silent><Leader>cp :cp<cr>
map <silent><Leader>cw :cw<cr>
"标签操作
map <silent><Leader>q :qall!<cr>
map <silent><Leader>c :q!<cr>
map <silent><Leader>w :wall<cr>
"窗口操作
map <silent><Leader>h :vertical resize -5<cr>
map <silent><Leader>j :resize -5<cr>
map <silent><Leader>k :resize +5<cr>
map <silent><Leader>l :vertical resize +5<cr>
map <silent><Leader>F <C-W>L
map <silent><Leader>D <C-W>K
map <silent><Leader>S <C-W>J
map <silent><Leader>A <C-W>H
"光标移动
map <silent><Leader>a <C-W>h
map <silent><Leader>s <C-W>j
map <silent><Leader>d <C-W>k
map <silent><Leader>f <C-W>l
map <silent><Leader>t <C-W>t
map <silent><Leader>b <C-W>b
"命令行清行模式
map <F2> :NERDTreeToggle<CR>
map <C-D> <Esc>yyp<CR>
map <C-U> <Esc>d^a
map <C-K> <Esc>d$i


"ctrlp
set runtimepath^=~/.vim/bundle/ctrlp
let g:ctrlp_by_filename = 1
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_max_files = 10000
let g:ctrlp_map = ';z'
let g:ctrlp_max_depth = 40
let g:ctrlp_show_hidden = 1

" airline
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#bufferline#enabled = 0

"nerdtree
map <F2> :NERDTreeToggle<CR>

"taglist
map <F3> :TlistToggle<CR>
let Tlist_Auto_Open=0 " Let the tag list open automatically  
let Tlist_Auto_Update=1 " Update the tag list automatically  
let Tlist_Compact_Format=1 " Hide help menu  
let Tlist_Ctags_Cmd='ctags' " Location of ctags  
let Tlist_Enable_Fold_Column=0 "do show folding tree  
let Tlist_Process_File_Always=1 " Always process the source file  
let Tlist_Show_One_File=1 " Only show the tag list of current file  
let Tlist_Exist_OnlyWindow=1 " If you are the last, kill yourself  
let Tlist_File_Fold_Auto_Close=0 " Fold closed other trees  
let Tlist_Sort_Type="name" " Order by name  
let Tlist_WinWidth=30 " Set the window 40 cols wide.  
let Tlist_Close_On_Select=1 " Close the list when a item is selected  
let Tlist_Use_SingleClick=1 "Go To Target By SingleClick  
let Tlist_Use_Right_Window=1 "在右侧显示

"omini补全设置
let OmniCpp_NamespaceSearch = 2     " search namespaces in the current buffer   and in included files
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete


map <F6> :call RunGdb()<CR>  
func! RunGdb()    
        exec ":ConqueGdbVSplit php -d ."
endfunc
let g:ConqueGdb_Leader='.'

"
autocmd FileType c ClangFormatAutoEnable

"supertab
let g:SuperTabDefaultCompletionType = "context"

set tags=tags
if has("cscope")                                 
    set csprg=/usr/local/bin/cscope
    set csto=0                               
    set cst                                  
    set nocsverb                             
    if filereadable("cscope.out")            
        cs add cscope.out                     
    endif                                    
    set csverb
    set cspc=5
    set cscopequickfix=c-,d-,e-,g-,i-,s-,t-
    "set cscopequickfix=s-,g-,d-,c-,t-,e-,f-
endif   

nmap ,s :cs find s <C-R><C-W><CR><CR> "查找C语言符号，即查找函数名、宏、枚举值等出现的地方
nmap ,g :cs find g <C-R><C-W><CR><CR> "查找函数、宏、枚举等定义的位置，类似ctags所提供的功能
nmap ,c :cs find c <C-R><C-W><CR><CR> "查找本函数调用的函数
nmap ,t :cs find t <C-R><C-W><CR><CR> "查找调用本函数的函数
nmap ,e :cs find e <C-R><C-W><CR><CR> "查找指定的字符串
nmap ,f :cs find f <C-R><C-W><CR><CR> "查找egrep模式，相当于egrep功能，但查找速度快多了
nmap ,i :cs find i ^<C-R><C-F><CR>$<CR> "查找并打开文件，类似vim的find功能
nmap ,d :cs find d <C-R><C-W><CR><CR> "查找包含本文件的文件

"nmap ,r :!/data/src/pattern/install_module.sh<CR>
nmap ,r :!cd /data/src/php/php-5.4.45/ext/test_file/ && phpize && ./configure && make && make install<CR>
set tags=tags
set tags+=/data/src/php/php-5.4.45/tags
set tags+=~/.vim/systags
let g:completekey='<C-L>'

"indexer
let g:indexer_ctagsCommandLineOptions="--c-kinds=+p --fields=+S"

let g:syntastic_c_include_dirs=["/data/software/php/5.4.45_nts/include/php/main/","/data/software/php/5.4.45_nts/include/php/","/data/software/php/5.4.45_nts/include/php/Zend/","/data/software/php/5.4.45_nts/include/php/TSRM/","/data/software/php/5.4.45_nts/include/php/ext/","/data/software/php/5.4.45_nts/include/php/include/","/data/software/php/5.4.45_nts/include/php/sapi/","/data/src/code-instrument-php/SmartAgent/AgentCore/","/data/src/code-instrument-php/SmartAgent/AgentCore/include/"]

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
let g:C_MapLeader="'"


autocmd FileType php setlocal commentstring=//\ %s


let g:phpqa_php_cmd='/usr/local/php5.6/bin/php'
" https://github.com/squizlabs/PHP_CodeSniffer
let g:phpqa_codesniffer_cmd='/data/phpcs/bin/phpcs'
let g:phpqa_codesniffer_args = '--standard=Zend'
" http://pear.php.net/package/PHP_CodeSniffer/
let g:phpqa_messdetector_cmd='/data/phpmd'
