# Created by: Ilya Bakulin <webmaster@kibab.com>
# $FreeBSD$

PORTNAME=	thrift
PORTVERSION=	${THRIFT_PORTVERSION}
CATEGORIES=	devel
MASTER_SITES=	APACHE/thrift/${PORTVERSION}
PKGNAMEPREFIX=	php5-

MAINTAINER=	webmaster@kibab.com
COMMENT=	PHP interface to Thrift

USE_PHP=	yes

USE_PHPIZE=	yes
USE_PHPEXT=	yes
PHP_MODNAME=	thrift_protocol

DISTINFO_FILE=	${.CURDIR}/../thrift/distinfo
WRKSRC_SUBDIR=	lib/php/src/ext/thrift_protocol

.include "${.CURDIR}/../thrift/bsd.thrift.mk"
.include <bsd.port.mk>
