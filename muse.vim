syntax reset

set background=light

" COLORS {{{

let s:blue          = { "gui": "#0000D7", "cterm": "20"   }
let s:purple        = { "gui": "#800080", "cterm": "5"    }
let s:green         = { "gui": "#008700", "cterm": "28"   }
let s:pink          = { "gui": "#87005F", "cterm": "89"   }
let s:red           = { "gui": "#AF0000", "cterm": "1"    }
let s:maroon        = { "gui": "#AF0000", "cterm": "124"  }
let s:black         = { "gui": "#000000", "cterm": "16"   }
let s:grey          = { "gui": "#585858", "cterm": "240"  }
let s:lightgrey     = { "gui": "#BCBCBC", "cterm": "250"  }
let s:white         = { "gui": "#FFFFFF", "cterm": "15"   }
let s:nearwhite     = { "gui": "#FFFFFF", "cterm": "NONE" }
let s:deepskyblue   = { "gui": "#005F87", "cterm": "24"   }

let s:nbg = s:nearwhite
let s:nfg = s:black

"}}}


" HIGHLIGHTING FUNCTION {{{

function! s:h(group, style)
  execute "highlight" a:group
        \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
        \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
        \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
        \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
        \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
        \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
        \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

"}}}


" COLORSCHEME CONFIGURATIONS {{{

" GUI
call s:h("Normal", { "fg": s:nfg, "bg": s:nbg })
call s:h("LineNr", { "fg": s:grey             })

" Generic Highlighting
call s:h("ColorColumn",         { "bg": s:lightgrey })
call s:h("Comment",             { "fg": s:grey,   "bg": s:nbg })
call s:h("Error",               { "fg": s:blue,   "bg": s:nbg })
call s:h("Function",            { "fg": s:blue,   "bg": s:nbg })
call s:h("Number",              { "fg": s:maroon, "bg": s:nbg })
call s:h("String",              { "fg": s:green,  "bg": s:nbg })
call s:h("Statement",           { "fg": s:blue,   "bg": s:nbg })
call s:h("Type",                { "fg": s:purple, "bg": s:nbg })
call s:h("VertSplit",           { "bg": s:deepskyblue })

" C/C++
call s:h("cInclude",            { "fg": s:blue,   "bg": s:nbg })
call s:h("cIncluded",           { "fg": s:maroon, "bg": s:nbg })
call s:h("cIncluded",           { "fg": s:maroon, "bg": s:nbg })
call s:h("cStorageClass",       { "fg": s:blue,   "bg": s:nbg })
call s:h("cStructure",          { "fg": s:blue,   "bg": s:nbg })
call s:h("cppSTLConstant",      { "fg": s:maroon, "bg": s:nbg })
call s:h("cppStructure",        { "fg": s:blue,   "bg": s:nbg })

" Latex
call s:h("texBeginEnd",         { "fg": s:blue,   "bg": s:nbg })
call s:h("texBeginEndName",     { "fg": s:purple, "bg": s:nbg })
call s:h("texDocType",          { "fg": s:blue,   "bg": s:nbg })
call s:h("texMathMatcher",      { "fg": s:nfg,    "bg": s:nbg })
call s:h("texMathZoneX",        { "fg": s:nfg,    "bg": s:nbg })
call s:h("texNewCmd",           { "fg": s:blue,   "bg": s:nbg })
call s:h("texNewEnv",           { "fg": s:blue,   "bg": s:nbg })
call s:h("texSection",          { "fg": s:purple, "bg": s:nbg })
call s:h("texStatement",        { "fg": s:blue,   "bg": s:nbg })

" Python
call s:h("pythonClassVar",      { "fg": s:purple, "bg": s:nbg })

"}}}

