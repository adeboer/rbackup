# rbackup package Makefile

MYNAME = rbackup
VERSION = 1.7
BLURB = "Remote Backup"
GROUP = Applications/Networking
DOC = GPL INSTALL README
TAR = $(MYNAME)-$(VERSION).tar.gz
COPYRIGHT = GPL

all:

rpm: $(TAR)
	rpm -ta $(TAR)

dist $(TAR) MANIFEST : Makefile
	makespec

install:
	install -m 0555 rbackup $(RPM_BUILD_ROOT)/usr/bin/rbackup
	install -m 0555 rpurge $(RPM_BUILD_ROOT)/usr/bin/rpurge
	install -m 0444 rbackup.1 $(RPM_BUILD_ROOT)/usr/man/man1/rbackup.1
	install -m 0444 rpurge.1 $(RPM_BUILD_ROOT)/usr/man/man1/rpurge.1
