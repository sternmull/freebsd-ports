# Created by: Alexey Dokuchaev <danfe@FreeBSD.org>
# $FreeBSD$

PORTNAME=	unar
PORTVERSION=	1.9.1
CATEGORIES=	archivers gnustep
MASTER_SITES=	http://wakaba.c3.cx/releases/TheUnarchiver/
DISTNAME=	${PORTNAME}${PORTVERSION}_src

MAINTAINER=	danfe@FreeBSD.org
COMMENT=	Unarchiver for a vast variety of file formats

LICENSE=	LGPL21
LICENSE_FILE=	${WRKSRC}/License.txt

# XXX: USES=gnustep overrides MAKEFILE we set below, so depend explicitly
LIB_DEPENDS=	libgnustep-base.so:${PORTSDIR}/lang/gnustep-base \
		libwavpack.so:${PORTSDIR}/audio/wavpack

USES=		gmake zip

MAKEFILE=	Makefile.freebsd
WRKSRC=		${WRKDIR}/The\ Unarchiver
BUILD_WRKSRC=	${WRKSRC}/XADMaster

PLIST_FILES=	bin/lsar bin/unar man/man1/lsar.1.gz man/man1/unar.1.gz
PORTDOCS=	README.md
PORTEXAMPLES=	lsar.bash_completion unar.bash_completion

OPTIONS_DEFINE=	DOCS EXAMPLES

.include <bsd.port.pre.mk>

.if ${OPSYS} == FreeBSD && ${OSVERSION} < 1000024
CC=		clang
CXX=		clang++
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/XADMaster/??ar ${STAGEDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/Extra/??ar.1 ${STAGEDIR}${MANPREFIX}/man/man1

do-install-DOCS-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README.md ${STAGEDIR}${DOCSDIR}

do-install-EXAMPLES-on:
	@${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/Extra/??ar.bash_completion \
		${STAGEDIR}${EXAMPLESDIR}

.include <bsd.port.post.mk>
