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

if exists("g:loaded_autoload_vimuxrepl") || &cp || !has('clientserver')
  finish
endif
let g:loaded_autoload_vimuxrepl = 1

function! vimuxrepl#Initialize(repl)

endfunction

function! vimuxrepl#sendline(command)
  echo a:command
  call vimuxrepl#{&filetype}#Initialize()
  call VimuxRunCommand(a:command)
endfunction

function! vimuxrepl#sendbuffer(...)

endfunction

function! vimuxrepl#sendselection(...)

endfunction
