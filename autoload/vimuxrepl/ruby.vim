let s:Initialized = 0

function! vimuxrepl#ruby#Initialize()
  if s:Initialized == 0
    call VimuxRunCommand("irb")

    let s:Initialized = 1
  endif
endfunction
