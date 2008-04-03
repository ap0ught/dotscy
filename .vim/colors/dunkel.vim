set background=dark
highlight clear
let g:colors_name = "dunkel"

function s:H(group, fore, back)
    exec "highlight " . a:group . " ctermfg=" . a:fore . " ctermbg=" . a:back . " guifg=" . a:fore . " guibg=" . a:back
endfunction

function s:HF(group, fore)
    exec "highlight " . a:group . " ctermfg=" . a:fore . " guifg=" . a:fore
endfunction

function s:HB(group, back)
    exec "highlight " . a:group . " ctermbg=" . a:back . " guibg=" . a:back
endfunction

" Normal text is gray on black.
call s:H(	"Normal",	"LightGray",	"Black")

" Diff formatting.
call s:H(	"DiffDelete",	"DarkGray",	"DarkRed")
call s:HB(	"DiffAdd",	"DarkGreen")
call s:HB(	"DiffChange",	"DarkGray")
call s:HB(	"DiffText",	"Red")

" Folded lines.
call s:H(	"Folded",	"DarkBlue",	"DarkYellow")

" Application items.
call s:HF(	"LineNr",	"DarkGray")
call s:HF(	"SpecialKey",	"DarkGray")
highlight StatusLine term=bold cterm=bold
call s:H(	"StatusLine",	"LightYellow",	"DarkBlue")

delfunction s:H
delfunction s:HF
delfunction s:HB

" vim: set ts=25 tw=0:
