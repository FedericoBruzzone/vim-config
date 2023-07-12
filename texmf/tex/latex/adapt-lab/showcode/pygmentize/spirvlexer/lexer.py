# -*- coding: utf-8 -*-
"""
    pygments.lexers.spirv
    ~~~~~~~~~~~~~~~~~~~~~~~

    Lexers for the Spir-V language.
"""

import re 

from pygments.lexer import RegexLexer, bygroups, using, this
from pygments.token import *

__all__ = ['SpirVLexer']

class SpirVLexer(RegexLexer):
   """ 
   For the Spir-V language.

   .. versionadded:: 0.2
   """

   name = 'SpirV'
   aliases = ['spirv', 'spir-v']
   filenames = ['*.spvasm', '*.spirv', '*.spir-v']

   tokens = {
      'root' : [
         (r';.*?\n', Comment.Single),
         (r'(%[a-z_A-Z0-9]+)(\s*=)', bygroups(Name.Function, using(this))),
         (r'(%[a-z_A-Z0-9]+)', Name.Class),
         (r'([0-9][0-9_]*\.([0-9][0-9_]*)?|'
          r'\.[0-9][0-9_]*)'
          r'([eE][+\-]?[0-9][0-9_]*)?[fFdD]?|'
          r'[0-9][eE][+\-]?[0-9][0-9_]*[fFdD]?|'
          r'[0-9]([eE][+\-]?[0-9][0-9_]*)?[fFdD]|'
          r'0[xX]([0-9a-fA-F][0-9a-fA-F_]*\.?|'
          r'([0-9a-fA-F][0-9a-fA-F_]*)?\.[0-9a-fA-F][0-9a-fA-F_]*)'
          r'[pP][+\-]?[0-9][0-9_]*[fFdD]?', Number.Float),
         (r'0|[-]?[1-9][0-9_]*[lL]?', Number.Integer),
         (r'(")((?:\\\\|\\"|[^"])*)(")', bygroups(String.Delimiter, String, String.Delimiter)),
         (r'\b([A-Za-z_0-9]+)\b', Keyword), # \b matches the empty string so what in %s is an exact word not part of 
         (r'.', Text)
      ] 
   }
