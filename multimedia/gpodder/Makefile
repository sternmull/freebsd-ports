# Created by: Chess Griffin <chess@chessgriffin.com>
# $FreeBSD$

PORTNAME=	gpodder
PORTVERSION=	3.9.0
CATEGORIES=	multimedia python
MASTER_SITES=	http://gpodder.org/src/

MAINTAINER=	rm@FreeBSD.org
COMMENT=	Media aggregator and podcast client

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	intltool-extract:${PORTSDIR}/textproc/intltool \
		help2man:${PORTSDIR}/misc/help2man
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}sqlite3>=0:${PORTSDIR}/databases/py-sqlite3 \
		${PYTHON_PKGNAMEPREFIX}feedparser>=5.0.1:${PORTSDIR}/textproc/py-feedparser \
		${PYTHON_PKGNAMEPREFIX}mygpoclient>=1.4:${PORTSDIR}/devel/py-mygpoclient \
		${PYTHON_PKGNAMEPREFIX}dbus>=0:${PORTSDIR}/devel/py-dbus \
		${PYTHON_PKGNAMEPREFIX}eyed3>=0:${PORTSDIR}/audio/py-eyed3

OPTIONS_DEFINE=		GTK2 NOTIFY MUTAGEN OGG2MP3
OPTIONS_DEFAULT=	GTK2
OPTIONS_SUB=		yes
MUTAGEN_DESC=		Allow metadata manipulation
OGG2MP3_DESC=		Ogg Vorbis conversion to MP3 support
OPTIONS_EXCLUDE=	NLS
NOTIFY_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}notify>=0:${PORTSDIR}/devel/py-notify
MUTAGEN_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}mutagen>=0:${PORTSDIR}/audio/py-mutagen
OGG2MP3_RUN_DEPENDS=	lame:${PORTSDIR}/audio/lame \
			oggdec:${PORTSDIR}/audio/vorbis-tools

ALL_TARGET=	messages
MAKE_ENV=	GPODDER_MANPATH_NO_SHARE="yes"
MAKEFILE=	makefile
NO_ARCH=	yes
USES=		gettext gmake python:2 shebangfix
SHEBANG_FILES=	src/gpodder/*.py share/gpodder/examples/*.py share/gpodder/extensions/*.py
WANT_GNOME=	yes
INSTALLS_ICONS=	yes
PLIST_SUB+=	PORTVERSION=${PORTVERSION}
PORTDOCS=	PKG-INFO README

GTK2_VARS=	MAKE_ENV+=GPODDER_INSTALL_UIS="cli gtk"
GTK2_RUN_DEPENDS+=	gnome-icon-theme>=0:${PORTSDIR}/misc/gnome-icon-theme \
			xdg-open:${PORTSDIR}/devel/xdg-utils
GTK2_USE=	GNOME=pygtk2

.if empty(GTK2)
MAKE_ENV+=	GPODDER_INSTALL_UIS="cli"
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|python|${PYTHON_CMD}|g' ${WRKSRC}/makefile

post-install:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/|} ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
