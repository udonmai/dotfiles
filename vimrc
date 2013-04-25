  " Source a global configuration file if available
  "if filereadable("/etc/vim/vimrc.local")
  "  source /etc/vim/vimrc.local
  "endif

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Vundle
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
  " BundleInstall

  set nocompatible	" be iMproved
  filetype off		" required!

  set rtp+=~/.vim/bundle/vundle/ 
  call vundle#rc()

  " let Vundle manage Vundle
  " required
  Bundle 'gmarik/vundle'

  " My Bundle here:
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "语法高亮
  """""""""""""""""""""""""""""""
  Bundle 'JavaScript-syntax'
  Bundle 'jQuery'
  Bundle 'othree/html5.vim'
  Bundle 'groenewege/vim-less'
  Bundle 'Markdown'
  Bundle 'Markdown-syntax'
  "Bundle 'php.vim-html-enhanced' "一个TAB为3个空格 = =
  "Bundle 'css_color.vim' 
  "增加了rgb显示颜色和同行显示多处颜色
  Bundle 'skammer/vim-css-color'
  "Bundle 'Valloric/vim-operator-highlight'

  "above the Vim UI
  """""""""""""""""""""""""""""""
  Bundle 'winmanager'
  Bundle 'scrooloose/nerdtree'
  Bundle 'scrooloose/nerdcommenter'
  Bundle 'taglist.vim'
  Bundle 'fholgado/minibufexpl.vim'
  "Bundle 'bufexplorer.zip'
  Bundle 'Lokaltog/vim-powerline'
  "Make gvim-only colorschemes work transparently in terminal vim
  Bundle 'CSApprox' 

  "AutoComplete
  """""""""""""""""""""""""""""""
  "Bundle 'AutoComplPop'
  "Bundle 'msanders/snipmate.vim' "自带了snippets
  "Bundle 'Pydiction'
  
  Bundle 'Rip-Rip/clang_complete'
  Bundle 'Shougo/neocomplcache'
  Bundle 'Shougo/neosnippet'
  
  "Bundle 'Valloric/YouCompleteMe'
  
  " support for snipmate 
  "Bundle 'MarcWeber/vim-addon-mw-utils'
  "Bundle 'tomtom/tlib_vim'
  "Bundle 'honza/snipmate-snippets'
  "Bundle 'spf13/snipmate-snippets'
  "Bundle 'garbas/vim-snipmate'

  Bundle 'ZenCoding.vim'
  let g:user_zen_expandabbr_key='<C-u>'

  "Bundle 'word_complete.vim'
  Bundle 'closetag.vim'

  "PHP 
  "press K on a function for full PHP manual
  Bundle 'spf13/PIV'

  "Tools
  """"""""""""""""""""""""""""""
  Bundle 'udonmai/Conque-Shell'
  Bundle 'grep.vim'
  Bundle 'vim-flake8'

  filetype plugin indent on     " required!
  "
  " Brief help
  " :BundleList          - list configured bundles
  " :BundleInstall(!)    - install(update) bundles
  " :BundleSearch(!) foo - search(or refresh cache first) for foo
  " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
  "
  " see :h vundle for more details or wiki for FAQ
  " NOTE: comments after Bundle command are not allowed..

