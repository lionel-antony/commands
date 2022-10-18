# open 2 files
vi -u NONE -O file1 file2

# diff the above 2 files
:windo difft

# display location of vimrc
:echo $MYVIMRC

# display current setting value
:set tabstop?

# save a file copy 
:saveas filename

" change word 
cw 
cW 

" change 3 words 
c3e 

" change before 
cb 

" c4l
c4l 

" clear a line 
cc 

" delete a line 
dd 

" undo 
u 

" redo 
ctrl + r 

" ------ buffers ------

"list buffers 
:ls 

" select a file in a buffers
:b 1
:b cat 
:b PTUHM 

" delete a buffers
:bd 

" ---------------------

" --- split -----------
" split a window 
:split filename
:sp filename 

:vsplit filename 
:vs filename 

" move current window to leftmost
Ctrl+w, H 
" move current window to rightmost
Ctrl+w, L 

" move current window to top
Ctrl+w, K 
" move current window to bottom 
Ctrl+w, J 

# resize window 
:resize +N 
:resize -N 
:vertical resize +N 
:vertical resize -N 

" ------ Tabs ---------

" open a file in a new tab 
:tabnew filename 

" next tab 
gt 

" previous tab 
gT 

" ---------------------

" ---- Folds ----------

" set fold
set foldmethod=indent 

zf#j     " creates a fold from the cursor down # lines.
zf/      " string creates a fold from the cursor to string.
zj       " moves the cursor to the next fold.
zk       " moves the cursor to the previous fold.
zo       " opens a fold at the cursor.
zO       " opens all folds at the cursor.
zm       " increases the foldlevel by one.
zM       " closes all open folds.
zr       " decreases the foldlevel by one.
zR       " decreases the foldlevel to zero — all folds will be open.
zd       " deletes the fold at the cursor.
zE       " deletes all folds.
[z       " move to start of open fold.
]z       " move to end of open fold.

" Setting an automatic foldmethod setting (such as indent) will display all files as folded by default. 
" It's a matter of preference, and you may prefer to have the folds open when opening a new file. 
" This command tells Vim to execute zR (open all folds) when reading a buffer.
autocmd BufRead * normal zR 

" ---------------------

" ---------------------

" ---------------------

" ---------------------

" ---------------------

" ---------------------

" ---------------------

