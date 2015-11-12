" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
    finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

" Using line continuation here.
let s:cpo_save = &cpo

" Set 'comments' to format dashed lists in comments.
setlocal comments=s1:«REM»,ex:«ENDREM»
setlocal commentstring=«REM»%s«ENDREM»

let &cpo = s:cpo_save
unlet s:cpo_save
