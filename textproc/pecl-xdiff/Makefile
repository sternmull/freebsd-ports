# Created by: Larry Rosenman <ler@lerctr.org>
# $FreeBSD$

PORTNAME=	xdiff
PORTVERSION=	1.5.2
CATEGORIES=	textproc pear
MASTER_SITES=	http://pecl.php.net/get/
PKGNAMEPREFIX=	pecl-
DIST_SUBDIR=	PECL

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	PECL extension to create/apply binary and text patches

LICENSE=	PHP301

LIB_DEPENDS=	libxdiff.so:${PORTSDIR}/textproc/libxdiff

USES=		tar:tgz
USE_PHP=	yes
USE_PHPEXT=	yes
IGNORE_WITH_PHP=	70

LDFLAGS+=	-L${LOCALBASE}/lib

.include <bsd.port.mk>
