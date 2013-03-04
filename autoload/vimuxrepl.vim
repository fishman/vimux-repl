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

let s:vimux_terminator = "\n"

function! vimuxrepl#Initialize()
  call vimuxrepl#{&filetype}#Initialize()
endfunction

function! vimuxrepl#sendline(command)
  let linenumber = line(".")
  let current = getline(linenumber)
  call vimuxrepl#Initialize()
  call VimuxRunCommand(l:current . s:vimux_terminator)
endfunction

function! vimuxrepl#SetTerminator(term)
  let s:vimux_terminator = a:term
endfunction

function! vimuxrepl#sendbuffer()
  echo @%
endfunction

function! vimuxrepl#sendselection(command)
  call vimuxrepl#Initialize()
  call VimuxRunCommand(a:command . s:vimux_terminator)
endfunction
