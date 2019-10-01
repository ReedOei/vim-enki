" Vim syntax file
" Language:      EnkiVM
" Maintainers:   Reed Oei <me@reedoei.com>
" Version: 0.1
"
" To install, copy (or link) this file into the ~/.vim/syntax directory and add
" the following to the ~/.vimrc file

" Quit if syntax file is already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

let b:current_syntax = "enkivm"

syntax keyword opcode goto fail print fresh gotochoice unify dup disunify pop nameof project functor swap add sub div mul pow lt lte gt gte rot over printstack printunification position var str int destroy macro quote call
syntax keyword macro macro quote call endcall endmacro
syntax match num '#\?[-+]\?\d\+'
syntax match comment "#.*$"
syntax match macroCall "\$[^A-Za-z0-9_-]*"

syntax region string start='"' end='"' skip='\\"'
syntax region string start='\'' end='\'' skip='\\\''

hi def link opcode Statement
hi def link num Constant
hi def link comment Comment
hi def link string String
hi def link macro PreProc
hi def link macroCall Type

