#!/bin/sh
#
# Author: George V. Neville-Neil
#
# Import an Apple Kenel tarball into the OpenDTrace git repo.
#
# This must be run from the root of the repo and there has to be a
# base revision already checked in.
#

tarball=$1
master_version=$2
os_version=$3

# Prep for a new import
rm -rf *

git checkout -- versions.txt

tar --strip-components 1 -xf ../../tarballs/opensource.apple.com/tarballs/xnu/${tarball}.tar.gz

# Master Version is the kernel's idea of a revision, and is off by 4
# from the Mac OS X version (i.e. 10.5.0 -> 9.0.0)
find config -name MasterVersion | xargs head -1 >> versions.txt

git add .

git commit -m "OSX: $os_version, Tar File: $tarball, Master Version: $master_version"

# Tag this commit
git tag $os_version
git tag $tarball
git tag master-version-$master_version

