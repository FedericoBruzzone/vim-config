# -*- coding: utf-8 -*-
"""
    pygments.lexers.yacc
    ~~~~~~~~~~~~~~~~~~~~~~~~~

    Lexers for the YACC tool.
"""

import re

from pygments.lexer import RegexLexer, bygroups, inherit, this, using, words
from pygments.lexers.c_cpp import CFamilyLexer
from pygments.token import Comment, Keyword, Name, Punctuation, String, Text

__all__ = ['YACCLexer']

class ExtCFamilyLexer(CFamilyLexer):
    tokens = {
        'root': [
            (r'([$][A-Z0-9]+|[$][$])', Keyword),
            inherit,
        ]
    }

class YACCLexer(RegexLexer):
    """
    For the YACC code with the semantic actions written in C.

    .. versionadded:: 0.1
    """

    name = 'YACC'
    aliases = ['yacc']
    filenames = ['*.y']
    flags = re.DOTALL

    keywords = ('%left', '%nonassoc', '%prec', '%right', '%start', '%token', '%type', '%union')

    tokens = {
        'root': [
            (r'(.*?(?=%%))(%%)(.*?(?=%%))(%%)(.*$)', bygroups(using(this), Keyword, using(this), Keyword, using(CFamilyLexer))),
            (r'(%{)([^%]*)(%})', bygroups(Keyword, using(CFamilyLexer), Keyword)),
            (r'({)([^}]*)(})', bygroups(Punctuation, using(ExtCFamilyLexer), Punctuation)),
            (words(keywords, suffix=r'\b'), Keyword.Declaration),
            (r'//.*?\n', Comment.Single),
            (r'/\*(.|\n)*?\*/', Comment.Multiline),
            (r"\'[^']*\'", String),
            (r'(\b[a-z]+\b)', Name.Label),
            (r'[;:|]', Keyword),
            (r'.', Text)
        ]
    }
