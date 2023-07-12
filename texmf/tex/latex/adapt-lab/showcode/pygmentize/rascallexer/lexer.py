# -*- coding: utf-8 -*-
"""
    pygments.lexers.rascal
    ~~~~~~~~~~~~~~~~~~~~~~~

    Lexer for the Rascal Meta-Programming Language (https://www.rascal-mpl.org/)
"""

from pygments.lexer import RegexLexer
from pygments.token import Comment, Keyword, Literal, Number, Punctuation, String, Text

__all__ = ['RascalLexer']

def keywordList(ls, tokenType):
    return (r'\b(%s)\b' % '|'.join(ls), tokenType)

class RascalLexer(RegexLexer):
    """
    For Rascal Meta-Programming language.

    .. versionadded:: 0.2
    """

    name = 'Rascal'
    aliases = ['rascal']
    filenames = ['*.rsc']

    keywords = ("syntax", "keyword", "lexical", "break", "continue", "finally", "private", "fail", "filter",
                "if", "tag", "extend", "append", "non-assoc", "assoc", "test", "anno", "layout", "data", "join", "it",
                "bracket", "in", "import", "all", "solve", "try", "catch", "notin", "else", "insert", "switch", "return",
                "case", "while", "throws", "visit", "for", "assert", "default", "map", "alias", "any", "module", "mod",
                "public", "one", "throw", "start")
    types = ("value", "loc", "node", "num", "type", "bag", "int", "rat", "rel", "lrel", "real",
             "tuple", "str", "bool", "void", "datetime", "set", "map", "list")
    booleanLiterals = ("true", "false")

    parenthesis = ('{', '}')

    tokens = {
        'root': [
            (r'//.*?\n', Comment.Single),
            (r'/\*(.|\n)*?\*/', Comment.Multiline),
            keywordList(keywords, Keyword.Namespace),
            keywordList(types, Keyword.Type),
            keywordList(booleanLiterals, Literal),
            #(r'\/((\\\/)|[^/])*\/', String.Regex),
            (r'[0-9]+(\.[0-9]+)?', Number.Float),
            (r'[0-9]+', Number),
            (r'%s' % '|'.join(parenthesis), Punctuation),
            #(r'[^\d\W]\w*', Name),
            (r'"(\\\\|\\"|[^"])*"', String),
            (r'\'(\\\\|\\\'|[^\\\'])*\'', String),
            (r'.', Text),
        ]
    }
