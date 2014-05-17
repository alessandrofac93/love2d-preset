#!/bin/bash

ARG=$1

GAME="game.love"
ROOTDIR=$(pwd)
LOVE_VERSION=$(lua lib/get_infos.lua version)
TITLE=$(lua lib/get_infos.lua title)
BUILDDIR=build
PKGDIR=$BUILDDIR/$ARG
LIBDIR=lib/$ARG/$LOVE_VERSION

# removed because this is made by makefile

# if ! [ -f $ROOTDIR/$GAME ]; then
#     echo "Game not found in $GAME - please run \"make build\" first."
#     exit 1
# fi



if [[ $ARG =~ ^(linux|windows)_x(86|64)$ ]] ; then
	echo -n "Packaging for $ARG... "

	BINARY=$(cd $LIBDIR && ls | grep -E "love.exe$|love$")
	ext=."${BINARY##*.}"
	if [[ $ext == ".love" ]]; then ext=""; fi

	# prepare directory
	mkdir -p $PKGDIR

	cp $LIBDIR/* $PKGDIR

	cd "$PKGDIR"
	cat "$ROOTDIR/$BUILDDIR/$TITLE.love" >> "$BINARY"
	mv "$BINARY" "$TITLE$ext"

	echo "DONE"
elif [[ $ARG == "dotlove" ]]; then
	mkdir -p $BUILDDIR
	zip -r "$BUILDDIR/$TITLE.love" "data/"
	cd src/ && zip -r "$ROOTDIR/$BUILDDIR/$TITLE.love" *
elif [[ $ARG == "run" ]]; then
	love "$BUILDDIR/$TITLE.love"
else
	echo "Invalid target: use one of (linux|windows)_x(86|64) or dotlove."
	exit 1
fi