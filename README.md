# Vim Config

## How to start

1. **Clone the repo to any folder**

```bash
$ git clone https://github.com/FedericoBruzzone/vim-config.git
```

2. **Add in your .bashrc**

```bash
export VIM_HOME=<The path where you cloned the repo>/vim-config
```

3. **Replace your .vimrc**    

```bash
$ cp <The path where you cloned the repo>/.vimrc ~/home/<username>
```

4. **Open vim**

`:PlugInstall`

---

## Plugins

### Coc

|Command                   |Mode                         |Action                                    |
|--------------------------|-----------------------------|------------------------------------------|
|`<CTRL>` + `o`            |_Normal_                     |Go back after `gd`                        |


### ALE

|Command                   |Mode                         |Action                                    |
|--------------------------|-----------------------------|------------------------------------------|
|<Enter>                   |_Insert_                     |Confirm choice                            |

### NERD Tree

|Command           |Mode                         |Action                                  |
|------------------|-----------------------------|----------------------------------------|
|`<F3>`            |_Normal_ / _Insert_          |toggle NERD Tree                        |
|`<SHIFT>` + `i`   |_NERDTree_                   |show hidden files                       |
|`i`               |_NERDTree_                   |open file in orizontal mode             |
|`s`               |_NERDTree_                   |open file in vertical mode              |
|`t`               |_NERDTree_                   |open file in a new tab                  |
|:T                |_Normal_                     |open NERDTree in a current directory    |

### Tag bar

|Command           |Mode                         |Action                                  |
|------------------|-----------------------------|----------------------------------------|
|`<F4>`            |_Normal_ / _Insert_          |toggle Tag Bar                          |

### Floaterm

|Command           |Mode                         |Action                                  |
|------------------|-----------------------------|----------------------------------------|
|`<F5>`            |_Normal_                     |:FloatermNew                            |
|`<F5>`            |_Floaterm_                   |<CTRL-\><CTRL-n>:FloatermKill           |
|`<F6>`            |_Normal_                     |:FloatermToggle                         |
|`<F6>`            |_Floaterm_                   |<CTRL-\><CTRL-n>:FloatermToggle         |

### Fzf

|Command           |Mode                         |Action                                  |
|------------------|-----------------------------|----------------------------------------|
|`<F2>`            |_Normal_                     |open `:files`                           |
|`:Files!`         |_Normal_                     |open `:files` full screen               |
|`<CTRL>` + `t`    |_File mode_                  |open file in new tab                    |
|`<CTRL>` + `v`    |_File mode_                  |open file in vertical split             |
|`<CTRL>` + `x`    |_File mode_                  |open file in horizontal split           |
|:F                |_Normal_                     |open fzf in the current directory       |

### Vim-Repl 

|Command                             |Mode                  |Action                                        |
|------------------------------------|----------------------|----------------------------------------------|
|`<leader>r`                        |_Normal_               |:REPLToggle                                   |
|`<leader>w`                        |_Normal_               |Send to vim repl                              |


### Vim Notes 

|Command                             |Mode                  |Action                                        |
|------------------------------------|----------------------|----------------------------------------------|
|`gf`                                |_Normal_              |Open Link to another notes                    |
|`:RecentNotes`                      |_Normal_              |Open lists all notes                          |
|`:Note`                             |_Normal_              |Create new note                               |
|`:edit note:<namenote>`             |_Normal_              |Edit exist note                               |
|`:DeleteNote`                       |_Normal_              |Delete exist note                               |


### How Much

Block-wise selection (Ctrl-V)

|Command              |Mode              |Action                                                 |
|---------------------|------------------|-------------------------------------------------------|
|`<Leader>?=`         |_Normal_          |Append result after each expression, separated with '='|
|`<leader><Leader>?`  |_Normal_          |Replace selected expressions with result               |
|`<Leader>?s`         |_Normal_          |Append result after each expressions (with Err)        |

### Surround

|Command           |Mode              |Action                                      |
|------------------|------------------|--------------------------------------------|
|`ysw` + `<c>`     |_Normal_          |wrap the word with the character `<c>`      |
|`yss` + `<c>`     |_Normal_          |wrap the line with the character `<c>`      |

### Vim Visual Multi (Multiple Cursor)


|Command                                                                         |Mode                |Action                |
|--------------------------------------------------------------------------------|--------------------|----------------------|
|`<CTRL>` + `N`                                                                  |_Normal_            |Select word           |
|`<SHIFT>` + `arrow`                                                             |_Normal_            |Select char           |
|`<SHIFT>` + `up`                                                                |_Normal_            |Multi cursor          |
|`<SHIFT>` + `down`                                                              |_Normal_            |Multi cursor          |
|<leader>\                                                                       |_Normal_            |Add cursor            |
|`q`                                                                             |_Multi Cursor_      |skip current word     |
|`n` / `N`                                                                       |_Multi Cursor_      |go to the next/prev   |
<!-- |`<CTRL>` + `N`                                                                  |_Normal_            |Select word           | -->
<!-- |`<SHIFT>` + `arrow`                                                             |_Normal_            |Select char           | -->
<!-- |`<CTRL>` + `up`                                                                 |_Normal_            |Multi cursor          | -->
<!-- |`<CTRL>` + `down`                                                               |_Normal_            |Multi cursor          | -->

<!--
|Command                                                                         |Mode                |Action                |
|--------------------------------------------------------------------------------|--------------------|----------------------|
|`<CTRL>` + `n`, `<DOWN>` to select multiple lines, `<CTRL>` + `n`, `i` (insert) |_Normal_ / _Visual_ |multiple cursors      |
-->


### CSV Vim

