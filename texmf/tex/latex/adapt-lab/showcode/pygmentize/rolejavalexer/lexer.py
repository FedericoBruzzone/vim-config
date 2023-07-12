# -*- coding: utf-8 -*-
"""
    pygments.lexers.rolejava
    ~~~~~~~~~~~~~~~~~~~~~~~~~

    Lexers for the Role-Based Extensions of the Java Language.
"""

import re
import sys

from pygments.lexer import RegexLexer, include, bygroups, using, this, inherit
from pygments.token import Keyword, String, Comment, Name, Operator, Punctuation, Text, Number
from pygments.lexers.jvm import JavaLexer

__all__ = ['RoleJavaLexer']

class RoleJavaLexer(JavaLexer):
   """
   For the Role-Based Extensions of the Java Language

   .. versionadded:: 0.1
   """

   name = 'RoleJava'
   aliases = ['rolejava']
   filenames = ['*.rjava', '*.java']

   comments_or_spaces = '|'.join(['\s*//.*?\n\s*', '\s*/\*.*?\*/\s*', '\s+', '\s*'])
   keywords = ["ROLE", "@core", "@INVOKEROLE", "roleof", "definerole", "realizes", "role", "playedby", "playedBy", "that", "team", "replace", "base", "application", "main", "relationship", "participants", "these", "add", "entity", "relation", "module", "model", "data", "execute", "sum", "range", "domain"]
   kw_pattern = '|'.join(keywords)

   tokens = {
     'root': [
        (r'({0})'.format(kw_pattern), Keyword),
        inherit
     ]

   }
