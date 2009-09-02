" Enable Neo-like Unicode quotes (Neo is not always available).
command! Chars lmap <M-7> „|lmap <M-8> “|lmap <M-9> ”|set iminsert=1|set imsearch=-1|set imcmdline

" <M-a> will select the whole file.
imap <M-a> <C-O><M-a>
map <M-a> :call ScySelectAll()<CR>

" <M-c> will copy the current selection to the clipboard.
vmap <M-c> "+y

" <M-f> will change case of the first letter of the preceding word.
imap <M-f> <C-O><M-f>
map <M-f> :call ScyChangeCase()<CR>

" <M-g> will insert an informal greeting.
imap <M-g> <Esc><M-g>
map <M-g> :call ScyMailEnd("Gruß,", "Tim.")<CR>

" <M-G> will insert an informal greeting in English.
imap <M-G> <Esc><M-G>
map <M-G> :call ScyMailEnd("Regards,", "Tim.")<CR>

" <M-h> will toggle hlsearch.
imap <M-h> <C-O><M-h>
map <M-h> :set invhlsearch<CR>

" <M-j> will join this quoted line (in mails) with the previous one.
imap <M-j> <C-O><M-j>
map <M-j> :call ScyQuoteJoin()<CR>

" <M-m> will insert a formal greeting ("MfG").
imap <M-m> <Esc><M-m>
map <M-m> :call ScyMailEnd("Beste Grüße,", "Tim Weber.")<CR>

" <M-M> will insert a formal greeting in English.
imap <M-M> <Esc><M-M>
map <M-M> :call ScyMailEnd("Kind regards,", "Tim Weber.")<CR>

" <M-n> will toggle number-and-wrap mode.
imap <M-n> <C-O><M-n>
map <M-n> :call ScyToggleNumbers()<CR>

" <M-s> will split this quoted line here to reply to it.
imap <M-s> <C-O><M-s>
map <M-s> :call ScyQuoteSplit()<CR>i

" <M-S> will start the current sentence from scratch.
imap <M-S> <C-O><M-S>
map <M-S> :call ScyScrapSentence()<CR>

" <M-v> will paste the clipboard's contents.
" TODO: This is temporarily disabled on Windows because "ö" happens to be
" the same as "v" with 8th bit set... -.-
if $OS !~ "^Windows"
	imap <M-v> <C-O><M-v>
	map <M-v> "+gP
endif

" <M-w> will write the file contents.
imap <M-w> <C-O><M-w>
map <M-w> :w<CR>

" <M-W> will write all files and run ctags.
" TODO: :!start looks like it's Windows-only...
imap <M-W> <C-O><M-W>
map <M-W> :wa<CR>:!start ctags -R<CR>

" <M-x> will maximize a Windows GUI window.
imap <M-x> <C-O><M-x>
map <M-x> :simalt ~x<CR>

" <C-Space> will do completion just as <C-N> does.
imap <C-Space> <C-N>

" <C-Down> will jump to the current tag (<C-]> is too hard on German keyboards).
imap <C-Down> <C-O><C-Down>
map <C-Down> <C-]>

" <C-Up> will jump back again.
imap <C-Up> <C-O><C-Up>
map <C-Up> <C-T>

" <C-RightMouse> will jump back as well (inverting <C-LeftMouse>).
imap <C-RightMouse> <C-Up>
nmap <C-RightMouse> <C-Up>
