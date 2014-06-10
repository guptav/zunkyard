
Linux
=====

Convert .a (archive) to .so (shared object)::

    ar -x mylib.a
    gcc -shared *.o -o mylib.so


Extract an RPM Package Files Without Installing It::

    rpm2cpio myrpmfile.rpm | cpio -idmv


RPM List Files ::

    rpm -qpl file.rpm
