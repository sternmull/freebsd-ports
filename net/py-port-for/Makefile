# Created by: Kubilay Kocak <koobs@FreeBSD.org>
# $FreeBSD$

PORTNAME=	port-for
PORTVERSION=	0.3.1
CATEGORIES=	net devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	koobs@FreeBSD.org
COMMENT=	Utility that helps with local TCP ports managment

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE.txt

TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}nose>=0:${PORTSDIR}/devel/py-nose \
		${PYTHON_PKGNAMEPREFIX}mock>=0.8:${PORTSDIR}/devel/py-mock

USES=		python
USE_PYTHON=	distutils concurrent autoplist

NO_ARCH=	yes

post-patch:
	@${REINPLACE_CMD} '/DEFAULT_CONFIG_PATH/ s|/etc|${PREFIX}&|' ${WRKSRC}/port_for/store.py

do-test:
	@cd ${WRKSRC} && ${PYTHON_CMD} ${PYDISTUTILS_SETUP} test

.include <bsd.port.mk>
