# -*- coding: utf-8 -*-
"""
    pygments.lexers.simplelanguage
    ~~~~~~~~~~~~~~~~~~~~~~~

    Lexers for the TypeLang domain specific language.
"""

from pygments.lexer import RegexLexer
from pygments.token import Comment, Keyword, Punctuation, Name, String, Text

__all__ = ['TypeLangLexer']

class TypeLangLexer(RegexLexer):
   """ 
   For the TypeLang domain specific language.

   .. versionadded:: 0.3
   """

   name = 'TypeLangLexer'
   aliases = ['typelang']
   filenames = ['*.tl']

   references = ['\$\$', '(\#|\$)[\w\d_-]+\[\d+?\]\.[\w\d_]+', '(\#|\$)[\w\d_-]+\[\d+?\]', '(\#|\$)[\w\d_-]+\.[\w\d_]+', '(\#|\$)([\w\d_-]+)', '(\$|\#)\d+?\.[\w\d_]+?', '(\$|\#)\d+?']
   reserved = ('define', 'enter','scope','initRoot','run', 'exit', 'then', 'with', 'priority', 'infer','try','on','check', "import", "as", "from")
   parenthesis1 = ('[', ']')
   parenthesis2 = ('(', ')')

   tokens = {
      'root' : [
         (r'//.*?\n', Comment.Single),
         (r'(eval)', Keyword.Pseudo),
         # (r'({0})'.format(references), Keyword.Pseudo),
         (r'/\*(.|\n)*?\*/', Comment.Multiline),
   #      (r'\b(%s)\b' % '|'.join(modules), Name.Entity), 
         (r'\b(%s)\b' % '|'.join(reserved), Keyword.Reserved), 
         # (r'\b(%s)\b' % '|'.join(variables), Name.Variable), 
         # (r'%s' % '|'.join(parenthesis1), Punctuation), 
         # (r'%s' % '|'.join(parenthesis2), Punctuation), 
         (r'.', Text)
      ] 
   }
