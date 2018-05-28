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
Plugin 'w0rp/ale'


" 中文文档
Plugin 'yianwillis/vimcdoc'
Plugin 'rhysd/vim-clang-format'
Plugin 'vim-scripts/Conque-GDB'


Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'vim-scripts/indexer.tar.gz'


Plugin 'cscope.vim'
Plugin 'vim-scripts/AutoComplPop'

Plugin 'junegunn/vim-easy-align'

Plugin 'vimscripts-fork/csupport'
Plugin 'gregsexton/gitv'

Plugin 'tpope/vim-commentary'
Plugin 'joonty/vdebug'

Plugin 'dkprice/vim-easygrep'
Plugin 'easymotion/vim-easymotion'
Plugin 'bling/vim-bufferline'
Plugin 'vim-scripts/winmanager'
Plugin 'bufexplorer.zip'

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
map <F2> :NERDTreeToggle<CR>


"ctrlp
set runtimepath^=~/.vim/bundle/ctrlp
let g:ctrlp_by_filename = 1
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_max_files = 10000
let g:ctrlp_map = ',z'
let g:ctrlp_max_depth = 40
let g:ctrlp_show_hidden = 1

" airline
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#bufferline#enabled = 0

"nerdtree
"map <F2> :NERDTreeToggle<CR>

"taglist
"map <F3> :TlistToggle<CR>
"let Tlist_Auto_Open=0 " Let the tag list open automatically  
"let Tlist_Auto_Update=1 " Update the tag list automatically  
"let Tlist_Compact_Format=1 " Hide help menu  
"let Tlist_Ctags_Cmd='ctags' " Location of ctags  
"let Tlist_Enable_Fold_Column=0 "do show folding tree  
"let Tlist_Process_File_Always=1 " Always process the source file  
"let Tlist_Show_One_File=1 " Only show the tag list of current file  
"let Tlist_Exist_OnlyWindow=1 " If you are the last, kill yourself  
"let Tlist_File_Fold_Auto_Close=0 " Fold closed other trees  
"let Tlist_Sort_Type="name" " Order by name  
"let Tlist_WinWidth=30 " Set the window 40 cols wide.  
"let Tlist_Close_On_Select=1 " Close the list when a item is selected  
"let Tlist_Use_SingleClick=1 "Go To Target By SingleClick  
"let Tlist_Use_Right_Window=1 "在右侧显示

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
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

set tags=tags
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

set tags=tags
set tags+=~/.vim/systags
set tags+=~/.vim/vimtags
let g:completekey='<C-L>'

"indexer
let g:indexer_ctagsCommandLineOptions="--c-kinds=+p --fields=+S"

let g:syntastic_c_include_dirs=["/data/software/php/5.4.45_nts/include/php/main/","/data/software/php/5.4.45_nts/include/php/","/data/software/php/5.4.45_nts/include/php/Zend/","/data/software/php/5.4.45_nts/include/php/TSRM/","/data/software/php/5.4.45_nts/include/php/ext/","/data/software/php/5.4.45_nts/include/php/include/","/data/software/php/5.4.45_nts/include/php/sapi/","/data/src/code-instrument-php/SmartAgent/AgentCore/","/data/src/code-instrument-php/SmartAgent/AgentCore/include/"]

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
let g:C_MapLeader=";"


autocmd FileType php setlocal commentstring=//\ %s


let g:EasyGrepRecursive=1
let g:EasyGrepIgnoreCase=1
let g:EasyGrepHidden=0
let g:EasyGrepBinary=0
let g:EasyGrepFilesToExclude=".git,.idea,cscope.*,tags,vendor"
let g:EasyGrepWindow=0
let g:EasyGrepJumpToMatch=1
let g:EasyGrepInvertWholeWord=1
let g:EasyGrepPatternType='fixed'
let g:EasyGrepMode=2
let g:EasyGrepCommand=1


let g:bufferline_active_buffer_left = '>'
let g:bufferline_active_buffer_right = ''
let g:bufferline_echo = 0
let g:bufferline_rotate = 1
let g:bufferline_fixed_index = 1


let g:winManagerWindowLayout='NERDTree,TagList'
let g:winManagerWidth = 30
let g:NERDTree_title="[NERDTree]"  
function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction
