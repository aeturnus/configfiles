syntax on
"set nowrap

"Enable line numbers
set number
"Enable indentation keeping
set autoindent
"enable X11 clipboard
set clipboard=unnamedplus
"show status line w/ file number
set ls=2
"show marker at column 81
autocmd FileType c,cpp,h set colorcolumn=81

"[REDACTED] coding standards say all indentation must be done as four space characters
set tabstop=4
set shiftwidth=4
"set softtabstop=4
set expandtab
"but makefiles need tab
autocmd FileType mk,make set noexpandtab

"Delete trailing whitespace
autocmd FileType c,cpp,h,java,verilog,systemverilog autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
"Flag trailing whitespace
au BufRead *.c,*.cpp,*.h,*.java,*.mk,*.v,*.sv match Error /\s\+$/
