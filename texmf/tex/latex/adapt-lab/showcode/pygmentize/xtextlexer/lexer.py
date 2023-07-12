# -*- coding: utf-8 -*-
"""
    pygments.lexers.xtext
    ~~~~~~~~~~~~~~~~~~~~~~~

    Lexers for Xtext grammar specifications

    Adapted from Xtext lexer for Editra by Igor Dejanovic
    https://bazaar.launchpad.net/~ubuntu-branches/ubuntu/trusty/editra/trusty/view/head:/src/syntax/_xtext.py
"""

import re

from pygments.lexer import *
from pygments.token import *

__all__ = ['XTextLexer']

class XtextLexer(RegexLexer):
    """
    Xtext lexer based on statefull RegexLexer from pygments library.
    """

    KEYWORDS = ("grammar generate import returns enum terminal hidden with as current super")
    TERMINALS = ("ID INT STRING")

    name = 'Xtext'
    aliases = ['xtext']
    filenames = ['*.xtext']
    mimetypes = ['text/x-xtext']

    flags = re.MULTILINE | re.DOTALL # | re.UNICODE

    #: optional Comment or Whitespace
    #_ws = r'(?:\s|//.*?\n|/[*].*?[*]/)+'

    def AltWords(words):
        """Makes lexer rule for alternative words from the given words list.
        @param words: string consisting of space separated words
        @return: string in the form \\bword1\\b|\\bword2\\b|\\bword3\b...
        """
        return "|".join([ "\\b%s\\b" % w for w in words.split()])

    _ident = r'\^?[a-zA-Z_\$][a-zA-Z0-9_]*'

    tokens = {
        'root': [
            (include('first')),
            (_ident + r'(\.' + _ident + r')+', Name.Package),
            (r'@[a-zA-Z_][\w.]*', Name.Decorator),
            ('(' + _ident + r')(\s*)(returns)',
                bygroups(Name.AbstractRule, Text.Whitespace, Keyword), 'parserrule'),
            ('(' + _ident + r')(\s*)(:)',
                bygroups(Name.AbstractRule, Text.Whitespace, Punctuation), 'parserrule'),
            (_ident, Name),
        ],
        'first': [
            (r'/\*', Comment.Multiline, 'comment'),
            (r'\n', Token.EndOfLine),
            (r'//[^\n]*$', Comment.Single),
            (r'[ \t]+', Text.Whitespace),
            (r'"(\\\\|\\"|[^"])*"', String),
            (r"'(\\\\|\\'|[^'])*'", String),
            (r'\*|\?|\+|!|\||=|\?=|\+=|\.\.|->', Operator),
            (r'[()\[\]{}:]', Punctuation),
            (r'[0-9]+', Number.Integer),
            (AltWords(KEYWORDS), Keyword),
            (AltWords(TERMINALS), Keyword.Pseudo),
            (_ident + r'(::' + _ident + r')+', Name.Package.EMF),
        ],
        'parserrule': [
            (include('first')),
            ('(' + _ident + r'(\.' + _ident + r')?)([ \t]*)(=|\?=|\+=)',
                bygroups(Name.Feature, None, Text, Operator)),
            (_ident + r'(\.' + _ident + r')+', Name.Package),
            (_ident, Name.CrossRef),
            (r';', Punctuation, "#pop"),
        ],
        'comment': [
            # Nested and multiline comments
            (r'/\*', Comment.Multiline, "#push"),
            (r'\*/', Comment.Multiline, "#pop"),
            (r'\n', Token.EndOfLine),
            (r'[^/*\n]+', Comment.Multiline),
            (r'\*|\/', Comment.Multiline),
        ],
    }
