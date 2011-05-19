
Misc
====

Download from dellaix server.::

    cat download | sed -e s/^/\'/g | sed -e s/$/\'/g | sed -e "s/\ /\\\ /g"  
        | sed -e s/^/scp\ somebody\@dellaix:/g | sed -e "s/$/\ \./g"



