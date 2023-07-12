# -*- coding: utf-8 -*-
"""
    pygments.lexers.tyl
    ~~~~~~~~~~~~~~~~~~~~~~~

    Lexer for the Tyl Language a DSL for ERP written in Neverlang
"""

from pygments.lexer import inherit
from pygments.lexers.jvm import JavaLexer
from pygments.token import Comment, Keyword, Literal, Name

__all__ = ['TylLexer']

def keywordList(ls, tokenType):
    return (r'\b(%s)\b' % '|'.join(ls), tokenType)

class TylLexer(JavaLexer):
    """
    For the Tyl Language: a DSL for ERP written in Neverlang.

    .. versionadded:: 0.1
    """

    name = 'Tyl'
    aliases = ['tyl']
    filenames = ['*.tyl']

    keywords = ("case", "default", "error", "event", "event", "field", "form", "get", "identifier", "item", "item", "locals", "message", "module", "nested", "operation", "print", "prop", "property", "prototype", "readonly", "readwrite", "set", "this", "uses")
    sqlkeywords = ("as", "asc", "by", "delete", "desc", "from", "insert", "into", "is", "order", "select", "update", "values", "where")
    declarations = ("var")

    types = ("array", "boolean", "float", "int", "integer", "json", "string", "tjson")
    booleanLiterals = ("true", "false")
    literals = ("null")

    tokens = {
        'root': [
            (r'//.*?\n', Comment.Single),
            (r'/\*(.|\n)*?\*/', Comment.Multiline),
            keywordList(keywords, Keyword),
            keywordList(declarations, Keyword.Declaration),
            keywordList(sqlkeywords, Name.Builtin),
            keywordList(types, Keyword.Type),
            keywordList(booleanLiterals, Literal),
            keywordList(literals, Literal),
            inherit
        ]
    }
