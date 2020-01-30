syntax on
"set nowrap

"Enable line numbers
set number

"Enable indentation keeping
set autoindent

"Enable X11 clipboard
set clipboard=unnamedplus

"Show status line w/ file number
set ls=2

"Show marker at column 81
autocmd FileType c,cpp,h set colorcolumn=81

"Four space tabs 
set tabstop=4
set shiftwidth=4
"set softtabstop=4

"Tabs use space characters
set expandtab
"...but makefiles need tab
autocmd FileType mk,make set noexpandtab

"Flag trailing whitespace 
au BufRead *.c,*.cpp,*.h,*.java,*.mk,*.v,*.vh,*.sv match Error /\s\+$/
"...and clean it automagically on write
autocmd FileType c,cpp,h,java,verilog,systemverilog autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

"Set alt tab width for certain filetypes
autocmd FileType markdown,yaml set tabstop=2 | set shiftwidth=2

"LOCAL CONFIGURATION BELOW
