Name: rbackup
Summary: Remote Backup
Version: 1.7
Release: 0
Copyright: GPL
Group: Applications/Networking
Source: rbackup-1.7.tar.gz
BuildRoot: /tmp/rbackup.build

%description
Remote Backup

%prep
rm -rf $RPM_BUILD_ROOT
mkdir -p $RPM_BUILD_ROOT/usr/bin
mkdir -p $RPM_BUILD_ROOT/usr/man/man1

%setup

%build
make

%install
make install

%files
%defattr(-, root, root)
%doc GPL INSTALL README
/usr/bin/rbackup
/usr/bin/rpurge
/usr/man/man1/rbackup.1.gz
/usr/man/man1/rpurge.1.gz
