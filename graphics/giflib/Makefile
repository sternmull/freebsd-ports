# Created by: Thomas Gellekum <tg@FreeBSD.org>
# $FreeBSD$

PORTNAME=	giflib
PORTVERSION=	5.1.2
PORTREVISION=	1
CATEGORIES=	graphics
MASTER_SITES=	SF/${PORTNAME}

MAINTAINER=	portmgr@FreeBSD.org
COMMENT=	Tools and library routines for working with GIF images

CONFLICTS=	libungif-[0-9]*

USES=		tar:bzip2 libtool
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes

OPTIONS_DEFINE=	DOCBOOK DOCS
OPTIONS_SUB=	yes
DOCBOOK_DESC=	Generate API documentation (requires DOCS)
INSTALL_TARGET=	install-strip

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDOCBOOK} && ${PORT_OPTIONS:MDOCS}
BUILD_DEPENDS+=	xmlto:${PORTSDIR}/textproc/xmlto \
		docbook-xml>0:${PORTSDIR}/textproc/docbook-xml
.else
CONFIGURE_ENV+=	have_xmlto=no
.endif

.if ${OSVERSION} >= 1100072
EXTRA_PATCHES=	${FILESDIR}/extra-patch-unbundle-reallocarray
.else
EXTRA_PATCHES=	${FILESDIR}/extra-patch-hide-reallocarray
.endif

post-install:
	@${INSTALL_MAN} ${WRKSRC}/doc/*.1 ${STAGEDIR}${PREFIX}/man/man1/
.if ${PORT_OPTIONS:MDOCBOOK} && ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${STAGEDIR}${DOCSDIR}/
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${STAGEDIR}${DOCSDIR}/
.endif

.include <bsd.port.mk>
