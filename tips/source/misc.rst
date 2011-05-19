
Misc
====

Download from ``myserver`` server::

    cat download | sed -e s/^/\'/g | sed -e s/$/\'/g | sed -e "s/\ /\\\ /g"  
        | sed -e s/^/scp\ somebody\@myserver:/g | sed -e "s/$/\ \./g"



