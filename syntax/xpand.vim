if exists("b:current_syntax")
    finish
endif

syn keyword XptKeywords contained
            \ DEFINE ENDDEFINE
            \ LET ENDLET FILE ENDFILE
            \ EXPAND
            \ PROTECT ENDPROTECT
syn keyword XptStatements contained
            \ FOREACH ENDFOREACH AS
            \ FOR SEPARATOR
            \ ID CSTART CEND DISABLE
syn keyword XptImport contained
            \ IMPORT EXTENSION
syn keyword XptIf contained
            \ IF ENDIF ELSE
syn region XptString contained
            \ start=+\z(['"]\)+ end="\z1" skip="\\\\\|\\\z1"
syn region XptContext keepend start="«" end="»"
            \ contains=XptIf,XptImport,XptStatements,XptKeywords,XptString
syn region XptComment keepend start="«REM»" end="«ENDREM»"

hi def link XptIf Conditional
hi def link XptStatements Statement
hi def link XptImport Include
hi def link XptKeywords Structure
hi def link XptComment Comment
hi def link XptString String

let b:current_syntax = "xpand"
