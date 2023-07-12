# -*- coding: utf-8 -*-
"""
    pygments.lexers.jastaddjrag
    ~~~~~~~~~~~~~~~~~~~~~~~

    Lexers for declarative aspect files (JRAG) of the JastAdd language workbench
"""

import re

from pygments.lexers.jvm import JavaLexer
from pygments.token import *

__all__ = ['JastAddJragLexer']

class JastAddJragLexer(JavaLexer):
   """
   For JastAdd's JRAG declarative aspect files.

   .. versionadded:: 0.2
   """

   name = 'JastAddJrag'
   aliases = ['jastaddjrag']
   filenames = ['*.jrag']

   # Source: https://bitbucket.org/jastadd/jastadd-editor/src/43a1f215e36dd4bc43209172c31a9e09937d6509/eclipse-syntax/plugin/src/org/jastadd/syntax/editor/aspect/AspectScanner.java?at=master&fileviewer=file-view-default#AspectScanner.java-63
   keywords = ('aspect', 'syn', 'inh', 'eq', 'coll', 'contributes', 'when',
           'rewrite', 'nta', 'to', 'circular', 'with', 'for', 'each', 'root',
           'refine', 'lazy', 'ast')
   parenthesis = ('{', '}')

   tokens = {
      'root' : [
         (r'//.*?\n', Comment.Single),
         (r'/\*(.|\n)*?\*/', Comment.Multiline),
         (r'\b(%s)\b' % '|'.join(keywords), Keyword),
         (r'%s' % '|'.join(parenthesis), Punctuation),
         (r'[^\d\W]\w*', Name),
         (r'"(\\\\|\\"|[^"])*"', String),
         (r'.', Text),
      ]
   }
