
""""" """ " Love your Life, please " """ """""
        """"""""" """ " """ """""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                  Vundle                   """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible	" be iMproved
filetype off		" required!

set rtp+=~/.vim/bundle/Vundle.vim/ 
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Bundle here:
""""""""""""""
" 语法高亮
"""""""""""""""""""""""""""""""
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'

Plugin 'JavaScript-syntax'
Plugin 'jQuery'
Plugin 'othree/html5.vim'
Plugin 'groenewege/vim-less'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'Markdown'
Plugin 'Markdown-syntax'
"Plugin 'php.vim-html-enhanced' "一个TAB为3个空格 = =
Plugin 'skammer/vim-css-color' "增加了rgb显示颜色和同行显示多处颜色
Plugin 'Valloric/vim-operator-highlight'

" User Interface
"""""""""""""""""""""""""""""""
"Plugin 'winmanager'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
"Plugin 'taglist.vim'
Plugin 'majutsushi/tagbar'
Plugin 'fholgado/minibufexpl.vim'
"Plugin 'bufexplorer.zip'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'bling/vim-airline'
Plugin 'CSApprox' "Make gvim-only colorschemes work transparently in terminal vim

" AutoComplete
"""""""""""""""""""""""""""""""
"Plugin 'AutoComplPop'
"Plugin 'msanders/snipmate.vim' "自带了snippets
"Plugin 'Pydiction'

Plugin 'Rip-Rip/clang_complete'
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'davidhalter/jedi-vim'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
"Plugin 'Valloric/YouCompleteMe'

" support for snipmate 
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'honza/snipmate-snippets'
"Plugin 'spf13/snipmate-snippets'
"Plugin 'garbas/vim-snipmate'

Plugin 'ZenCoding.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-surround'
"Plugin 'Raimondi/delimitMate'
Plugin 'Townk/vim-autoclose'
Plugin 'matchit.zip'
"Plugin 'spf13/PIV' "press K on a function for full PHP manual
Plugin 'shawncplus/phpcomplete.vim'

" Tools
""""""""""""""""""""""""""""""
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/vimproc.vim' "make needed
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/neomru.vim'
Plugin 'Shougo/unite-outline'
Plugin 'udonmai/Conque-Shell'
Plugin 'grep.vim'
Plugin 'YankRing.vim'
Plugin 'sjl/gundo.vim'
Plugin 'derekwyatt/vim-fswitch'
"Plugin 'vim-flake8'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'godlygeek/tabular'
Plugin 'terryma/vim-expand-region'
Plugin 'terryma/vim-multiple-cursors'

" shell
""""""""""""""""""""""""""""""
Plugin 'edkolev/promptline.vim'


call vundle#end()
filetype plugin indent on     " required!

" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin command are not allowed..


""""""""""""""""""""""""""""""Ace""""""""""""""""""""""""""""""""""""
" 一般设定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"runtime! debian.vim

" 纵向线
augroup cch
	autocmd! cch
	autocmd WinLeave * set nocursorline
	autocmd WinLeave * set nocursorcolumn
	autocmd WinEnter,BufRead * set cursorline
	autocmd WinEnter,BufRead * set cursorcolumn
augroup END

" 设置配色和CSApprox
set t_Co=256
let g:CSApprox_attr_map={'bold':'bold','italic':'','sp':''}
"colo elise

syntax enable
"let g:solarized_termcolors=256
"colorscheme solarized
"set background=dark

colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

" 字体
set guifontwide=Consolas:h14
set guifont=Consolas:h14
"set guifontwide=Monaco:h13
"set guifont=Monaco:h13
"set guifontwide=YaHei\ Consolas\ Hybrid\ 12 
"set guifont=YaHei\ Consolas\ Hybrid\ 12 

" 设定默认解码
set enc=utf-8
set fenc=utf-8
set fencs=utf-8,gbk,gb2312,gb18030,cp936,usc-bom,euc-jp

