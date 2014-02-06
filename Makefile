# sw - suckless webframework - 2012 - MIT License - nibble <develsec.org>

DESTDIR?=
PREFIX?=/usr/local
P=${DESTDIR}/${PREFIX}

all: sw.conf

sw.conf:
	cp sw.conf.def sw.conf

install:
	mkdir -p ${P}/bin
	sed -e "s,/usr/bin/awk,`./whereis awk`,g" md2html.awk > ${P}/bin/md2html.awk
	chmod +x ${P}/bin/md2html.awk
	cp -f sw ${P}/bin/sw
	chmod +x ${P}/bin/sw
