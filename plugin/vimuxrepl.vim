" Copyright (C) 2013 Reza Jelveh

" This file is part of vimux-repl.

" vimux-repl is free software: you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation, either version 3 of the License, or
" (at your option) any later version.

" vimux-repl is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.

" You should have received a copy of the GNU General Public License
" along with vimux-repl.  If not, see <http://www.gnu.org/licenses/>.

if v:version < 700
  finish
endif

" check whether this script is already loaded
if exists("g:loaded_vimuxrepl")
  finish
endif
let g:loaded_vimuxrepl = 1

let s:saved_cpo = &cpo
set cpo&vim


" commands {{{
noremap <silent> <C-c><C-r> "vy :call vimuxrepl#sendline(@v . "\n")<CR>

" }}}

let &cpo = s:saved_cpo
unlet! s:saved_cpo

" vim703: cc=78
" vim:fdm=marker et ts=4 tw=78 sw=4