" 不要使用vi的键盘模式，而是vim自己的
set nocompatible

" history文件中需要记录的行数
set history=600

" 在处理未保存或只读文件的时候，弹出确认
set confirm

" 与windows共享剪贴板
set clipboard+=unnamed

" 侦测文件类型
filetype on

" 载入文件类型插件
filetype plugin on

" 为特定文件类型载入相关缩进文件
filetype indent on

" 保存全局变量
set viminfo+=!

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

" 语法高亮
syntax on

" 显示行号(下面有自动侦测文件类型显示)
"set nu

" 高亮字符，让其不受100列限制
:highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
:match OverLength '\%101v.*'

" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
"highlight StatusLineNC guifg=Gray guibg=White

" 默认窗口分割方向
"set splitbelow
set splitright

" 显示匹配
set showmatch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 不要备份文件（根据自己需要取舍）
set nobackup

" 不要生成swap文件，当buffer被丢弃的时候隐藏它
setlocal noswapfile
set bufhidden=hide

" 字符间插入的像素行数目
set linespace=0

" 增强模式中的命令行自动完成操作
set wildmenu

" 在状态行上显示光标所在位置的行号和列号
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2

" 使回格键（backspace）正常处理indent, eol, start等
set backspace=indent,eol,start
"set backspace=2

" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" 启动的时候不显示那个援助索马里儿童的提示
"set shortmess=atI

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

" 不让vim发出讨厌的滴滴声
set noerrorbells

" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索和匹配
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 高亮显示匹配的括号
set showmatch

" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1

" 在搜索的时候忽略大小写
set ignorecase

" 不要高亮被搜索的句子（phrases）
" set nohlsearch

" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch

" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

" 不要闪烁
set novisualbell

" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" 总是显示状态行
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动格式化
set formatoptions=tcrqn

" 继承前一行的缩进方式，特别适用于多行注释
set autoindent

" 为C程序提供自动缩进
set smartindent

" 使用C样式的缩进
set cindent

" 制表符为4
set tabstop=4

" 统一缩进为4
set softtabstop=4
set shiftwidth=4

" 不要用空格代替制表符
set expandtab

" 不要换行
set nowrap

" 在行和段开始处使用制表符
set smarttab

" 显示Tab和结尾
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
"set listchars=tab:▸\ ,eol:¬
"set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$

" vim自身设置，不显示预览窗口
set completeopt=menuone 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd") 
	autocmd FileType xml,html,css,js,javascript,c,cs,java,perl,shell,bash,cpp,python,vim,php,ruby,markdown,sh,md,tex set number
	autocmd Filetype python setlocal textwidth=79 expandtab tabstop=4 shiftwidth=4
	autocmd Filetype php setlocal expandtab tabstop=4 shiftwidth=4
	autocmd FileType haskell,puppet,ruby,javascript,html,yaml,sass,scss,css,jinja,vim setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
	autocmd FileType text setlocal textwidth=80
	autocmd FileType java,c,cpp,cs vmap <C-o> <ESC>'<o
	autocmd FileType xml,html vmap <C-o> <ESC>'<i<!--<ESC>o<ESC>'>o-->
	"autocmd FileType html,text,php,vim,c,java,xml,bash,shell,perl setlocal textwidth=100
	"autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
	"autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag.vim/plugin/closetag.vim

	au FileType html,javascript let g:javascript_enable_domhtmlcss = 1
	au BufRead,BufNewFile *.json setfiletype json syntax=javascript
	au BufRead,BufNewFile *.js setfiletype jquery
	au BufRead,BufNewFile *.md setfiletype markdown
	au BufRead,BufNewFile *.less setfiletype css
	au BufRead,BufNewFile *.styl setfiletype css
	
	autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
		\ exe " normal g`\"" |
	\ endif
endif "has("autocmd")"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 键映射
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"修改<leader>的映射键为','
let mapleader=","

