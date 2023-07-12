readme-pygmentize
——————————————————————————————————————————————————————————————————————————————————————— TITLE

### This folder contains all lexers developed to support the syntax highlighting in pygmentize.

# To support a new language.

  • Any new lexer should be in a directory with this structure:

    {{{bash loglanglexer
    ├── __init__.py
    └── lexer.py}}}

  • In setup.py an entry for the new lexer should be added:

     {{{python setup (
       name='LogLangLexer',
       packages=find_packages(),
       entry_points =
       """
       [pygments.lexers]
       loglanglexer = loglanglexer.lexer:LogLangLexer
       """,
     )}}}

# To install the lexers.

  • As root:
     ▸ go where your setup.py is and
       {{{bash> python3 setup.py develop}}}
