Media Manipulation
==================


Image Manipulation
------------------

Convert all Images::

    for i in `ls p*` ; do echo "Converting $i"; convert -resize 1024x768 $i c$i; done 

convert image from one file format to another of specific resolution::

    convert -resize 1024x768 <inputfile> <outputfile> 

Convert dot file to jpeg file::

    dot -Tjpg file.dot -o file.jpg 


Convert text file to ps file with font 15::

    a2ps -1 -f 15 proxy_api.txt -o test.ps 


Rotate Image files::

    for i in `ls image*.tif`; do convert -rotate -90 $i c_$i; done 


Video Manipulation
------------------

scale file for viewing::

    mplayer -ao alsa -vo x11 -vf scale=352:288 <filename> 

Put the file at given location and ontop::

    mplayer -ontop -geometry 10:500 <filename> 

Cut a part of file::

    mencoder -ss 30 -endpos 56 -oac copy -ovc copy -o <outputfile> <filename> 

create avi file from jpeg files::

    mencoder "mf://*.jpg" -mf fps=25 -o <output-file-name> -ovc lavc -lavcopts vcodec=mpeg4 

vcd ripping of track 2::

    mplayer vcd://2 -dumstream -dumfile <output-file-name> 

Converting file to images.::

    mplayer -vo jpeg <filename> 

Change geometry and scale it and ontop::

    mplayer -geometry 99%:85% -xy 0.5 -ontop  

Cut a clip from a file::

    mencoder -oac copy -ovc copy -ss <seek> -endpos <length> <input-file> -o <output-file> 

Merge 2 or more video files::

    mencoder -oac copy -ovc copy part1.avi part2.avi part3.avi -o full_movie.avi 


Audio Manipulation
------------------

Generates mp3info database::

    find -type f -exec mp3info2 -p "%F|%t|%a|%l|%y|%g|%c|%n\n" {} \; 

