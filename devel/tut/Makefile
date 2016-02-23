# Created by: Tilman Blumhagen <tilman.blumhagen@googlemail.com>
# $FreeBSD$

PORTNAME=	tut
PORTVERSION=	0.0.4
CATEGORIES=	devel

MAINTAINER=	tilman.blumhagen@googlemail.com
COMMENT=	TUT is a pure C++ unit test framework

LICENSE=	BSD

USES=		python:build
FETCH_DEPENDS=	git:${PORTSDIR}/devel/git

do-fetch:
	${MKDIR} ${WRKDIR}
	@cd ${WRKDIR}; \
	if [ ! -f ${_DISTDIR}${DISTNAME}.tar.gz ]; then \
		if [ -d tut-${PORTVERSION}.git ]; then ${RM} -rf ${DISTNAME}.git; fi; \
		git clone -q --bare --depth 1 -b ${PORTVERSION} https://git.merproject.org/mer-core/tut.git ${DISTNAME}.git; \
		${MKDIR} ${_DISTDIR}; \
		git archive --prefix ${DISTNAME}/ --format tar.gz --remote ${DISTNAME}.git ${PORTVERSION} -o ${_DISTDIR}${DISTNAME}.tar.gz; \
	fi

do-configure:
	(cd ${WRKSRC} && ${PYTHON_CMD} waf configure --prefix=${STAGEDIR}${PREFIX})

#(cd ${WRKSRC} && ${PYTHON_CMD} waf configure --prefix=${STAGEDIR}${PREFIX})
do-build:
	(cd ${WRKSRC} && ${PYTHON_CMD} waf build)

do-install:
	(cd ${WRKSRC} && ${PYTHON_CMD} waf install)

.include <bsd.port.mk>
