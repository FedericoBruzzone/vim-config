# -*- coding: utf-8 -*-
"""
    pygments.lexers.monticorelexer
    ~~~~~~~~~~~~~~~~~~~~~~~

    Lexers for grammar specification files of the Monticore language workbench
"""

import re

from pygments.lexer import RegexLexer
from pygments.token import *

__all__ = ['MonticoreLexer']

class MonticoreLexer(RegexLexer):
   """
   For Monticore grammar specification files.

   .. versionadded:: 0.2
   """

   name = 'Monticore'
   aliases = ['monticore']
   filenames = ['*.mc4']

   keywords = ('component', 'package', 'grammar', 'options', 'astimplements',
           'astextends', 'interface', 'enum', 'implements', 'external', 'fragment',
           'extends', 'returns', 'ast', 'token', 'protected', 'scope', 'symbol')
   parenthesis = ('{', '}')

   tokens = {
      'root' : [
         (r'//.*?\n', Comment.Single),
         (r'/\*(.|\n)*?\*/', Comment.Multiline),
         (r'\b(%s)\b' % '|'.join(keywords), Keyword),
         (r'=', Operator),
         (r'%s' % '|'.join(parenthesis), Punctuation),
         (r'[^\d\W]\w*', Name),
         (r'.', Text),
      ]
   }
