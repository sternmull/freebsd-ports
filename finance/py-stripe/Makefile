# Created by: Trevor Caira <trevor@bitba.se>
# $FreeBSD$
#

PORTNAME=	stripe
PORTVERSION=	1.29.1
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	koobs@FreeBSD.org
COMMENT=	Stripe Python bindings

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}requests>=0.8.8:${PORTSDIR}/www/py-requests
TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pycurl>=7.19:${PORTSDIR}/ftp/py-pycurl \
		${PYTHON_PKGNAMEPREFIX}mock>=1.0.1:${PORTSDIR}/devel/py-mock \
		${PYTHON_PKGNAMEPREFIX}unittest2>0:${PORTSDIR}/devel/py-unittest2

USES=		python
USE_PYTHON=	autoplist distutils

NO_ARCH=	yes

do-test:
	@cd ${WRKSRC} && ${SETENV} STRIPE_TEST_PYCURL=yes ${PYTHON_CMD} ${PYDISTUTILS_SETUP} test

.include <bsd.port.mk>
