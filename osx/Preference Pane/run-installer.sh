#!/bin/sh

# this script is being called from the PrefPane to launch the installer

MOUNTPOINT=/Volumes/SCInstaller
INSTALLER="/Volumes/SCInstaller/.install.app"

if [ -e "$1" ] ; then
	xattr -d com.apple.quarantine $1
	hdiutil unmount $MOUNTPOINT
	hdiutil mount "$1" -mountpoint $MOUNTPOINT
fi

if [ -e "$INSTALLER" ] ; then
	open "$INSTALLER"
fi
	
