# -*- coding: utf-8 -*-
"""
    pygments.lexers.stratego
    ~~~~~~~~~~~~~~~~~~~~~~~

    Lexers for the Stratego (Syntax Definition Formalism) language used in the Spoofax language workbench
"""

import re

from pygments.lexer import RegexLexer
from pygments.token import *

__all__ = ['StrategoLexer']

class StrategoLexer(RegexLexer):
   """

   .. versionadded:: 0.2
   """

   name = 'Stratego'
   aliases = ['stratego']
   filenames = ['*.str']

   keywords = ('module', 'imports', 'rules', 'constructors', 'signature', 'with', 'strategies')
   #parenthesis = ('[', ']')

   tokens = {
      'root' : [
         (r'//.*?\n', Comment.Single),
         (r'/\*(.|\n)*?\*/', Comment.Multiline),
         (r'\b(%s)\b' % '|'.join(keywords), Keyword),
         (r'::=', Operator),
         #(r'%s' % '|'.join(parenthesis), Punctuation),
         (r'[^\d\W]\w*', Name),
         (r'"(\\\\|\\"|[^"])*"', String),
         (r'.', Text),
      ]
   }
