# Created by: stas
# $FreeBSD$

PORTNAME=	lcms
PORTVERSION=	1.19
CATEGORIES=	graphics devel python
MASTER_SITES=	SF
PKGNAMESUFFIX=	-python

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Light Color Management System (python bindings)

LICENSE=	MIT

LIB_DEPENDS=	liblcms.so:${PORTSDIR}/graphics/lcms

BUILD_WRKSRC=	${WRKSRC}/python
INSTALL_WRKSRC=	${WRKSRC}/python

USES=		python:2
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-python
CONFIGURE_ENV=	PYTHON="${PYTHON_CMD}"

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

PLIST_FILES=	%%PYTHON_SITELIBDIR%%/_lcms.so \
		%%PYTHON_SITELIBDIR%%/lcms.py

do-install:
	@${MKDIR} ${STAGEDIR}${PYTHON_SITELIBDIR}
	${INSTALL_LIB} ${INSTALL_WRKSRC}/.libs/_lcms.so \
		${STAGEDIR}${PYTHON_SITELIBDIR}/_lcms.so
	${INSTALL_DATA} ${INSTALL_WRKSRC}/lcms.py \
		${STAGEDIR}${PYTHON_SITELIBDIR}/lcms.py

.include <bsd.port.mk>