inoremap jj <ESC>
noremap <Leader>q :qa<cr>

" 分屏间移动
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" 命令行模式增强，ctrl - a到行首， -e 到行尾
"cnoremap <C-a> <Home>
"cnoremap <C-e> <End>
noremap <C-a> <esc>^
noremap! <C-a> <esc>^i
noremap <C-e> <End>
inoremap <C-e> <esc>$a "not work

" Reselect visual block after indent/outdent.
" 调整缩进后自动选中，方便再次操作
vnoremap < <gv
vnoremap > >gv

" select block
nnoremap <Leader>v V}

" remap U to <C-r> for easier redo
nnoremap U <C-r>

" ,m -> fix dos ^M
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

nnoremap ; :

" 剪切板
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>"


" F5编译和运行C程序，F6编译和运行C++程序
" 请注意，下述代码在windows下使用会报错
" 需要去掉./这两个字符

" C的编译和运行
"""""""""""""""""""""""""""""""
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
exec "w"
exec "!gcc % -o %<"
exec "! ./%<"
endfunc

" C++的编译和运行
"""""""""""""""""""""""""""""""
map <F6> :call CompileRunGpp()<CR>
func! CompileRunGpp()
exec "w"
exec "!g++ % -o %<"
exec "! ./%<"
endfunc

"map <F8> :w<CR>:call CompileRun()<CR> 
"map <F8><F8> :w<CR>:call Debug()<CR>

func CompileRun() 
  exec “w”
  if &filetype == ‘c’  
    exec “!gcc % -g -o %<” 
    exec “!.\/%<” 
  elseif &filetype ==’cpp’ 
    exec “!g++ % -g -o %<” 
    exec “!.\/%<” 
  elseif &filetype == ‘python’ 
    exec “!python %” 
  endif 
endfunc

func Debug()
  exec “w”
  if &filetype == ‘c’
    exec “!rm %<”
    exec “!gcc % -g -o %<”
    exec “!gdb %<”
  elseif &filetype == ‘cpp’
    exec “!rm %<”
    exec “!g++ % -g -o %<”
    exec “!gdb %<”
    exec “!rm %<.class”
  elseif &filetype == ‘python’
    exec “!pdb %” 
  endif
endfunc

" 能够漂亮地显示.NFO文件
"""""""""""""""""""""""""""""""
"set encoding=utf-8
function! SetFileEncodings(encodings)
	let b:myfileencodingsbak=&fileencodings
	let &fileencodings=a:encodings
endfunction
function! RestoreFileEncodings()
	let &fileencodings=b:myfileencodingsbak
	unlet b:myfileencodingsbak
endfunction

au BufReadPre *.nfo call SetFileEncodings('cp437')|set ambiwidth=single 
au BufReadPost *.nfo call RestoreFileEncodings()

" 高亮显示普通txt文件（需要txt.vim脚本）
au BufRead,BufNewFile *  setfiletype txt

" 用空格键来开关折叠
set foldenable
set foldmethod=manual
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

" minibufexpl插件的一般设置
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" 启用WinManager
"let g:winManagerWindowLayout='FileExplorer'
"nmap wm :WMToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                  PHP Sp                   """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
" php editing
" remove CR at end of lines
let PHP_removeCRwhenUnix = 1
" Set up automatic formatting
set formatoptions+=tcqlro
"配置vimrc, 使得keywordprg=”help” 注：一般情况下，keywordprg默认是!man或!man -s
autocmd BufNewFile,Bufread *.module,*.inc,*.php set keywordprg="help"
"php 语法高亮貌似有点问题"
autocmd FileType php syntax on

