
VIM
===

Mapping command to current buffer::

    nmap <buffer> <CR> :call DiffFile()  <CR><CR> 

Convert a file to html file with color::

    vim -f +":runtime! syntax/2html.vim | :wq | :q " a.c 

For copying text from gui to vim::

    :set tw=0 wrap linebreak noautoindent 

- Using K to look up functions in the man pages
- Finding variable declarations with gd and gD
- Jumping to macro definitions with [^D and ]^D
- Displaying macro definitions with ]d, ]d, [D, and ]D