|Command              |Mode              |Action                                      |
|---------------------|------------------|--------------------------------------------|
|`:%CSVArrangeColum!` |_Normal_          |Tab correctly all columns                   |

### Commentary

|Command            |Mode                |Action                |
|-------------------|--------------------|----------------------|
|`++`               |_Normal_ / _Visual_ |comment               |

### Tabular

|Command          |Mode               |Action                                  |
|-----------------|-------------------|----------------------------------------|
|`:Tab /` + `<cs>`|_Normal_           |align text to the character/s <cs>      |

### Goyo

|Command           |Mode                  |Action                                                             |
|------------------|----------------------|-------------------------------------------------------------------|
|`:Goyo`           |_Normal_              |Enable distraction-free writing  (usefull for test files)          |
|`:Goyo!`          |_Goyo mode_           |Disable distraction-free writing  (usefull for test files)         |

### Vimtex

|Command                             |Mode                  |Action                                        |
|------------------------------------|----------------------|----------------------------------------------|
|`:VimtexCompile`                    |_Normal_              |Compile and start preview                     |


### Vim Instant Markdown

|Command                             |Mode                  |Action                                        |
|------------------------------------|----------------------|----------------------------------------------|
|`:InstantMarkdownPreview`           |_Normal_              |Start markdown preview                        |
|`:InstantMarkdownStop`              |_Normal_              |Stop markdown preview                         |

### Jupyter Ascending 

Create editable real-time `.py` copy: `jupytext --set-formats ipynb,py:percent <name>.sync.ipynb`

|Command                             |Mode                  |Action                                        |
|------------------------------------|----------------------|----------------------------------------------|
|`<SPACE><SPACE>` + `x`              |_Normal_              |Execute current cell                          |
|`<SPACE><SPACE>` + `X`              |_Normal_              |Execute all cell                              |
|`<SPACE><SPACE>` + `r`              |_Normal_              |Restart notebook                              |

### Copilot

|Command           |Mode               |Action                                  |
|------------------|-------------------|----------------------------------------|
|`:Copilot setup`  |_Normal_           |set up copilot                          |
|`:Copilot enable` |_Normal_           |enable copilot                          |
|`:Copilot disable`|_Normal_           |disable copilot                         |
|`<TAB>`           |_Insert_           |complete text                           |

---

## Modes

### Hint

- Inside of vim:
    - `y` will save to the `+` registry, in this way you can simply use `<CTRL-v>` to paste outside of vim. 
- Outside of vim:
    - `<CTRL-c>` will save to the `+` registry, in this way you can simply use `p` to paste inside of vim. 


### Insert

_Mapping_:

|NewCommand                           |Vim Command                                        |
|-------------------------------------|---------------------------------------------------|
|:`Q`                                 |close current buffer or quit if it is the last one |
|`<jj>`                               |`<ESC>`                                            |


_Commands_:

|Command                              |Action                                  |
|-------------------------------------|----------------------------------------|
|`e`                                  |go to the end of the word               |
|`f` + `<ch>`                         |go to the first `<ch>` character        |
|`F` + `<ch>`                         |go to the first `<ch>` character back   |
|:bd                                  |close current buffer                    |

---

### Normal

_Mapping_:

|NewCommand                           |Vim Command                             |
|-------------------------------------|----------------------------------------|
|`++`                                 | `:Commentary`                          | 
|`t`                                  |`:tabnew<esc>:terminal ++curwin`        |

_Commands_:

|Command                              |Action                                  |
|-------------------------------------|----------------------------------------|
|`:edit <filename>`                   |create new file                         |
|`<SPACE>` + `w`                      |save                                    |
|`<SPACE>` + `q`                      |quit                                    |
|`<SPACE>` + `wq`                     |save and quit                           |
|`:>`                                 |tab                                     |
|`:<`                                 |back tab                                |
|`:Ex` and `<SHIFT>` + `d`            |delete file                             |
|`"0p`                                |paste and don't copy                    |
|`<ctrl-v> select` + `<shift-i>`      |write multiple lines                    |

|Command                              |Action                                    |
|-------------------------------------|------------------------------------------|
|`ci` + `<c>`                         |delete the word inside the character `<c>`|
|`za`                                 |fold and un-fold                          |
|`<CTRL>` + `j`/`k`                   |move line/lines                           |
|`dw`                                 |delete a work after cursor                |
|`0p`                                 |paste without copy                        |
|`/<word>`                            |search word "word"                        |
|`n`/`N`                              |go to the next searched word              |

---

### Visual

_Commands_:

|Command                              |Action                                    |
|-------------------------------------|------------------------------------------|
|`<CTRL>` + `j`/`k`                   |move line/lines                           |
|`"+y`                                |copy to clipboard                         |
|`:>`                                 |tab                                       |
|`:<`                                 |back tab                                  |

### Terminal

_Commands_:

|Command                              |Action                                    |
|-------------------------------------|------------------------------------------|
|`:terminal ++curwin`                 |Open a new terminal in current window     |
|`<CTRL-w>` + `<SHFT-n>`              |Scroll up/down in terminal                |

# Latex config

> adapt-lab folder position: /usr/local/share/texmf/tex/latex/

> texlive folder: /usr/share/texlive/texmf-dist/web2c

> latexmk folder: /usr/share/texmf/web2c

Find `texmf.cnf` file and find the line containing the varibale TEXMFLOCAL. In the path where this variable points to:

Run: `chown -R fcb.federicobruzzoneplasma (that path) /usr/local/share/texmf` 

Put: `adapt-lab` folder into it and remove from thesis the sample folder

Run `sudo texconfig` -> REHASH

copy all config files

