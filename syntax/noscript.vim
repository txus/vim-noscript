" Vim syntax file
" Language:	.ns files
" Maintainer:	Josep M. Bach <josep.m.bachNOSPAN@gmail.com>
" Last Change:	2011 Sep 21

if exists("b:current_syntax")
  finish
endif

syn keyword xOperator == != >= <= > < =
syn keyword xBoolean true false nil

syn match xString /'[^']*'/ contains=xLInt,xRInt,xSpecial
syn match xLInt '#{' contained
syn match xRInt '}' contained
syn match xSpecial "\\." contained

syn match xSemicolon ";"
syn match xFun "->"
syn keyword xKeyword if else while end

syn match xDeref "@[a-z][\ a-zA-Z]*"
syn match xIdentifier "[a-z][\ a-zA-Z]*"
syn match xKey "[a-z][\ a-zA-Z]*:"
syn match xColon ":"
syn keyword xBuiltin trait uses clone
syn match xConstant "[A-Z][\ a-zA-Z]*"
syn match xDigit "\d"

hi link xDigit Constant
hi link xBoolean Type

hi link xString Constant
hi link xQuote Special
hi link xLInt Special
hi link xRInt Special
hi link xSpecial Special

hi link xConstant Type

hi link xIdentifier Normal
hi link xKey Constant
hi link xDeref Identifier
hi link xBuiltin Special

hi link xKeyword Statement
hi link xFun Statement
hi link xOperator Type

hi link xSemicolon Identifier
hi link xColon Identifier
let b:current_syntax = "noscript"

" vim: ts=8 sw=2
