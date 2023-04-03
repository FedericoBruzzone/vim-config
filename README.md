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

## Videos

<details open>
<summary>1</summary>
<img src="https://github.com/FedericoBruzzone/vim-config/blob/main/.video/1.gif"/>
</details>

<details open>
<summary>2</summary>
<img src="https://github.com/FedericoBruzzone/vim-config/blob/main/.video/2.gif"/>
</details>

<details open>
<summary>3</summary>
<img src="https://github.com/FedericoBruzzone/vim-config/blob/main/.video/3.gif"/>
</details>

<details open>
<summary>4</summary>
<img src="https://github.com/FedericoBruzzone/vim-config/blob/main/.video/4.gif"/>
</details>

<!--
Plugins in action: NERDTree - TagBar - Floaterm - Fzf - Jupyter ascending - Vimtex - Instant markdown - Tabular - Multiple cursors - GitGutter - Fugitive  
-->

---

## Plugins

### Coc

|Command                   |Mode                         |Action                                    |
|--------------------------|-----------------------------|------------------------------------------|
|`<CTRL>` + `o`            |_Normal_                     |Go back after `gd`                        |

`:CocInstall coc-vimtex`

### NERD Tree

|Command           |Mode                         |Action                                  |
|------------------|-----------------------------|----------------------------------------|
|`<F3>`            |_Normal_ / _Insert_          |toggle NERD Tree                        |
|`<SHIFT>` + `i`   |_NERDTree_                   |show hidden files                       |

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

### Surround

|Command           |Mode              |Action                                      |
|------------------|------------------|--------------------------------------------|
|`ysw` + `<c>`     |_Normal_          |wrap the word with the character `<c>`      |
|`yss` + `<c>`     |_Normal_          |wrap the line with the character `<c>`      |

### Multiple Cursor

|Command                                                                         |Mode                |Action                |
|--------------------------------------------------------------------------------|--------------------|----------------------|
|`<CTRL>` + `n`, `<DOWN>` to select multiple lines, `<CTRL>` + `n`, `i` (insert) |_Normal_ / _Visual_ |multiple cursors      |

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

|NewCommand                           |Vim Command                             |
|-------------------------------------|----------------------------------------|
|`<jj>`                               |`<ESC>`                                 |


_Commands_:

|Command                              |Action                                  |
|-------------------------------------|----------------------------------------|
|`<jj>`                               |switch to _NORMAL_ MODE                 |
|`e`                                  |go to the end of the word               |
|`f` + `<ch>`                         |go to the first `<ch>` character        |
|`F` + `<ch>`                         |go to the first `<ch>` character back   |

---

### Normal

_Mapping_:

|NewCommand                           |Vim Command                             |
|-------------------------------------|----------------------------------------|
|`<SPACE>`                            | `:`                                    |
|`++`                                 | `:Commentary`                          |  
|`dw`                                 |Delete a work after cursor              |
|`0p`                                 |Paste without copy                      |

_Commands_:

|Command                              |Action                                  |
|-------------------------------------|----------------------------------------|
|`:edit <filename>`                   |create new file                         |
|`<SPACE>` + `w`                      |save                                    |
|`<SPACE>` + `q`                      |quit                                    |
|`<SPACE>` + `wq`                     |save and quit                           |
|`:>`                                 |tab                                     |
|`:<`                                 |back tab                                |

|Command                              |Action                                    |
|-------------------------------------|------------------------------------------|
|`ci` + `<c>`                         |delete the word inside the character `<c>`|
|`za`                                 |fold and un-fold                          |
|`<CTRL>` + `j`/`k`                   |move line/lines                           |

---

### Visual

_Commands_:

|Command                              |Action                                    |
|-------------------------------------|------------------------------------------|
|`<CTRL>` + `j`/`k`                   |move line/lines                           |
|`"+y"`                               |copy to clipboard                         |
|`:>`                                 |tab                                       |
|`:<`                                 |back tab                                  |

### Terminal

_Commands_:

|Command                              |Action                                    |
|-------------------------------------|------------------------------------------|
|`:terminal ++curwin`                 |Open a new terminal in current window     |
|`<CTRL-w>` + `<SHFT-n>`              |Scroll up/down in terminal                |
