
VIM
===

Mapping command to current buffer.::

    nmap <buffer> <CR> :call DiffFile()  <CR><CR> 

Convert a file to html file with color.::

    vim -f +":runtime! syntax/2html.vim | :wq | :q " a.c 

For copying text from gui to vim::

    :set tw=0 wrap linebreak noautoindent 


