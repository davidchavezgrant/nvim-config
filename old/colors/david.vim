
"""
" Name: David.vim
"""

set background=dark
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='David'
set t_Co=256


" misc

hi ColorColumn      guisp=NONE guifg=NONE    guibg=#383838 ctermfg=NONE ctermbg=237  gui=NONE           cterm=NONE
hi Conceal          guisp=NONE guifg=#8995AC guibg=NONE    ctermfg=103  ctermbg=NONE gui=NONE           cterm=NONE
hi Cursor           guisp=NONE guifg=#000000 guibg=#97ECC7 ctermfg=16   ctermbg=122  gui=NONE           cterm=NONE
hi lCursor          guisp=NONE guifg=#000000 guibg=#97ECC7 ctermfg=16   ctermbg=122  gui=NONE           cterm=NONE
hi CursorIM         guisp=NONE guifg=#000000 guibg=#97ECC7 ctermfg=16   ctermbg=122  gui=NONE           cterm=NONE
hi CursorColumn     guisp=NONE guifg=NONE    guibg=#052026 ctermfg=NONE ctermbg=234  gui=NONE           cterm=NONE
hi CursorLine       guisp=NONE guifg=NONE    guibg=#052026 ctermfg=NONE ctermbg=234  gui=NONE           cterm=NONE
hi Directory        guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=NONE           cterm=NONE
hi DiffAdd          guisp=NONE guifg=NONE    guibg=#003002 ctermfg=NONE ctermbg=233  gui=NONE           cterm=NONE
hi DiffChange       guisp=NONE guifg=NONE    guibg=#5a5e00 ctermfg=NONE ctermbg=58   gui=NONE           cterm=NONE
hi DiffDelete       guisp=NONE guifg=NONE    guibg=#2b0000 ctermfg=NONE ctermbg=233  gui=NONE           cterm=NONE
hi DiffText         guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231  ctermbg=NONE gui=underline      cterm=underline
hi EndOfBuffer      guisp=NONE guifg=NONE    guibg=#051527 ctermfg=NONE ctermbg=233  gui=NONE           cterm=NONE
hi ErrorMsg         guisp=NONE guifg=NONE    guibg=#c92e2e ctermfg=NONE ctermbg=160  gui=bold,italic    cterm=bold,italic
hi VertSplit        guisp=NONE guifg=NONE    guibg=#051527 ctermfg=NONE ctermbg=233  gui=NONE           cterm=NONE
hi Folded           guisp=NONE guifg=NONE    guibg=#051527 ctermfg=NONE ctermbg=233  gui=NONE           cterm=NONE
hi FoldColumn       guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE           cterm=NONE
hi SignColumn       guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE           cterm=NONE
hi IncSearch        guisp=NONE guifg=#ff00e1 guibg=#009cbf ctermfg=200  ctermbg=37   gui=bold,underline cterm=bold,underline
hi LineNr           guisp=NONE guifg=#7a7a7a guibg=NONE    ctermfg=243  ctermbg=NONE gui=NONE           cterm=NONE
hi LineNrAbove      guisp=NONE guifg=#7a7a7a guibg=NONE    ctermfg=243  ctermbg=NONE gui=NONE           cterm=NONE
hi LineNrBelow      guisp=NONE guifg=#7a7a7a guibg=NONE    ctermfg=243  ctermbg=NONE gui=NONE           cterm=NONE
hi CursorLineNr     guisp=NONE guifg=#E5C17C guibg=#052026 ctermfg=180  ctermbg=234  gui=NONE           cterm=NONE
hi MatchParen       guisp=NONE guifg=NONE    guibg=#143E5C ctermfg=NONE ctermbg=23   gui=NONE           cterm=NONE
hi ModeMsg          guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE           cterm=NONE
hi MoreMsg          guisp=NONE guifg=NONE    guibg=#051527 ctermfg=NONE ctermbg=233  gui=NONE           cterm=NONE
hi NonText          guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE           cterm=NONE
hi Pmenu            guisp=NONE guifg=#ffffff guibg=#333333 ctermfg=231  ctermbg=236  gui=NONE           cterm=NONE
hi PmenuSel         guisp=NONE guifg=#ffffff guibg=#545454 ctermfg=231  ctermbg=240  gui=NONE           cterm=NONE
hi PmenuSbar        guisp=NONE guifg=NONE    guibg=#051527 ctermfg=NONE ctermbg=233  gui=NONE           cterm=NONE
hi PmenuThumb       guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE           cterm=NONE
hi Question         guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE           cterm=NONE
hi QuickFixLine     guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE           cterm=NONE
hi Search           guisp=NONE guifg=#ff00e1 guibg=#009cbf ctermfg=200  ctermbg=37   gui=bold,underline cterm=bold,underline
hi SpecialKey       guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE           cterm=NONE
hi SpellBad         guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE           cterm=NONE
hi SpellCap         guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE           cterm=NONE
hi SpellLocal       guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE           cterm=NONE
hi SpellRare        guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE           cterm=NONE
hi StatusLine       guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE           cterm=NONE
hi StatusLineNC     guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE           cterm=NONE
hi StatusLineTerm   guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE           cterm=NONE
hi StatusLineTermNC guisp=NONE guifg=NONE    guibg=#051527 ctermfg=NONE ctermbg=233  gui=NONE           cterm=NONE
hi TabLine          guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE           cterm=NONE
hi TabLineFill      guisp=NONE guifg=#ffffff guibg=#051527 ctermfg=231  ctermbg=233  gui=NONE           cterm=NONE
hi TabLineSel       guisp=NONE guifg=NONE    guibg=#0a2442 ctermfg=NONE ctermbg=235  gui=NONE           cterm=NONE
hi Terminal         guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE           cterm=NONE
hi Title            guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE           cterm=NONE
hi Visual           guisp=NONE guifg=NONE    guibg=#0F3049 ctermfg=NONE ctermbg=236  gui=NONE           cterm=NONE
hi VisualNOS        guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE           cterm=NONE
hi WarningMsg       guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE           cterm=NONE
hi WildMenu         guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE           cterm=NONE

