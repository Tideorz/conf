"==================="
"1.基本设置"
"==================="
set wildmenu"按TAB键时命令行自动补齐"
set ignorecase"忽略大小写"
"set number "显示行号"
set visualbell"禁止响铃"
set ruler"显示当前光标位置"
set autoread"文件在Vim之外修改过，自动重新读入"
set autowrite"设置自动保存内容"
set autochdir"当前目录随着被编辑文件的改变而改变"
set nocp "使用vim而非vi"
map 9 $"通过9跳转到行末尾,0默认跳转到行首"
map <silent>  <C-A>  gg v G "Ctrl-A 选中所有内容"
filetype on "启动文件类型检查"
filetype plugin on "运行vim加载文件类型插件"

"==================="
"2.程序开发相关的设置"
"==================="
syn on "开启语法高亮功能"
set pastetoggle=<F11> "F11来支持切换paste和nopaste状态。"

"============"
"3. 多窗口操作"
"============"
"map wl <C-W>l 
"map wh <C-W>h 
"map wj <C-W>j
"map wk <C-W>k 

"============="
"5. 设置缩进"
"============="
set cindent "c/c++自动缩进"
set smartindent
set autoindent"参考上一行的缩进方式进行自动缩进"
filetype indent on "根据文件类型进行缩进"
set softtabstop=4 "4 character as a tab"
set shiftwidth=4
set smarttab 

"================="
"6. 当前文件内搜索选项"
"================="
set hlsearch "开启搜索结果的高亮显示"
set incsearch "边输入边搜索(实时搜索)"

"=========================="
"8.不要交换文件和备份文件，减少冲突"
"=========================="
set noswapfile
set nobackup
set nowritebackup

"============="
"9. 查找和替换文本"
"============="
nmap ;s :%s/\<<C-R>=expand("<cword>")<CR>\>/
nmap ;g :vimgrep <C-R>=expand("<cword>")<CR>

"========================"
" 10.快捷文本输入"
"========================"
map <silent>  \d a<C-R>=strftime("%Y/%m/%d %A")<CR>  "快捷输入日期"
map <silent>  \t a<C-R>=strftime("%Y/%m/%d %H:%M:%S")<CR>"快捷输入时间"
map <silent>   ,d :split ~/Dropbox/Doc/ <CR> 
iab --l  -------------------- 
iab ==l  ====================

"========================"
"11.txt文件按照wiki语法高亮"
"========================"
 autocmd BufNewFile *.txt set ft=confluencewiki 
 autocmd BufEnter *.txt set ft=confluencewiki

 "======================"
 "12.设置文件编码，解决中文乱码问题"
 "======================"
 if has("multi_byte")
    set fileencodings=utf-8,ucs-bom,cp936,cp1250,big5,euc-jp,euc-kr,latin1
 else
    echoerr "Sorry, this version of (g)vim was not compiled with multi_byte"
 endif

 "==================="
 "13. 对gvim 的设置"
 "=================="
 if has("gui_running")
     colorscheme  morning
     set guifont=Monaco:h13
     set guioptions=mr "只显示菜单和右侧滚动条"
 endif
