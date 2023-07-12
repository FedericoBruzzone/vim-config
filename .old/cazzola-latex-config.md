# Latex config

> adapt-lab folder position: /usr/local/share/texmf/tex/latex/

> texlive folder: /usr/share/texlive/texmf-dist/web2c

> latexmk folder: /usr/share/texmf/web2c

Find `texmf.cnf` file and find the line containing the varibale TEXMFLOCAL. In the path where this variable points to:

Run: `chown -R fcb.federicobruzzoneplasma (that path) /usr/local/share/texmf` 

Put: `adapt-lab` folder into it and remove from thesis the sample folder

Run `sudo texconfig` -> REHASH

copy all config files


