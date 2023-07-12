# -*- coding: utf-8 -*-
"""
    pygments.lexers.loglang
    ~~~~~~~~~~~~~~~~~~~~~~~

    Lexers for the LogLang domain specific language.
"""

from pygments.lexer import RegexLexer
from pygments.token import Comment, Keyword, Name, Punctuation, String, Text

__all__ = ['LogLangLexer']

class LogLangLexer(RegexLexer):
    """
    For the LogLang domain specific language.

    .. versionadded:: 0.2
    """

    name = 'LogLang'
    aliases = ['loglang']
    filenames = ['*.loglang', '*.ll']

    keywords = ('remove', 'task', 'merge', 'backup', 'rename')
    parenthesis = ('{', '}')

    tokens = {
        'root': [
            (r'//.*?\n', Comment.Single),
            (r'/\*(.|\n)*?\*/', Comment.Multiline),
            (r'\b(%s)\b' % '|'.join(keywords), Keyword),  # \b matches the empty string so what in %s is an exact word not part of
            (r'%s' % '|'.join(parenthesis), Punctuation),
            (r'[^\d\W]\w*', Name),
            (r'"(\\\\|\\"|[^"])*"', String),
            (r'.', Text)
        ]
    }
