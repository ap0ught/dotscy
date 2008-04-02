" ^K will cut the current line, ^U paste it (nano-like behaviour)
inoremap <C-K> <C-O>dd
inoremap <C-U> <C-O>P

" <M-a> will select the whole file.
imap <M-a> <C-O><M-a>
map <M-a> :call ScySelectAll()<CR>

" <M-c> will copy the current selection to the clipboard.
vmap <M-c> "+y

" <M-f> will change case of the first letter of the preceding word.
imap <M-f> <C-O><M-f>
map <M-f> :call ScyChangeCase()<CR>

" <M-h> will toggle hlsearch.
imap <M-h> <C-O><M-h>
map <M-h> :set invhlsearch

" <M-n> will toggle number-and-wrap mode.
imap <M-n> <C-O><M-n>
map <M-n> :call ScyToggleNumbers()<CR>

" <M-s> will start the current sentence from scratch.
imap <M-s> <C-O><M-s>
map <M-s> :call ScyScrapSentence()<CR>

" <M-v> will paste the clipboard's contents.
" TODO: This is temporarily disabled on Windows because "ö" happens to be
" the same as "v" with 8th bit set... -.-
if exists("os") && os != "windows"
	imap <M-v> <C-O><M-v>
	map <M-v> "+gP
endif

" <M-w> will write the file contents.
imap <M-w> <C-O><M-w>
map <M-w> :w<CR>
