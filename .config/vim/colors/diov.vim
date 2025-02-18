hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'diov'

"hi Normal           guifg=#ffffff      guibg=#000000 
hi LineNr           guifg=#6b6a70
hi CursorLine       guifg=NONE         guibg=NONE gui=NONE cterm=NONE
hi CursorLineNR     guifg=#6c757d      guibg=NONE gui=NONE cterm=NONE
hi Number           guifg=#6c757d
hi Statement        guifg=#ffee32      cterm=bold gui=bold
hi MatchParen       guifg=#ffffff      guibg=#3e445e 
"hi StatusLine       guifg=#262626      guibg=White " bug: fg is bg, bg is fg
"hi StatusLineNC     guifg=#6b6a70      guibg=DarkGrey
hi StatusLine       guifg=#1c1c1c      guibg=LightGrey " bug: fg is bg, bg is fg
hi StatusLineNC     guifg=#1c1c1c      guibg=DarkGrey
hi NonText          guifg=bg
hi Type             guifg=#adb5bd
hi String           guifg=#79bf46
hi Pmenu            guifg=DarkGrey      guibg=#1c1c1c
hi PmenuSel         guifg=#79bf46      guibg=#020202
"hi Comment          guifg=#i3b18a
"hi Function         guifg=#ffee32       gui=NONE cterm=NONE  
"hi String           guifg=#00c000
"hi String           guifg=#00ff00
"hi PreProc          guifg=#a093c7
"hi PreProc          guifg=#c22121
"hi PreProc          guifg=#ccd5ae

hi! link Operator       Normal
hi! link Identifier     Normal
hi! link PreProc        Normal
hi! link Constant       Normal
hi! link Keyword        Normal
hi! link Delimiter      Normal
hi! link Number         Normal
hi! link Comment        Type
hi! link Function       Statement
hi! link Special        Normal
"hi! link String         Normal
"hi! link Type           Normal
"hi! link PreProc        LineNr