"autoload _vimrc
"autocmd! bufwritepost _vimrc source %

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               Python sp                   """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
"pydiction 1.2 python auto complete
"filetype plugin on
"let g:pydiction_location = '~/.vim/bundle/Pydiction'
"defalut g:pydiction_menu_height == 15	
"let g:pydiction_menu_height = 20 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"              indent guides                """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indent_guides_enable_on_vim_startup = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                 TagBar                    """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F10> :TagbarToggle<CR>   "设置快捷键
let g:tarbar_ctags_bin = '/usr/local/bin/ctags'
let g:tagbar_width = 40       "设置宽度，默认为40
"autocmd VimEnter * nested :call tagbar#autoopen(1)    "打开vim时自动打开tagbar
"let g:tagbar_left = 1         "在左侧
let g:tagbar_right = 1 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                  Cscope                   """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
"设定是否使用 quickfix 窗口来显示 cscope 结果
set cscopequickfix=s-,c-,d-,i-,t-,e- 

"快捷键
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"             MiniBufExplorer               """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
"<C-Tab>	向前循环切换到每个buffer上,并在但前窗口打开
"<C-S-Tab>	向后循环切换到每个buffer上,并在但前窗口打开
let g:miniBufExplMapCTabSwitchBufs = 1

"用<C-箭头键>切换到上下左右窗口中去
let g:miniBufExplMapWindowNavArrows = 1

"则可以用<C-h,j,k,l>切换到上下左右的窗口中去,就像:
"C-w,h j k l    向"左,下,上,右"切换窗口.
"let g:miniBufExplMapWindowNavVim = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                 NerdTree                  """""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""" 
"设置F9为开启快捷方式
map <F9> :NERDTreeToggle<CR>
"关闭文件后只剩NerdTree的时候也一并关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               NerdCommenter               """""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""" 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                  Grep                     """""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""" 
nnoremap <silent> <C-G> :Grep<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                Powerline                  """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:Powerline_symbols = 'fancy'  " 启用 smartcase.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                 Airline                   """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1

let g:airline_theme = 'solarized'

let g:airline#extensions#default#layout = [
	\ [ 'a', 'b', 'c' ],
	\ [ 'x', 'y', 'z', 'warning', 't' ]
	\ ]
let g:airline_section_t = '%{strftime("%a %k:%M")}'

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

" old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                Promptline                 """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:promptline_theme = 'airline_visual'
let g:promptline_preset = 'full'

let g:promptline_powerline_symbols = 0
let g:promptline_symbols = {
  \ 'left'       : '⮀',
  \ 'left_alt'   : '&',
  \ 'dir_sep'    : ' ⮁ ',
  \ 'truncation' : '···',
  \ 'vcs_branch' : '⭠',
  \ 'space'      : ' '}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               NeoComplete                 """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
" 停用 AutoComplPop.
let g:acp_enableAtStartup = 0
" 启用 neocomplete.
let g:neocomplete#enable_at_startup = 1
"
let g:neocomplete#enable_smart_case = 1
" 设定最小语法关键词长度.
let g:neocomplete#sources#syntax#min_keyword_length = 3
"
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" 定义字典.
let g:neocomplete#dictionary_filetype_lists = {
	\ 'default' : '',
	\ 'vimshell' : $HOME.'/.vimshell_hist',
	\ 'scheme' : $HOME.'/.gosh_completions',
	\ 'php' : $HOME.'/.vim/dict/php.dic',
	\ }
"	\ 'css' : $HOME.'.vim/dict/css.dic',
"	\ 'javascript' : $HOME.'.vim/dict/javascript.dic'

"include_complete be abled "ctags
let g:neocomplete#ctags_command = '/usr/local/bin/ctags'

" 定义关键词.
if !exists('g:neocomplete#keyword_patterns')
	let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" 插件键映射.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" 类似于SuperTab用法 .
"imap <expr><TAB> neocomplete#sources#snippets_complete#expandable() ? "\<Plug>(neocomplete#snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" 推荐的键映射.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
	return neocomplete#close_popup() . "\<CR>"
	" For no inserting <CR> key.
	"return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction

" <TAB>: completion. NO USE with snipmate
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-Y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()

"inoremap <expr><Enter>  pumvisible() ? neocomplete#close_popup()."\<C-n>" : "\<Enter>"
"inoremap <expr><Enter>  pumvisible() ? "\<C-Y>" : "\<Enter>"

" 类似于AutoComplPop用法 .
"let g:neocomplete#enable_auto_select = 1
" 类似于 Shell 用法(不推荐).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplete#smart_close_popup() . "\<CR>"

" 启用 omni 补全.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP "vim默认
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

" 启用 heavy omni 补全.
if !exists('g:neocomplete#sources#omni#functions')
	let g:neocomplete#sources#omni#functions = {}
endif
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif


"let g:neocomplete#omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"let g:neocomplete#omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'

" 兼容clang_complete
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#force_omni_input_patterns.c =
  \ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.cpp =
  \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
let g:neocomplete#force_omni_input_patterns.objc =
  \ '\[\h\w*\s\h\?\|\h\w*\%(\.\|->\)'
let g:neocomplete#force_omni_input_patterns.objcpp =
  \ '\[\h\w*\s\h\?\|\h\w*\%(\.\|->\)\|\h\w*::\w*'
let g:clang_complete_auto = 0
let g:clang_auto_select = 0
"let g:clang_use_library = 1

" 兼容jedi
autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:neocomplete#force_omni_input_patterns.python =
\ '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'

" rank sourch list "deleted
"let g:neocomplete#source_rank = {
"	\ 'buffer_complete'     : 6,
"	\ 'dictionary_complete' : 5,
"	\ 'syntax_complete'     : 4,
"	\ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                NeoSnippet                """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin key-mappings.
imap <C-k>	<Plug>(neosnippet_expand_or_jump)
smap <C-k>	<Plug>(neosnippet_expand_or_jump)
xmap <C-k>	<Plug>(neosnippet_expand_target)

