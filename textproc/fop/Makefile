# Created by: KIRIYAMA Kazuhiko <kiri@FreeBSD.org>
# $FreeBSD$

PORTNAME=	fop
PORTVERSION=	2.0
PORTREVISION=	1
CATEGORIES=	textproc java
MASTER_SITES=	APACHE/xmlgraphics/fop/source/:fop \
		SF/offo/offo-hyphenation/2.1:hyph
DISTNAME=	${PORTNAME}-${PORTVERSION}-src
DISTFILES=	${DISTNAME}.tar.gz:fop offo-hyphenation.zip:hyph
EXTRACT_ONLY=	${DISTNAME}.tar.gz

MAINTAINER=	geoff@sea-incorporated.com
COMMENT=	Print formatter driven by XSL formatting

EXTRACT_DEPENDS+=	${UNZIP_CMD}:${PORTSDIR}/archivers/unzip

OPTIONS_DEFINE=	DOCS

WRKSRC=		${WRKDIR}/${DISTNAME:S/-src//}
DATADIR=	${JAVASHAREDIR}/${PORTNAME}
PORTDOCS=	*

USE_JAVA=	yes
JAVA_VERSION=	1.6+
USE_ANT=	yes

# Prevent out of memory error during build
MAKE_ENV+=	"ANT_OPTS=-Xmx512m"

post-extract:
	@cd ${WRKDIR} && ${UNZIP_CMD} ${DISTDIR}/offo-hyphenation.zip
	@${CP} ${WRKDIR}/offo-hyphenation/hyph/*.xml ${WRKSRC}/hyph

do-install:
.for d in build conf lib
	@${MKDIR} ${STAGEDIR}${DATADIR}/${d}
.endfor
	@cd ${WRKSRC} && \
	    ${INSTALL_DATA} status.xml ${STAGEDIR}${DATADIR} && \
	    ${INSTALL_DATA} build/*.[jw]ar ${STAGEDIR}${DATADIR}/build && \
	    ${INSTALL_DATA} lib/*.jar lib/README.txt ${STAGEDIR}${DATADIR}/lib && \
	    ${INSTALL_DATA} conf/fop.xconf ${STAGEDIR}${DATADIR}/conf && \
	    ${COPYTREE_SHARE} hyph ${STAGEDIR}${DATADIR}
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${DATADIR}
	${LN} -s ${DATADIR}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin/${PORTNAME}

	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_MAN} LICENSE README NOTICE KEYS ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
