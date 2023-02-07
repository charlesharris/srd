let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/src/runecaster/runecaster/app
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 main.rb
badd +12 tick.rb
badd +54 entities/main_menu.rb
badd +4 entities.rb
badd +0 repl.rb
badd +0 tests.rb
badd +1 ~/src/ealeybot/squishybot/app/entities/main_menu.rb
badd +3 ~/src/ealeybot/squishybot/app/tick.rb
badd +3 ~/src/ealeybot/squishybot/app/systems/game_initialization.rb
badd +1 entities/menu_item.rb
badd +6 lib/renderable.rb
badd +1 lib/utilities/concern.rb
badd +4 lib/utilities.rb
badd +9 lib/renderable/container.rb
badd +1 lib/renderable/label_item.rb
badd +8 lib/renderable/item.rb
badd +21 lib/renderable/render_queue.rb
badd +0 lib/renderable/renderer.rb
badd +0 constants.rb
argglobal
%argdel
$argadd main.rb
$argadd tick.rb
$argadd entities/main_menu.rb
$argadd entities.rb
$argadd main.rb
$argadd repl.rb
$argadd tests.rb
$argadd tick.rb
edit entities/main_menu.rb
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
3wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 19 + 41) / 82)
exe 'vert 1resize ' . ((&columns * 94 + 94) / 189)
exe '2resize ' . ((&lines * 19 + 41) / 82)
exe 'vert 2resize ' . ((&columns * 94 + 94) / 189)
exe '3resize ' . ((&lines * 19 + 41) / 82)
exe 'vert 3resize ' . ((&columns * 94 + 94) / 189)
exe '4resize ' . ((&lines * 20 + 41) / 82)
exe 'vert 4resize ' . ((&columns * 94 + 94) / 189)
exe '5resize ' . ((&lines * 26 + 41) / 82)
exe 'vert 5resize ' . ((&columns * 94 + 94) / 189)
exe '6resize ' . ((&lines * 26 + 41) / 82)
exe 'vert 6resize ' . ((&columns * 94 + 94) / 189)
exe '7resize ' . ((&lines * 26 + 41) / 82)
exe 'vert 7resize ' . ((&columns * 94 + 94) / 189)
argglobal
if bufexists(fnamemodify("entities/main_menu.rb", ":p")) | buffer entities/main_menu.rb | else | edit entities/main_menu.rb | endif
if &buftype ==# 'terminal'
  silent file entities/main_menu.rb
endif
balt lib/renderable/item.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 40 - ((8 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 40
normal! 062|
wincmd w
argglobal
if bufexists(fnamemodify("lib/renderable/label_item.rb", ":p")) | buffer lib/renderable/label_item.rb | else | edit lib/renderable/label_item.rb | endif
if &buftype ==# 'terminal'
  silent file lib/renderable/label_item.rb
endif
balt lib/renderable/item.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 2 - ((1 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("lib/renderable/item.rb", ":p")) | buffer lib/renderable/item.rb | else | edit lib/renderable/item.rb | endif
if &buftype ==# 'terminal'
  silent file lib/renderable/item.rb
endif
balt lib/renderable.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 20 - ((18 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 20
normal! 03|
wincmd w
argglobal
if bufexists(fnamemodify("lib/renderable/renderer.rb", ":p")) | buffer lib/renderable/renderer.rb | else | edit lib/renderable/renderer.rb | endif
if &buftype ==# 'terminal'
  silent file lib/renderable/renderer.rb
endif
balt lib/renderable.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 9 - ((7 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 9
normal! 05|
wincmd w
argglobal
if bufexists(fnamemodify("constants.rb", ":p")) | buffer constants.rb | else | edit constants.rb | endif
if &buftype ==# 'terminal'
  silent file constants.rb
endif
balt main.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 9 - ((8 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 9
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("main.rb", ":p")) | buffer main.rb | else | edit main.rb | endif
if &buftype ==# 'terminal'
  silent file main.rb
endif
balt tick.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 026|
wincmd w
argglobal
if bufexists(fnamemodify("tick.rb", ":p")) | buffer tick.rb | else | edit tick.rb | endif
if &buftype ==# 'terminal'
  silent file tick.rb
endif
balt main.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 12 - ((3 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 12
normal! 05|
wincmd w
exe '1resize ' . ((&lines * 19 + 41) / 82)
exe 'vert 1resize ' . ((&columns * 94 + 94) / 189)
exe '2resize ' . ((&lines * 19 + 41) / 82)
exe 'vert 2resize ' . ((&columns * 94 + 94) / 189)
exe '3resize ' . ((&lines * 19 + 41) / 82)
exe 'vert 3resize ' . ((&columns * 94 + 94) / 189)
exe '4resize ' . ((&lines * 20 + 41) / 82)
exe 'vert 4resize ' . ((&columns * 94 + 94) / 189)
exe '5resize ' . ((&lines * 26 + 41) / 82)
exe 'vert 5resize ' . ((&columns * 94 + 94) / 189)
exe '6resize ' . ((&lines * 26 + 41) / 82)
exe 'vert 6resize ' . ((&columns * 94 + 94) / 189)
exe '7resize ' . ((&lines * 26 + 41) / 82)
exe 'vert 7resize ' . ((&columns * 94 + 94) / 189)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