"""""""""""""""""""""""""""""""""""""Ace"""""""""""""""""""""""""""""""""""""
  " 一般设定
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "runtime! debian.vim

  "颜色
  colorscheme molokai

  "字体
  set guifontwide=Monaco:h13
  set guifont=Monaco:h13
  "set guifontwide=YaHei\ Consolas\ Hybrid\ 12 
  "set guifont=YaHei\ Consolas\ Hybrid\ 12 

  " 设定默认解码
  set enc=utf-8
  set fenc=utf-8
  set fencs=utf-8,gbk,gb2312,gb18030,cp936,usc-bom,euc-jp

  " 不要使用vi的键盘模式，而是vim自己的
  set nocompatible

  " history文件中需要记录的行数
  set history=100
 
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
  "source $HOME/.vim/syntax/php.vim

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
  set backspace=2
 
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
 
  " 输入:set list命令是应该显示些什么？
  set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$
 
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
  set noexpandtab
 
  " 不要换行
  set nowrap
 
  " 在行和段开始处使用制表符
  set smarttab


  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " 补充
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " JavaScript 语法高亮
  au FileType html,javascript let g:javascript_enable_domhtmlcss = 1
  au BufRead,BufNewFile *.js setf jquery
  


  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " CTags的设定
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " 按照名称排序
  let Tlist_Sort_Type = "name"
 
  " 在右侧显示窗口
  let Tlist_Use_Right_Window = 0
 
  " 压缩方式
  let Tlist_Compart_Format = 1
 
  " 如果只有一个buffer，kill窗口也kill掉buffer
  let Tlist_Exist_OnlyWindow = 1
 
  " 不要关闭其他文件的tags
  let Tlist_File_Fold_Auto_Close = 0
 
  " 不要显示折叠树
  let Tlist_Enable_Fold_Column = 0

  " 设置全局tags
  set tags+=/usr/include/tags

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Taglist
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  let Tlist_Auto_Highlight_Tag = 1
  let Tlist_Auto_Open = 1
  let Tlist_Auto_Update = 1
  let Tlist_Close_On_Select = 0
  let Tlist_Compact_Format = 0
  let Tlist_Display_Prototype = 0
  let Tlist_File_Fold_Auto_Close = 1
  let Tlist_GainFocus_On_ToggleOpen = 0"开启vim后焦点在taglist上
  let Tlist_Hightlight_Tag_On_BufEnter = 1
  let Tlist_Inc_Winwidth = 0
  let Tlist_Exit_OnlyWindow = 1 
  let Tlist_Max_Submenu_Items = 1
  let Tlist_Max_Tag_Length = 30
  let Tlist_Process_File_Always = 0
  let Tlist_Show_Menu = 1
  let Tlist_Show_One_File = 0
  let Tlist_Sort_Type = "order"
  let Tlist_Use_Horiz_Window = 0
  let Tlist_Use_Right_Window = 1
  let Tlist_WinWidth = 30
  "let Tlist_WinHeight = 20
  let tlist_php_settings = 'php;c:class;i:interfaces;d:constant;f:function'


  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Autocommands
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " 只在下列文件类型被侦测到的时候显示行号，普通文本文件不显示
 
  if has("autocmd") 
    autocmd FileType xml,html,css,js,c,cs,java,perl,shell,bash,cpp,python,vim,php,ruby,markdown,sh,md set number
    autocmd FileType xml,html vmap <C-o> <ESC>'<i<!--<ESC>o<ESC>'>o-->
    autocmd FileType java,c,cpp,cs vmap <C-o> <ESC>'<o
    autocmd FileType html,text,php,vim,c,java,xml,bash,shell,perl,python setlocal textwidth=100
	autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
	autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag.vim/plugin/closetag.vim
    autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \ exe " normal g`\"" |
      \ endif
  endif "has("autocmd")

  " F5编译和运行C程序，F6编译和运行C++程序
  " 请注意，下述代码在windows下使用会报错
  " 需要去掉./这两个字符
 
  " C的编译和运行
  map <F5> :call CompileRunGcc()<CR>
  func! CompileRunGcc()
  exec "w"
  exec "!gcc % -o %<"
  exec "! ./%<"
  endfunc
 
  " C++的编译和运行
  map <F6> :call CompileRunGpp()<CR>
  func! CompileRunGpp()
  exec "w"
  exec "!g++ % -o %<"
  exec "! ./%<"
  endfunc
 
  " 能够漂亮地显示.NFO文件
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

  " 设置配色
  set t_Co=256
	let g:CSApprox_attr_map={'bold':'bold','italic':'','sp':''}
  "colo elise

  " 启用WinManager
  let g:winManagerWindowLayout='FileExplorer'
  nmap wm :WMToggle<cr>

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "Cscope 
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "MiniBufExplorer
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "<C-Tab>	向前循环切换到每个buffer上,并在但前窗口打开
  "<C-S-Tab>	向后循环切换到每个buffer上,并在但前窗口打开
  let g:miniBufExplMapCTabSwitchBufs = 1

  "用<C-箭头键>切换到上下左右窗口中去
  let g:miniBufExplMapWindowNavArrows = 1

  "则可以用<C-h,j,k,l>切换到上下左右的窗口中去,就像:
  "C-w,h j k l    向"左,下,上,右"切换窗口.
  "let g:miniBufExplMapWindowNavVim = 1

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "NerdTree
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
  "设置F10为开启快捷方式
  map <F10> :NERDTreeToggle<CR>

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "NerdCommenter
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
  let mapleader="," "修改<leader>的映射键为','

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "Grep F3-工程内查找
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
  nnoremap <silent> <F3> :Grep<CR>

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "PHP Sp
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " php editing
  " remove CR at end of lines
  let PHP_removeCRwhenUnix = 1
  " Set up automatic formatting
  set formatoptions+=tcqlro
  " Set maximum text width (for wrapping)
  set textwidth=110

  " PHP syntax check
  "function! PHP_CheckSyntax()
  "setlocal makeprg=d:/apmxe/bin/php526/php.exe\ -l\ -n\ -d\ html_errors=off
  "setlocal shellpipe=>
  " Use error format for parsing PHP error output
  "setlocal errorformat=%m\ in\ %f\ on\ line\ %l
  "make %
  "endfunction
  " Perform :PHP_CheckSyntax()
  "map <F5> :call PHP_CheckSyntax()<CR>

  "配置路径
  "set runtimepath +=$HOME/.vim/phpdoc

  "配置vimrc, 使得keywordprg=”help” 注：一般情况下，keywordprg默认是!man或!man -s
  autocmd BufNewFile,Bufread *.module,*.inc,*.php set keywordprg="help"

  "autoload _vimrc
  autocmd! bufwritepost _vimrc source %

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "Python sp
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "pydiction 1.2 python auto complete
  "filetype plugin on
  "let g:pydiction_location = '~/.vim/bundle/Pydiction'
  "defalut g:pydiction_menu_height == 15	
  "let g:pydiction_menu_height = 20 

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Powerline
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  let g:Powerline_symbols = 'fancy'  " 启用 smartcase.


  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " NeoComplCache
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " 停用 AutoComplPop.
  "let g:acp_enableAtStartup = 0
  " 启用 neocomplcache.
  let g:neocomplcache_enable_at_startup = 1

  let g:neocomplcache_enable_smart_case = 1
  " 启用大写字母补全.
  let g:neocomplcache_enable_camel_case_completion = 1
  " 启用下划线补全.
  let g:neocomplcache_enable_underbar_completion = 1
  " 设定最小语法关键词长度.
  let g:neocomplcache_min_syntax_length = 2 
  let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
  	" 定义字典.
  let g:neocomplcache_dictionary_filetype_lists = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'scheme' : $HOME.'/.gosh_completions'
         \ }

  " 定义关键词.
  if !exists('g:neocomplcache_keyword_patterns')
      let g:neocomplcache_keyword_patterns = {}
  endif
  let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
  
  " 插件键映射.
  imap <C-k>     <Plug>(neocomplcache_snippets_expand)
  smap <C-k>     <Plug>(neocomplcache_snippets_expand)
  inoremap <expr><C-g>     neocomplcache#undo_completion()
  inoremap <expr><C-l>     neocomplcache#complete_common_string()
  
  " 类似于SuperTab用法 .
  "imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

  " 推荐的键映射.
  " <CR>: close popup and save indent.
  inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
  " <TAB>: completion. NO USE with snipmate
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
  " <C-h>, <BS>: close popup and delete backword char.
  inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
  inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
  inoremap <expr><C-Y>  neocomplcache#close_popup()
  inoremap <expr><C-e>  neocomplcache#cancel_popup()
  
  "inoremap <expr><Enter>  pumvisible() ? neocomplcache#close_popup()."\<C-n>" : "\<Enter>"
  "inoremap <expr><Enter>  pumvisible() ? "\<C-Y>" : "\<Enter>"
  
  " 类似于AutoComplPop用法 .
  "let g:neocomplcache_enable_auto_select = 1
  " 类似于 Shell 用法(不推荐).
  "set completeopt+=longest
  "let g:neocomplcache_enable_auto_select = 1
  "let g:neocomplcache_disable_auto_complete = 1
  "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
  "inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
  
  " 启用 omni 补全.
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  
  " 启用 heavy omni 补全.
  if !exists('g:neocomplcache_omni_patterns')
  	let g:neocomplcache_omni_patterns = {}
  endif
  "let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
  "autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
  let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
  
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " NeoSnippet
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "Plugin key-mappings.
  imap <C-k>	 <Plug>(neosnippet_expand_or_jump)
  smap <C-k>     <Plug>(neosnippet_expand_or_jump)

  "SuperTab like snippets behavior.
  imap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
  smap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
 
  "For snippet_complete marker.
  if has('conceal')
    set conceallevel=2 concealcursor=i
  endif
