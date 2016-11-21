# Apple xnu kernel imports #

From Mac OS X 10.5 the xnu kernel has had support for DTrace.  This
repository contains all of the versions of the xnu kernel from 10.5
until the present.  The versions are tracked in the versions.txt file.
If you are looking for the instructions on how to build Darwin please
see the text README file in the top level directory.  New imports are
created with the import.sh script, also in the tope level directory.

If you're looking for Apple's README.md file that is now in README-APPLE.md

# Generating a diff #

Each commit is tagged with three values, the OSX version (10.5.0,
10.6.2 etc.), the name of the tar file from which it originated
(xnu-1228, xnu-1504-3.12) and the Master Version from the kernel
itself (9.0.0, 10.3.0).  A diff between versions can be carried out
using any of these tags.

Using the OSX version, 10.5.1 vs. 10.5.0

`
git diff 10.5.1 10.5.0
`

Using the master version for the same OSX version as above

`
git diff master-version-9.1.0 master-version-9.0.0
`

Using the name of the tarfile

`
git diff xnu-1228.0.2 xnu-1228
`

