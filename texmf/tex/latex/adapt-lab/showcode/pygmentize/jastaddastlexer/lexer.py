# -*- coding: utf-8 -*-
"""
    pygments.lexers.jastaddast
    ~~~~~~~~~~~~~~~~~~~~~~~

    Lexers for AST specification files of the JastAdd language workbench
"""

import re

from pygments.lexer import RegexLexer
from pygments.token import *

__all__ = ['JastAddASTLexer']

class JastAddASTLexer(RegexLexer):
   """
   For JastAdd's AST specification files.

   .. versionadded:: 0.2
   """

   name = 'JastAddAST'
   aliases = ['jastaddast']
   filenames = ['*.ast']

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
         (r'.', Text),
      ]
   }
