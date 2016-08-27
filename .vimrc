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

"[REDACTED] coding standards say all indentation must be done as four space characters
set tabstop=4
set shiftwidth=4
"set softtabstop=4
set expandtab
"but makefiles need tab
autocmd FileType mk,make set noexpandtab
"Mobile group coding standards say that trailing whitespace is verbotten. Flag it and clean it automagically on exit.
autocmd FileType c,cpp,h,java autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
au BufRead *.c,*.cpp,*.h,*.java,*.mk match Error /\s\+$/
