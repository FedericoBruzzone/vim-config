# -*- coding: utf-8 -*-
"""
    pygments.lexers.meltsilver
    ~~~~~~~~~~~~~~~~~~~~~~~

    Lexer for language specification files of the Silver attribute grammar system.

    Translated from Vim syntax retrieved at https://github.com/melt-umn/silver/blob/develop/support/vim/syntax/sv.vim
"""

import re

from pygments.lexer import RegexLexer
from pygments.token import *

__all__ = ['MeltSilverLexer']

def keywordList(ls, tokenType):
   return (r'\b(%s)\b' % '|'.join(ls), tokenType)

class MeltSilverLexer(RegexLexer):
   """
   For Silver language specification files.

   .. versionadded:: 0.2
   """

   name = 'MeltSilver'
   aliases = ['meltsilver']
   filenames = ['*.sv']



   svlangExternals=("grammar","import","imports","exports","build","hiding","as","only","option")
   svlangDeclarations=("parser","attribute","annotation","function","local","closed","nonterminal","type","occurs","on","production","terminal","marking","foreign","layout","disambiguate","action","global","productions","lexer","class","default")
   svlangPrimitiveTypes=("IO","Boolean","Decorated","Float","Function","Integer","Production","String")
   svlangStorageClass=("abstract","aspect","concrete","inherited","synthesized","autocopy","ignore")
   svlangScopeDeclarations=("association","precedence","operator","dominates","submits","classes")
   svlangFlowOther=("forwarding","forwards","to","return","pluck")
   svlangFlow=("case","of","let","in","end","decorate","with","prefix","else","forward","if","new","then")
   svlangFunction=("print","toString","toInt","toFloat","length","reference","substring","indexOf","error","cast","left","right","partitionEithers","hackUnparse","print","readLineStdin","exit","mkdir","system","writeFile","appendFile","fileTime","isFile","isDirectory","readFile","cwd","envVar","listContents","deleteFile","deleteTree","copyFile","touchFile","error","unsafeIO","genInt","genRand","unsafeTrace","dirNameInFilePath","fileNameInFilePath","splitFileNameAndExtension","map","foldr","foldl","foldr1","foldl1","filter","partition","containsBy","nubBy","removeBy","removeAllBy","last","drop","take","dropWhile","takeWhile","takeUntil","positionOf","positionOfHelper","repeat","zipWith","reverse","sortBy","groupBy","intersperse","unionBy","intersectBy","unionsBy","nil","cons","append","null","listLength","head","tail","locationLte","fromMaybe","orElse","consMaybe","catMaybes","fst","snd","lookupBy","lookupAllBy","unzipPairs","parseTreeOrDieWithoutStackTrace","implode","explode","indexOf","lastIndexOf","substring","startsWith","endsWith","substitute","replicate","isDigit","isAlpha","isSpace","isLower","isUpper","toIntSafe","compareString","stringConcat","stringEq","stringLte","runIO","evalIO","unsafeEvalIO","bindList","returnList","bindMaybe","returnMaybe","runState","evalState","ioval")
   svlangBoolean=("false","true")
   svlangTodo=("contained","TODO","FIXME","XXX")
   svlangTermAttr=("lexeme","filename","line","column")

   parenthesis = ('{', '}')

   tokens = {
      'root' : [
         keywordList(svlangExternals, Keyword.Namespace),
         keywordList(svlangDeclarations, Keyword.Declaration),
         keywordList(svlangPrimitiveTypes, Keyword.Type),
         keywordList(svlangStorageClass, Keyword),
         keywordList(svlangScopeDeclarations, Keyword.Declaration),
         keywordList(svlangFlowOther, Keyword),
         keywordList(svlangFlow, Keyword),
         keywordList(svlangFunction, Name.Function),
         keywordList(svlangBoolean, Literal),
         keywordList(svlangTodo, Comment.Special),
         keywordList(svlangTermAttr, Keyword),
         (r'--.*', Comment.Single),
         (r'\/((\\\/)|[^/])*\/', String.Regex),
         (r'[0-9]+(\.[0-9]+)?', Number.Float),
         (r'[0-9]+', Number),
         (r'%s' % '|'.join(parenthesis), Punctuation),
         (r'[^\d\W]\w*', Name),
         (r'"(\\\\|\\"|[^"])*"', String),
         (r'\'(\\\\|\\\'|[^\\\'])*\'', String),
         (r'.', Text),
      ]
   }
