# -*- coding: utf-8 -*-
"""
    pygments.lexers.javasm
    ~~~~~~~~~~~~~~~~~~~~~~

    Lexers for the Java Dialect merged with State Machines.
"""

from pygments.lexer import inherit
from pygments.lexers.jvm import JavaLexer
from pygments.token import Keyword

__all__ = ['JavaSMLexer']

class JavaSMLexer(JavaLexer):
    """
    Lexers for the Java Dialect merged with State Machines.

    .. versionadded:: 0.1
    """

    name = 'JavaSM'
    aliases = ['javasm']
    filenames = ['*.javasm', '*.java+sm', '*.java']

    keywords = ['state', 'machine', 'transition', 'from', 'to']
    kw_pattern = '|'.join(keywords)

    tokens = {
        'root': [
            (r'({0})'.format(kw_pattern), Keyword),
            inherit
        ]

    }
