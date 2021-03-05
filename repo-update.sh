#!/bin/bash

DIR=$(find ~/ -depth  -name 'CynuxSecurity' 2>/dev/null)
MIRRORDIR=$(find ~/ -depth  -name 'mirrorpackages' 2>/dev/null)
TARBALL=$(find $DIR -name '*.pkg.tar.*')

#cp -r $TARBALL $MIRRORDIR/x86_64/
rsync -ah --progress $TARBALL $MIRRORDIR/x86_64/
