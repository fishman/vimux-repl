let s:Initialized = 0

function! vimuxrepl#ruby#Initialize()
  if s:Initialized == 0
    let g:VimuxResetSequence = ""

    call VimuxRunCommand("irb")

    call vimuxrepl#SetTerminator("\n")

    let s:Initialized = 1
  endif
endfunction