"SuperTab like snippets behavior.
"imap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

"For snippet_complete marker.
if has('conceal')
	set conceallevel=2 concealcursor=i
endif

" Tell Neosnippet about the other snippets
" let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                LaTex Box                 """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neocomplete#force_omni_input_patterns.tex =
  \ '\v\\\a*(ref|cite)\a*([^]]*\])?\{(|[^}]*,)'

" ll for compilation | lv for view
map <silent> <Leader>ls :silent
	\ !/Applications/Skim.app/Contents/SharedSupport/displayline
	\ <C-R>=line('.')<CR> "<C-R>=LatexBox_GetOutputFile()<CR>"
	\ "%:p" <CR>

let g:LatexBox_viewer = 'open -a /Applications/Skim.app'
"let g:LatexBox_viewer = 'Skim'
let g:LatexBox_latexmk_options = "-pdflatex='pdflatex -synctex=1 \%O \%S'"
let g:LatexBox_latexmk_async = 1
let g:LatexBox_latexmk_preview_continuously = 1
let g:LatexBox_quickfix = 2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                UltiSnipts                """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-k>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"              Clang_Complete              """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:clang_complete_copen = 1
let g:clang_periodic_quickfix = 1
let g:clang_snippets = 1
let g:clang_close_preview = 1
let g:clang_use_library = 1
let g:clang_complete_auto = 0
let g:clang_auto_select = 0
"let g:clang_user_options = '|| exit 0'
let g:clang_library_path = "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                 Unite                    """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])

nnoremap <Leader>f :Unite -start-insert buffer file_rec/async<CR>
nnoremap <Leader>o :Unite -start-insert -auto-preview outline<CR>
nnoremap <Leader>g :Unite -start-insert grep:.<CR>
nnoremap <Leader>m :Unite -start-insert buffer tab file_mru directory_mru<CR>

