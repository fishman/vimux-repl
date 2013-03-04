let s:Initialized = 0

function! vimuxrepl#python#Initialize()
  if s:Initialized == 0
    call VimuxRunCommand("ipython")

    let s:Initialized = 1
  endif
endfunction
