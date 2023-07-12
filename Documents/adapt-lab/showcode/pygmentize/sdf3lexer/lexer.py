# -*- coding: utf-8 -*-
"""
    pygments.lexers.sdf3
    ~~~~~~~~~~~~~~~~~~~~~~~

    Lexers for the SDF3 (Syntax Definition Formalism) grammar specification language used in the Spoofax language workbench
"""

import re

from pygments.lexer import RegexLexer
from pygments.token import *

__all__ = ['SDF3Lexer']

class SDF3Lexer(RegexLexer):
   """
   For SDF3 files.

   .. versionadded:: 0.2
   """

   name = 'SDF3'
   aliases = ['sdf3']
   filenames = ['*.sdf3']

   keywords = ('module', 'imports', 'lexical', 'syntax', 'context-free', 'start-symbols', 'priorities')
   parenthesis = ('[', ']')

   tokens = {
      'root' : [
         (r'//.*?\n', Comment.Single),
         (r'/\*(.|\n)*?\*/', Comment.Multiline),
         (r'\b(%s)\b' % '|'.join(keywords), Keyword),
         (r'::=', Operator),
         (r'%s' % '|'.join(parenthesis), Punctuation),
         (r'[^\d\W]\w*', Name),
         (r'"(\\\\|\\"|[^"])*"', String),
         (r'.', Text),
      ]
   }
