Bash
====


Searhcing and Sorting Files
---------------------------
Sort files by date::

    find -type f -printf "%AY%Am%Ad %p \n" | sort -nr

Find Include files:: 

    find -name "*.[ch]" -exec grep -nH "#include" {} \; | cut -d":" -f 3 | 
        sort | uniq | cut -d"<" -f 2 | cut -d">" -f 1  | grep -v linux 
        | rev| cut -d"/" -f 1 | rev 

Grep for undefined symbols in /tmp/dlm_undef::

    for i in `find -name *.ko `;   do echo $i; nm $i|grep -f ~/tmp/dlm_undef ; done 

Check broken Links::

    find -follow 2> ~/tmp/ooooo > /dev/null; wc -l ~/tmp/ooooo 

List broken files::

    cat ~/tmp/ooooo |cut -d" " -f 2 | cut -d":" -f 1 | xargs ls -l |cut -d">" -f 2 
        | sort | uniq | more 

Shell Prompt
------------
Change Command Prompt ::

    PS1="[\u@\h \W]\$" 

Make.pl all at time::

    make.pl  "" "and" | tac | sed -e 's/make/gmake/' 

Linux Configuration
-------------------
To get the value of the variable::

    gconftool-2 --get /desktop/gnome/background/picture_filename 

set up and control loop devices::

    losetup 

Print the man Page::

    man ls | col -b 

Copy Links Source to Destination ::

    cp -Lr <Source> <Destination>


grep for root::

    awk '/^root/{ print "FOUND";} ' /etc/passwd 

Get total size of files in a directory::

    ls -l /home | awk '{total += $5}; END {print total}' 

Keyboard Shortcut::

    "ESC ." Inserts the last word of the previous command 

Remove comments and blank lines::

    grep -vE '^$|^#' /etc/httpd/conf/httpd.conf

list of program listening to this port(20) ::

    lsof -i :22 

Download url and covert links ::

     wget -p -nd -k -r -l 1 <url> 

Generate Html for ls::

    (
    echo "<table frame=box>";  
    for i in `ls *.pdf `; 
    do 
        echo "<tr><td><a href=$i>$i</td></tr>"; 
    done ; 
    echo "</table>"
    )

Merge pdfs in to one file::

    gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -sOutputFile=YourMerged.pdf 1st.pdf 2nd.pdf 3rd.pdf

