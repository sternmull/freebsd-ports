# Created by: Fraser Tweedale <frase@frase.id.au>
# $FreeBSD$

PORTNAME=	asunder
PORTVERSION=	2.8
CATEGORIES=	audio
MASTER_SITES=	http://littlesvr.ca/asunder/releases/

MAINTAINER=	frase@frase.id.au
COMMENT=	Lightweight GTK+ CD ripper

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

LIB_DEPENDS=	libcddb.so:${PORTSDIR}/audio/libcddb
RUN_DEPENDS=	${LOCALBASE}/bin/cdparanoia:${PORTSDIR}/audio/cdparanoia

OPTIONS_DEFINE=	LAME OGG FLAC OPUS WAVPACK APE WINDOWS_CHARS NLS DOCS
OPTIONS_DEFAULT=	OGG FLAC
OPTIONS_SUB=	yes

WINDOWS_CHARS_DESC=	Allow Windows special chars in filenames

GNU_CONFIGURE=	yes
USES=		desktop-file-utils gettext gmake pkgconfig tar:bzip2
USE_GNOME=	gtk20 glib20 intltool intlhack

PORTDOCS=	AUTHORS ChangeLog INSTALL NEWS README TODO

LAME_RUN_DEPENDS=	lame:${PORTSDIR}/audio/lame
OGG_RUN_DEPENDS=	oggenc:${PORTSDIR}/audio/vorbis-tools
FLAC_RUN_DEPENDS=	flac:${PORTSDIR}/audio/flac
OPUS_RUN_DEPENDS=	opusenc:${PORTSDIR}/audio/opus-tools
WAVPACK_RUN_DEPENDS=	wavpack:${PORTSDIR}/audio/wavpack
APE_RUN_DEPENDS=	mac:${PORTSDIR}/audio/mac
NLS_CONFIGURE_ENABLE=	yes

post-patch:
post-patch-WINDOWS_CHARS-on:
	@${REINPLACE_CMD} -e 's^#define[[:blank:]]*BADCHARS.*^#define BADCHARS "/"^' ${WRKSRC}/src/util.h

post-install-DOCS-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S,^,${WRKSRC}/,} ${STAGEDIR}${DOCSDIR}/

.include <bsd.port.mk>
