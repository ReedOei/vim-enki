" Vim syntax file
" Language:      Enki
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

let b:current_syntax = "enki"

syntax match ifItHas 'if it has'
syntax match becauseItHas 'because it has'
syntax keyword posulateKeyword postulate
syntax keyword hasKeyword has
syntax keyword isKeyword is are
syntax keyword notKeyword not
syntax keyword asKeyword as
syntax keyword importing use nextgroup=moduleId skipwhite
syntax match moduleId '[A-Za-z][a-zA-Z0-9_]*' skipwhite contained nextgroup=importFrom
syntax keyword importFrom from contained
syntax match noImport 'do not use'
syntax match defineAlias 'define alias'
syntax match builtIn 'built in'
syntax keyword ruleKeywords where does if
syntax match typeclassDef 'is a type of'
syntax match sumTypeDef 'may be'
syntax keyword whenKeyword when default then

syntax match hole '\<_[A-Z]*[a-z]*\>'

syntax match unification '='
syntax match notUnification '/='

syntax match operator '[+-/*<>\|:]'

syntax match variable '\<[A-Z][A-Za-z0-9]*'

syntax match comment "--.*$"

syntax match num '#\?[-+]\?\d\+'

syntax region string start='"' end='"' skip='\\"'
syntax region string start='\'' end='\'' skip='\\\''

syntax keyword type int bool string

hi def link operator Operator

hi def link ifItHas Statement
hi def link ruleKeywords Statement
hi def link posulateKeyword Statement
hi def link becauseItHas Statement
hi def link hasKeyword Statement
hi def link notKeyword Function
hi def link isKeyword Statement
hi def link asKeyword Statement
hi def link typeclassDef Statement
hi def link sumTypeDef Statement
hi def link defineAlias Statement
hi def link builtIn Statement
hi def link unification Statement
hi def link notUnification Statement
hi def link whenKeyword Conditional
hi def link importing PreProc
hi def link importFrom PreProc
hi def link noImport PreProc

hi def link hole Constant

hi def link type Function
hi def link variable Type
hi def link num Constant
hi def link comment Comment
hi def link string String

