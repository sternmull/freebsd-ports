# $FreeBSD$

PORTNAME=	keybinder
PORTVERSION=	0.3.1
DISTVERSIONPREFIX=	keybinder-3.0-v
CATEGORIES=	x11
PKGNAMESUFFIX=	-gtk3

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Library for registering keyboard shortcuts

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	gtkdocize:${PORTSDIR}/textproc/gtk-doc

USE_GITHUB=	yes
GH_ACCOUNT=	engla

USES=		autoreconf gmake libtool pathfix pkgconfig
PATHFIX_MAKEFILEIN=	Makefile.am
USE_GNOME=	gtk30 introspection:build
USE_XORG=	x11 xext xrender
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-silent-rules --disable-gtk-doc
INSTALL_TARGET=	install-strip
USE_LDCONFIG=	yes

PLIST_SUB=	VERSION="3.0"

pre-configure:
	@(cd ${CONFIGURE_WRKSRC} && ${LOCALBASE}/bin/gtkdocize)

.include <bsd.port.mk>
