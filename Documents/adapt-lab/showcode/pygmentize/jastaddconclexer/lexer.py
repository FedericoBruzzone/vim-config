# -*- coding: utf-8 -*-
"""
    pygments.lexers.jastaddconc
    ~~~~~~~~~~~~~~~~~~~~~~~

    Lexers for Concrete specification files of the JastAdd language workbench

    Links about concrete:
    - Repository: https://bitbucket.org/jastadd/concrete-exjobb
    - Harald Görtz's thesis: http://sam.cs.lth.se/ExjobGetFile?id=660
"""

import re

from pygments.lexer import RegexLexer
from pygments.token import *

__all__ = ['JastAddConcLexer']

class JastAddConcLexer(RegexLexer):
   """
   For JastAdd's Concrete specification files.

   .. versionadded:: 0.2
   """

   name = 'JastAddConc'
   aliases = ['jastaddconc']
   filenames = ['*.conc']

   # Source: https://bitbucket.org/jastadd/jastadd-editor/src/43a1f215e36dd4bc43209172c31a9e09937d6509/eclipse-syntax/plugin/src/org/jastadd/syntax/editor/grammar/GrammarScanner.java?at=master&fileviewer=file-view-default#GrammarScanner.java-59
   keywords = ('abstract', 'package', 'import', 'boolean', 'int', 'float',
           'double', 'short', 'long', 'byte')
   parenthesis = ('<', '>')

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
