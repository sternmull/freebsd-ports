# Created by: Vsevolod Stakhov
# $FreeBSD$

PORTNAME=	zerowait
PORTVERSION=	0.8d
PORTREVISION=	3
CATEGORIES=	www
MASTER_SITES=	http://mirror.mcx2.org/
PKGNAMESUFFIX=	-httpd
DISTNAME=	0W-httpd-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Lightweight and fast http server

BROKEN=		unfetchable

USES=		gmake
USE_OPENSSL=	yes
USE_RC_SUBR=	0W-httpd
ALL_TARGET=	#none

HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	--prefix=${PREFIX} --owner=${WWWOWN} --group=${WWWGRP}
PLIST_SUB=	WWWOWN=${WWWOWN} WWWGRP=${WWWGRP}
SUB_FILES=	pkg-deinstall

.include <bsd.port.mk>
