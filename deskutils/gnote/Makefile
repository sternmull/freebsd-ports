# Created by: Gustau Perez i Querol <gustau.perez@gmail.com>
# $FreeBSD$

PORTNAME=	gnote
PORTVERSION=	3.18.1
CATEGORIES=	deskutils gnome
MASTER_SITES=	GNOME

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	C++ version of Tomboy, note taking application

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	itstool:${PORTSDIR}/textproc/itstool
LIB_DEPENDS=	libpcre.so:${PORTSDIR}/devel/pcre \
		libgtkspell3-3.so:${PORTSDIR}/textproc/gtkspell3 \
		libboost_filesystem.so:${PORTSDIR}/devel/boost-libs \
		libsecret-1.so:${PORTSDIR}/security/libsecret \
		libuuid.so:${PORTSDIR}/misc/e2fsprogs-libuuid

USE_GNOME=	gtk30 gtkmm30 intltool libxml2 libxslt
USES=		desktop-file-utils compiler:c++11-lib gettext gmake \
		gnome libtool pathfix pkgconfig tar:xz
INSTALLS_ICONS=	yes
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
CONFIGURE_ARGS=	--with-dbus-service-dir=${PREFIX}/share/dbus-1/services
INSTALL_TARGET=	install-strip

GLIB_SCHEMAS=	org.gnome.gnote.gschema.xml

DOCS=		AUTHORS ChangeLog NEWS README TODO

PLIST_SUB+=	VERSION=${PORTVERSION}

.include <bsd.port.options.mk>

.if ${OPSYS} == FreeBSD && ${OSVERSION} < 1000000
EXTRA_PATCHES=	${FILESDIR}/extra-src_base_macros.hpp
.endif

post-install:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
.for i in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${i} ${STAGEDIR}${DOCSDIR}
.endfor

.include <bsd.port.mk>
