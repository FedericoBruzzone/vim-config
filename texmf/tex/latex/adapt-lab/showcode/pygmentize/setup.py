from setuptools import find_packages, setup

setup(
    name='LogLangLexer',
    packages=find_packages(),
    entry_points="""
    [pygments.lexers]
    loglanglexer = loglanglexer.lexer:LogLangLexer
    """,
)

setup(
    name='JastAddJragLexer',
    packages=find_packages(),
    entry_points="""
    [pygments.lexers]
    jastaddjraglexer = jastaddjraglexer.lexer:JastAddJragLexer
    """,
)

setup(
    name='JastAddASTLexer',
    packages=find_packages(),
    entry_points="""
    [pygments.lexers]
    jastaddastlexer = jastaddastlexer.lexer:JastAddASTLexer
    """,
)

setup(
    name='JastAddConcLexer',
    packages=find_packages(),
    entry_points="""
    [pygments.lexers]
    jastaddconclexer = jastaddconclexer.lexer:JastAddConcLexer
    """,
)

setup(
    name='SimpleLanguageLexer',
    packages=find_packages(),
    entry_points="""
    [pygments.lexers]
    simplelanguagelexer = simplelanguagelexer.lexer:SimpleLanguageLexer
    """,
)

setup(
    name='TypeLangLexer',
    packages=find_packages(),
    entry_points="""
    [pygments.lexers]
    typelanglexer = typelanglexer.lexer:TypeLangLexer
    """,
)

setup(
    name='NeverlangLexer',
    version='1.0ß',
    packages=find_packages(),
    description='A Neverlang Lexer to be used with Pygments/Pygmentize',
    url='https://neverlang2.di.unimi.it',
    author='Walter Cazzola',
    author_email='cazzola@di.unimi.it',
    license='MIT',
    classifiers=[
        'Development Status :: 1 - Beta',
        'Intended Audience :: Developers',
        'Intended Audience :: End Users/Desktop',
        'Intended Audience :: Information Technology',
        'Intended Audience :: Science/Research',
        'Topic :: Software Development',
        'Topic :: Software Development :: Pre-processors',
        'License :: OSI Approved :: MIT License',
        'Programming Language :: Python',
        'Programming Language :: Python :: 3',
        'Programming Language :: Python :: 3.3',
        'Programming Language :: Python :: 3.4',
        'Programming Language :: Python :: 3.5',
        'Environment :: Plugins',
    ],
    install_requires=['pygments'],
    keywords='Neverlang pygments lexer',
    entry_points="""
    [pygments.lexers]
    neverlanglexer = neverlanglexer.lexer:NeverlangLexer
    """,
)

setup(
    name='TylLexer',
    version='0.1ß',
    packages=find_packages(),
    description='A Tyl Language Lexer to be used with Pygments/Pygmentize',
    url='https://neverlang2.di.unimi.it',
    author='Walter Cazzola',
    author_email='cazzola@di.unimi.it',
    license='MIT',
    classifiers=[
        'Development Status :: 1 - Beta',
        'Intended Audience :: Developers',
        'Intended Audience :: End Users/Desktop',
        'Intended Audience :: Information Technology',
        'Intended Audience :: Science/Research',
        'Topic :: Software Development',
        'Topic :: Software Development :: Pre-processors',
        'License :: OSI Approved :: MIT License',
        'Programming Language :: Python',
        'Programming Language :: Python :: 3',
        'Programming Language :: Python :: 3.3',
        'Programming Language :: Python :: 3.4',
        'Programming Language :: Python :: 3.5',
        'Environment :: Plugins',
    ],
    install_requires=['pygments'],
    keywords='Tyl pygments lexer',
    entry_points="""
    [pygments.lexers]
    tyllexer = tyllexer.lexer:TylLexer
    """,
)

setup(
    name='SpirVLexer',
    packages=find_packages(),
    entry_points="""
    [pygments.lexers]
    spirvlexer = spirvlexer.lexer:SpirVLexer
    """,
)

setup(
    name='JavaSMLexer',
    packages=find_packages(),
    entry_points="""
    [pygments.lexers]
    javasmlexer = javasmlexer.lexer:JavaSMLexer
    """,
)

setup(
    name='RoleJavaLexer',
    packages=find_packages(),
    entry_points="""
    [pygments.lexers]
    rolejavalexer = rolejavalexer.lexer:RoleJavaLexer
    """,
)

setup(
    name='MeltSilverLexer',
    packages=find_packages(),
    entry_points="""
    [pygments.lexers]
    meltsilverlexer = meltsilverlexer.lexer:MeltSilverLexer
    """,
)

setup(
    name='RascalLexer',
    packages=find_packages(),
    entry_points="""
    [pygments.lexers]
    rascallexer = rascallexer.lexer:RascalLexer
    """,
)

setup(
    name='EvilLexer',
    packages=find_packages(),
    entry_points="""
    [pygments.lexers]
    evillexer = evillexer.lexer:EvilLexer
    """,
)

setup(
    name='MonticoreLexer',
    packages=find_packages(),
    entry_points="""
    [pygments.lexers]
    monticorelexer = monticorelexer.lexer:MonticoreLexer
    """,
)

setup(
    name='MelangeLexer',
    packages=find_packages(),
    entry_points="""
    [pygments.lexers]
    melangelexer = melangelexer.lexer:MelangeLexer
    """,
)

setup(
    name='XtextLexer',
    packages=find_packages(),
    entry_points="""
      [pygments.lexers]
      xtextlexer = xtextlexer.lexer:XtextLexer
    """,
)

setup(
    name='SDF3Lexer',
    packages=find_packages(),
    entry_points="""
      [pygments.lexers]
      sdf3lexer = sdf3lexer.lexer:SDF3Lexer
    """,
)

setup(
    name='StrategoLexer',
    packages=find_packages(),
    entry_points="""
      [pygments.lexers]
      strategolexer = strategolexer.lexer:StrategoLexer
    """,
)

setup(
    name='LexLexer',
    packages=find_packages(),
    entry_points="""
      [pygments.lexers]
      yacclexer = lexlexer.lexer:LexLexer
    """,
)

setup(
    name='YACCLexer',
    packages=find_packages(),
    entry_points="""
      [pygments.lexers]
      yacclexer = yacclexer.lexer:YACCLexer
    """,
)
