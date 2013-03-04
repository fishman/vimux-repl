let s:Initialized = 0

function! vimuxrepl#python#Initialize()
  if s:Initialized == 0
    let g:VimuxResetSequence = ""

    call VimuxRunCommand("ipython")

    call vimuxrepl#SetTerminator("\n")

    let s:Initialized = 1
  endif
endfunction
