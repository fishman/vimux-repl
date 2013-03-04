let s:Initialized = 0

function! vimuxrepl#fsharp#Initialize()
  if s:Initialized == 0
    let g:VimuxResetSequence = ""

    call VimuxRunCommand("fsharpi")

    call vimuxrepl#SetTerminator(";;;")

    let s:Initialized = 1
  endif
endfunction
