let s:Initialized = 0

function! vimuxrepl#cs#Initialize()
  if s:Initialized == 0
    call VimuxRunCommand("csharp")

    let s:Initialized = 1
  endif
endfunction
