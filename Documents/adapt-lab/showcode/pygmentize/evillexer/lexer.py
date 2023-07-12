# -*- coding: utf-8 -*-
"""
    pygments.lexers.evil
    ~~~~~~~~~~~~~~~~~~~~~~~

    Lexers for the Evil domain specific language.
"""

from pygments.lexer import RegexLexer
from pygments.token import Comment, Keyword, Punctuation, Name, String, Text

__all__ = ['EvilLexer']

class EvilLexer(RegexLexer):
   """ 
   For the Evil domain specific language.

   .. versionadded:: 0.3
   """

   name = 'Evil'
   aliases = ['evil']
   filenames = ['*.evil', '*.ev']

   keywords = ('import','export','from','into','render','dump','package','open')
   reserved = ('if','while','alt','return','else')
   modules = ('strategy','guard','freeze','RPN','function','py','lib','op')
   types = ('int','float','numeric','list','multiset','string','boolean','node','transition','place')
   variables = ('true','false')
   parenthesis = ('{', '}')

   tokens = {
      'root' : [
         (r'//.*?\n', Comment.Single),
         (r'/\*(.|\n)*?\*/', Comment.Multiline),
         (r'\b(%s)\b' % '|'.join(keywords), Keyword), 
         (r'\b(%s)\b' % '|'.join(reserved), Keyword.Reserved), 
         (r'\b(%s)\b' % '|'.join(types), Keyword.Type), 
         (r'\b(%s)\b' % '|'.join(variables), Name.Variable), 
         (r'\b(%s)\b' % '|'.join(modules), Name.Entity), 
         (r'%s' % '|'.join(parenthesis), Punctuation), 
         (r'[a-zA-Z][a-zA-Z0-9]*', Name),
         (r'"(\\\\|\\"|[^"])*"', String),
         (r'.', Text)
      ] 
   }