" major

hi Normal     guisp=NONE guifg=#c7c7c7 guibg=#051527 ctermfg=251 ctermbg=233  gui=NONE cterm=NONE
hi Comment    guisp=NONE guifg=#8995AC guibg=NONE    ctermfg=103 ctermbg=NONE gui=NONE cterm=NONE
hi Constant   guisp=NONE guifg=#E7637D guibg=NONE    ctermfg=168 ctermbg=NONE gui=NONE cterm=NONE
hi Identifier guisp=NONE guifg=#c9c9c9 guibg=NONE    ctermfg=251 ctermbg=NONE gui=NONE cterm=NONE
hi Statement  guisp=NONE guifg=#569CD6 guibg=NONE    ctermfg=74  ctermbg=NONE gui=NONE cterm=NONE
hi PreProc    guisp=NONE guifg=#569CD6 guibg=NONE    ctermfg=74  ctermbg=NONE gui=NONE cterm=NONE
hi Type       guisp=NONE guifg=#3CCDCB guibg=NONE    ctermfg=80  ctermbg=NONE gui=NONE cterm=NONE
hi Special    guisp=NONE guifg=#569CD6 guibg=NONE    ctermfg=74  ctermbg=NONE gui=NONE cterm=NONE
hi Underlined guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231 ctermbg=NONE gui=NONE cterm=NONE
hi Ignore     guisp=NONE guifg=#ffffff guibg=NONE    ctermfg=231 ctermbg=NONE gui=NONE cterm=NONE
hi Error      guisp=NONE guifg=#ffffff guibg=#f70000 ctermfg=231 ctermbg=196  gui=NONE cterm=NONE
hi Todo       guisp=NONE guifg=#48ff00 guibg=NONE    ctermfg=82  ctermbg=NONE gui=NONE cterm=NONE

" minor

hi String         guisp=NONE guifg=#ECB49F guibg=NONE ctermfg=217 ctermbg=NONE gui=NONE cterm=NONE
hi Character      guisp=NONE guifg=#D081C4 guibg=NONE ctermfg=176 ctermbg=NONE gui=NONE cterm=NONE
hi Number         guisp=NONE guifg=#BBFFBB guibg=NONE ctermfg=157 ctermbg=NONE gui=NONE cterm=NONE
hi Boolean        guisp=NONE guifg=#B7E5FF guibg=NONE ctermfg=153 ctermbg=NONE gui=NONE cterm=NONE
hi Float          guisp=NONE guifg=#F8FF91 guibg=NONE ctermfg=228 ctermbg=NONE gui=NONE cterm=NONE
hi Function       guisp=NONE guifg=#3FEA9F guibg=NONE ctermfg=79  ctermbg=NONE gui=NONE cterm=NONE
hi Conditional    guisp=NONE guifg=#569CD6 guibg=NONE ctermfg=74  ctermbg=NONE gui=NONE cterm=NONE
hi Repeat         guisp=NONE guifg=#569CD6 guibg=NONE ctermfg=74  ctermbg=NONE gui=NONE cterm=NONE
hi Label          guisp=NONE guifg=#569CD6 guibg=NONE ctermfg=74  ctermbg=NONE gui=NONE cterm=NONE
hi Operator       guisp=NONE guifg=#E5C17C guibg=NONE ctermfg=180 ctermbg=NONE gui=NONE cterm=NONE
hi Keyword        guisp=NONE guifg=#569CD6 guibg=NONE ctermfg=74  ctermbg=NONE gui=NONE cterm=NONE
hi Exception      guisp=NONE guifg=#569CD6 guibg=NONE ctermfg=74  ctermbg=NONE gui=NONE cterm=NONE
hi Include        guisp=NONE guifg=#569CD6 guibg=NONE ctermfg=74  ctermbg=NONE gui=NONE cterm=NONE
hi Define         guisp=NONE guifg=#569CD6 guibg=NONE ctermfg=74  ctermbg=NONE gui=NONE cterm=NONE
hi Macro          guisp=NONE guifg=#C191FF guibg=NONE ctermfg=141 ctermbg=NONE gui=NONE cterm=NONE
hi PreCondit      guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=NONE gui=NONE cterm=NONE
hi StorageClass   guisp=NONE guifg=#569CD6 guibg=NONE ctermfg=74  ctermbg=NONE gui=NONE cterm=NONE
hi Structure      guisp=NONE guifg=#569CD6 guibg=NONE ctermfg=74  ctermbg=NONE gui=NONE cterm=NONE
hi Typedef        guisp=NONE guifg=#569CD6 guibg=NONE ctermfg=74  ctermbg=NONE gui=NONE cterm=NONE
hi SpecialChar    guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=NONE gui=NONE cterm=NONE
hi Tag            guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=NONE gui=NONE cterm=NONE
hi Delimiter      guisp=NONE guifg=#E5C17C guibg=NONE ctermfg=180 ctermbg=NONE gui=NONE cterm=NONE
hi SpecialComment guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=NONE gui=NONE cterm=NONE
hi Debug          guisp=NONE guifg=#ffffff guibg=NONE ctermfg=231 ctermbg=NONE gui=NONE cterm=NONE


