# Created by: Ashish SHUKLA <ashish@FreeBSD.org>
# $FreeBSD$

PORTNAME=	sagittarius
PORTVERSION=	0.6.6
CATEGORIES=	lang
MASTER_SITES=	http://distfiles.pirateparty.in/ashish/ \
		LOCAL/ashish
PKGNAMESUFFIX=	-scheme

MAINTAINER=	ashish@FreeBSD.org
COMMENT=	R6RS/R7RS Scheme system

LICENSE=	BSD2CLAUSE
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	${LOCALBASE}/libdata/pkgconfig/libffi.pc:${PORTSDIR}/devel/libffi
LIB_DEPENDS=	libffi.so:${PORTSDIR}/devel/libffi \
		libgc-threaded.so:${PORTSDIR}/devel/boehm-gc-threaded

USE_LDCONFIG=	yes
USES=		cmake gmake pkgconfig
ONLY_FOR_ARCHS=	amd64 i386
MAKE_JOBS_UNSAFE=	yes

OPTIONS_DEFINE=	ODBC

PLIST_SUB=	PORTNAME=sagittarius PORTVERSION=${PORTVERSION}

ODBC_LIB_DEPENDS=	libiodbc.so:${PORTSDIR}/databases/libiodbc
ODBC_CMAKE_ON=		-DODBC_INCLUDE_DIR:STRING=${LOCALBASE}/include/libiodbc
OPTIONS_SUB=		ODBC

.include <bsd.port.pre.mk>

.if ${ARCH}=="i386"
PLIST_ARCH=	i386
USE_GCC=	yes
.else
PLIST_ARCH=	x86_64
.endif

PLIST_SUB+=	PLIST_ARCH=${PLIST_ARCH}

post-patch-ODBC-off:
	@${REINPLACE_CMD} -e '/odbc odbc/d' ${WRKSRC}/ext/CMakeLists.txt

post-install:
	@${LN} -sf ${PREFIX}/bin/sagittarius ${STAGEDIR}${PREFIX}/bin/sash

post-build:
	@${SETENV} ${MAKE_ENV} ${GMAKE} -C ${WRKSRC} doc

.include <bsd.port.post.mk>
