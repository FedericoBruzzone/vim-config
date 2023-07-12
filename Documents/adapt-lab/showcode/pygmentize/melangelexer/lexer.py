# -*- coding: utf-8 -*-
"""
    pygments.lexers.melange
    ~~~~~~~~~~~~~~~~~~~~~~~

    Lexers for specification files used in the Melange language workbench
"""

import re

from pygments.lexer import RegexLexer
from pygments.token import *

__all__ = ['MelangeLexer']

class MelangeLexer(RegexLexer):
   """
   For Melange source files.

   .. versionadded:: 0.2
   """

   name = 'Melange'
   aliases = ['melange']
   filenames = ['*.melange']

   # Obtained from the Xtext's Melange grammar: https://github.com/diverse-project/melange/blob/081d5035f5498b07417ef58ae181de00e956df21/plugins/fr.inria.diverse.melange/src/main/java/fr/inria/diverse/melange/Melange.xtext
   keywords = ("package", "external", "language", "inherits", "implements",
           "requires", "resource", "uri", "setup", "xtext", "sirius", "ecl",
           "xmof", "fileExtension", "exactType", "uri", "annotation", "language",
           "implements", "resource", "uri", "setup", "xtext", "sirius", "ecl",
           "xmof", "fileExtension", "exactType", "uri", "Melange", "EMF", "Xtext",
           "modeltype", "syntax", "uri", "transformation", "map", "to", "syntax",
           "withGenmodel", "renaming", "syntax", "withGenmodel", "merge",
           "renaming", "slice", "on", "renaming", "with")
   parenthesis = ('{', '}')

   tokens = {
      'root' : [
         (r'//.*?\n', Comment.Single),
         (r'/\*(.|\n)*?\*/', Comment.Multiline),
         (r'\b(%s)\b' % '|'.join(keywords), Keyword),
         (r'%s' % '|'.join(parenthesis), Punctuation),
         (r'\'(\\\\|\\\'|[^\\\'])*\'', String),
         (r'"(\\\\|\\"|[^"])*"', String),
         (r'[^\d\W]\w*', Name),
         (r'.', Text),
      ]
   }