" Vimproc required
"nnoremap <Leader>f :Unite -no-split -start-insert file_rec/async<cr>
"nnoremap <leader>ft :Unite file_rec/async -default-action=tabopen
"nnoremap <leader>fs :Unite file_rec/async -default-action=split
"nnoremap <leader>fv :Unite file_rec/async -default-action=vsplit
"nnoremap <leader>fc :Unite file_rec/async

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               Syntastic                  """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = '✗✗'
let g:syntastic_style_error_symbol = '✠✠'
let g:syntastic_warning_symbol = '∆∆'
let g:syntastic_style_warning_symbol = '≈≈'
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_python_checkers=['flake8']
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
"phpcs，tab 4个空格，编码参考使用CodeIgniter风格
let g:syntastic_phpcs_conf = "--tab-width=4 --standard=CodeIgniter"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                  Gundo                   """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
" f8 toggles the Gundo plugin window
nnoremap <Leader>r :GundoToggle<CR>
let g:gundo_width = 30
let g:gundo_close_on_revert = 1
let g:gundo_preview_bottom = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                ZenCoding                 """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_zen_expandabbr_key='<C-u>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               EasyMotion                 """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
"兼容大部分配色方案
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                AutoClose                 """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:AutoClosePairs_add = ""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                YankRing                  """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:yankring_history_dir = '~/.vim/yankring'
" this is so that single char deletes don't end up in the yankring
let g:yankring_min_element_length = 2
let g:yankring_window_height = 14
nnoremap <leader>b :YRShow<CR>
"
"this makes Y yank from the cursor to the end of the line, which makes more
"sense than the default of yanking the whole current line (we can use yy for
"that)
function! YRRunAfterMaps()
  nnoremap Y   :<C-U>YRYankCount 'y$'<CR>
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                 jedi                     """"""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:jedi#popup_on_dot = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               EasyTags                   """"""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
" 给每个目录单独建tag文件
set tags=./.tags;,~/.vim/tags
autocmd FileType php :set tags+=~/.vim/tags/php
let g:easytags_cmd = '/usr/local/bin/ctags'
let g:easytags_file = '~/.vim/tags/tags'
"let g:easytags_dynamic_files = 1

nnoremap <leader>ut :UpdateTags!<CR>
nnoremap <leader>ht :HighlightTags<CR>
nnoremap <silent><leader>hh :let b:easytags_auto_highlight = 1<CR>
nnoremap <silent><leader>nh :let b:easytags_auto_highlight = 0<CR>

let g:easytags_resolve_links = 1
" 分语言并汇总
"let g:easytags_by_filetype = '~/.vim/tags'
" 递归遍历目录 - vim会停滞不动
"let g:easytags_autorecurse = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               FSwitch                    """"""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
" A "companion" file is a .cpp file to an .h file and vice versa

" Opens the companion file in the current window
nnoremap <Leader>sh :FSHere<cr>
" Opens the companion file in the window to the left (window needs to exist)
" This is actually a duplicate of the :FSLeft command which for some reason
" doesn't work.
nnoremap <Leader>sl :call FSwitch('%', 'wincmd l')<cr>
" Same as above, only opens it in window to the right
nnoremap <Leader>sr :call FSwitch('%', 'wincmd r')<cr>
" Creates a new window on the left and opens the companion file in it
nnoremap <Leader>sv :FSSplitLeft<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               Tabular                    """"""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

" instant align
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
function! s:align()
	let p = '^\s*|\s.*\s|\s*$'
	if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
		let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
		let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
		Tabularize/|/l1
		normal! 0
		call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
	endif
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"           Vim Multiple Cursors           """"""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
" default key mapping is <C-n> to start
let g:multi_cursor_use_default_mapping=1

"You can then map the 'next', 'previous', 'skip', and 'exit' keys like the following:
" Default mapping
" let g:multi_cursor_next_key='<C-n>'
" let g:multi_cursor_prev_key='<C-p>'
" let g:multi_cursor_skip_key='<C-x>'
" let g:multi_cursor_quit_key='<Esc>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"            Vim Expand Region             """"""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
" Press + to expand the visual selection and _ to shrink it.
"map K <Plug>(expand_region_expand)
"map J <Plug>(expand_region_shrink)
