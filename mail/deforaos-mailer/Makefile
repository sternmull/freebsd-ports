# Created by: Olivier Cochard-Labbe <olivier@FreeBSD.org>
# $FreeBSD$

PORTNAME=	mailer
PORTVERSION=	0.1.6
PORTREVISION=	1
CATEGORIES=	mail
MASTER_SITES=	http://www.defora.org/os/download/download/4029/
PKGNAMEPREFIX=	deforaos-
DISTNAME=	Mailer-${PORTVERSION}

MAINTAINER=	olivier@FreeBSD.org
COMMENT=	DeforaOS desktop mail client

LICENSE=	GPLv3

BUILD_DEPENDS=	xsltproc:${PORTSDIR}/textproc/libxslt \
		${LOCALBASE}/share/xsl/docbook/manpages/docbook.xsl:${PORTSDIR}/textproc/docbook-xsl
LIB_DEPENDS=	libSystem.so:${PORTSDIR}/devel/deforaos-libsystem \
		libDesktop.so:${PORTSDIR}/x11/deforaos-libdesktop

USE_GNOME=	gtk20
USES=		desktop-file-utils gettext pkgconfig
INSTALLS_ICONS=	yes
USE_LDCONFIG=	yes
USE_OPENSSL=	yes
MAKE_ARGS+=	PREFIX=${PREFIX}

MAKE_ENV+=	MANDIR=${STAGEDIR}${MANPREFIX}/man

MAKE_JOBS_UNSAFE=	yes

post-patch:
	@${REINPLACE_CMD} -e 's|/lib/|/libdata/|g' \
		${WRKSRC}/data/pkgconfig.sh
	@${REINPLACE_CMD} 's/-lssl/& -lcrypto/' \
		${WRKSRC}/src/Makefile ${WRKSRC}/src/account/Makefile \
		${WRKSRC}/src/plugins/Makefile ${WRKSRC}/tests/Makefile

.include <bsd.port.mk>
