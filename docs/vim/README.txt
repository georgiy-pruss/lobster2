Based on:

Copyright 2019 Joshua T Corbin https://github.com/jcorbin/vim-lobster
which is under Apache-2 license, https://www.apache.org/licenses/LICENSE-2.0

TODO: can I modify and have it on github?

Just copy the dirs/files to your local or global vimfiles.
And add something like this to your _vimrc or .vimrc:

autocmd BufNewFile,BufRead *.lobster map <F5> :w<CR>:!C:\Dev\mine\lobster2\bin\lobster.exe <C-R>=expand("%:p")<CR><CR><CR>
autocmd BufNewFile,BufRead *.l2 map <F5> :w<CR>:!C:\Dev\mine\lobster2\bin\lobster.exe <C-R>=expand("%:p")<CR><CR><CR>

