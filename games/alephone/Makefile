# Created by: Michael Alyn Miller <malyn@strangeGizmo.com>
# $FreeBSD$

PORTNAME=	alephone
PORTVERSION=	20150620
CATEGORIES=	games
MASTER_SITES=	SF/marathon/Aleph%20One/2015-06-20
DISTNAME=	AlephOne-${PORTVERSION}

MAINTAINER=	fiziologus@gmail.com
COMMENT=	The open source version of Bungie's Marathon game

BUILD_DEPENDS=	${LOCALBASE}/include/boost/function.hpp:${PORTSDIR}/devel/boost-libs

USES=		gmake localbase pkgconfig tar:bzip2
USE_SDL=	image net sdl ttf
USE_GL=		yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-alsa

PORTDOCS=	*

DATADIR=	${PREFIX}/share/AlephOne

OPTIONS_DEFINE=	MAD FFMPEG OGG SPEEX SMPEG ZZIP PNG CURL SNDFILE DOCS
OPTIONS_DEFAULT=MAD FFMPEG OGG SPEEX SMPEG ZZIP PNG CURL SNDFILE

FFMPEG_DESC=	Use ffmpeg for film export and playback
SMPEG_DESC=	Use SMPEG for movie playback
ZZIP_DESC=	Enable zziplib support

MAD_LIB_DEPENDS=	libmad.so:${PORTSDIR}/audio/libmad
MAD_CONFIGURE_WITH=	mad
FMPEG_LIB_DEPENDS=	libavcodec.so:${PORTSDIR}/multimedia/ffmpeg
FMPEG_CONFIGURE_WITH=	ffmpeg
OGG_LIB_DEPENDS=	libvorbisfile.so:${PORTSDIR}/audio/libvorbis
OGG_CONFIGURE_WITH=	vorbis
SPEEX_LIB_DEPENDS=	libspeex.so:${PORTSDIR}/audio/speex
SPEEX_CONFIGURE_WITH=	speex
SMPEG_LIB_DEPENDS=	libsmpeg.so:${PORTSDIR}/multimedia/smpeg
SMPEG_CONFIGURE_WITH=	smpeg
ZZIP_LIB_DEPENDS=	libzzip.so:${PORTSDIR}/devel/zziplib
ZZIP_CONFIGURE_WITH=	zzip
PNG_LIB_DEPENDS=	libpng.so:${PORTSDIR}/graphics/png
PNG_CONFIGURE_WITH=	png
CURL_LIB_DEPENDS=	libcurl.so:${PORTSDIR}/ftp/curl
CURL_CONFIGURE_WITH=	curl
SNDFILE_LIB_DEPENDS=	libsndfile.so:${PORTSDIR}/audio/libsndfile
SNDFILE_CONFIGURE_WITH=	sndfile

post-install-DOCS-on:
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} README ${STAGEDIR}${DOCSDIR}
	cd ${WRKSRC}/docs && ${INSTALL_DATA} *.html ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
