# -*- coding: utf-8 -*-
"""
    pygments.lexers.simplelanguage
    ~~~~~~~~~~~~~~~~~~~~~~~

    Lexers for the Simplelanguage domain specific language.
"""

from pygments.lexer import RegexLexer
from pygments.token import Comment, Keyword, Punctuation, Name, String, Text

__all__ = ['SimpleLanguageLexer']

class SimpleLanguageLexer(RegexLexer):
   """ 
   For the Evil domain specific language.

   .. versionadded:: 0.3
   """

   name = 'SimpleLanguage'
   aliases = ['simplelanguage']
   filenames = ['*.sl']

   reserved = ('function', 'if','while','return','else')
   variables = ('true','false')
   parenthesis = ('{', '}')

   tokens = {
      'root' : [
         (r'//.*?\n', Comment.Single),
         (r'/\*(.|\n)*?\*/', Comment.Multiline),
   #      (r'\b(%s)\b' % '|'.join(modules), Name.Entity), 
         (r'\b(%s)\b' % '|'.join(reserved), Keyword.Reserved), 
         (r'\b(%s)\b' % '|'.join(variables), Name.Variable), 
         (r'%s' % '|'.join(parenthesis), Punctuation), 
         (r'"(\\\\|\\"|[^"])*"', String),
         (r'.', Text)
      ] 
   }
