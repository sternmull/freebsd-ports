# $FreeBSD$

PORTNAME=	after_commit_queue
PORTVERSION=	1.3.0
CATEGORIES=	databases rubygems
MASTER_SITES=	RG

MAINTAINER=	ports@michael-fausten.de
COMMENT=	Allows to run callbacks after transaction is committed

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/MIT-LICENSE

RUN_DEPENDS?=	rubygem-activerecord>=3.0:${PORTSDIR}/databases/rubygem-activerecord

NO_ARCH=	yes
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
