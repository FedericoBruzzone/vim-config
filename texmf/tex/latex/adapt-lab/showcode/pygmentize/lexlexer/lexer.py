# -*- coding: utf-8 -*-
"""
    pygments.lexers.lex
    ~~~~~~~~~~~~~~~~~~~

    Lexers for the Lex tool.
"""

import re

from pygments.lexer import RegexLexer, bygroups, inherit, this, using, words
from pygments.lexers.c_cpp import CFamilyLexer
from pygments.token import Comment, Keyword, Name, Punctuation, String, Text

__all__ = ['LexLexer']

class ExtCFamilyLexer(CFamilyLexer):
    tokens = {
        'root': [
            (r'([$][0-9]+?|[$][$])', Keyword),
            inherit,
        ]
    }

class LexLexer(RegexLexer):
    """
    For the Lex code with the semantic actions written in C.

    .. versionadded:: 0.1
    """

    name = 'Lex'
    aliases = ['lex']
    filenames = ['*.l']
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
            (r'\"[^"]*\"', String),
            (r'(\b[a-z]+\b)', Name.Label),
            (r'[;:|]', Keyword),
            (r'.', Text)
        ]
    }
