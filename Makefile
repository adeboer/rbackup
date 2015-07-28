# rbackup package Makefile
#
#	Copyright (C) 2006 Anthony de Boer
#
#	This program is free software; you can redistribute it and/or modify
#	it under the terms of version 2 of the GNU General Public License as
#	published by the Free Software Foundation.
#
#	This program is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
#	You should have received a copy of the GNU General Public License
#	along with this program; if not, write to the Free Software
#	Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
#	USA

MYNAME = rbackup
VERSION = 1.8
PV = $(MYNAME)-$(VERSION)
PREFIX = /usr/local

all:

install:
	install -m 0555 rbackup $(PREFIX)/bin/rbackup
	install -m 0555 rpurge $(PREFIX)/bin/rpurge
	mkdir -p $(PREFIX)/man/man1
	install -m 0444 rbackup.1 $(PREFIX)/man/man1/rbackup.1
	install -m 0444 rpurge.1 $(PREFIX)/man/man1/rpurge.1
	install -m 0555 rreview $(PREFIX)/bin/rreview
	install -m 0555 rapprove $(PREFIX)/bin/rapprove

dist:   
	ln -sf . $(PV)
	sed 's/^/$(PV)\//' MANIFEST | tar cvzf $(PV).tar.gz -T -
	rm $(PV)

