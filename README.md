# obs-vim-colors

Dark vim colorscheme inspired by One Half Dark.  
The goal of this colorscheme is not to color vim with pretty colors, but to
reuse your terminals colors for more consistent colors across terminal
applications.

---

For ease of editing, the `colors` file is not an ordinary `.vim` file, but
instead contains space separated values for highlight commands. `script.awk` is
used to convert the file to vimscript. To create the `.vim` -file, either run
`make` (which will create `obs-vim-colors.vim`) or run `./script.awk colors >
~/.vim/colors/obs-vim-colors.vim` to create and install the colorscheme.  

How `script.awk` converts files:

```
" Comment. Will be ignored.
> Vimscript. Line will appear in output without the `>`.
" The following line will become a `highlight-command`.
group ctermfg ctermbg guifg guibg term+gui
" A `-` in any of these fields omits the field.
" Color names are swapped for their appropriate numbers (0-15)
```
