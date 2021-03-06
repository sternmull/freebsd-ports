# Created by: gahr
# $FreeBSD$

PORTNAME=	hla
PORTVERSION=	1.103
CATEGORIES=	lang
MASTER_SITES=	http://webster.cs.ucr.edu/AsmTools/HLA/HLAv${PORTVERSION}/:src \
		http://www.gahr.ch/FreeBSD/HLA/:extra
DISTFILES=	${PORTNAME}src${EXTRACT_SUFX}:src \
		bsd.hla.tar.gz:src \
		lex.yy.c:extra
DIST_SUBDIR=	${PORTNAME}
EXTRACT_ONLY=	${PORTNAME}src${EXTRACT_SUFX}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	High Level Assembly

USES=		bison zip:infozip

WRKSRC=		${WRKDIR}/hlasrc/trunk/trunk
MAKEFILE=	makefile.bsd
ALL_TARGET=	hlaparse hla

SUB_FILES=	pkg-message

ONLY_FOR_ARCHS=	i386

OPTIONS_DEFINE=	DOCS TEST

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDOCS} || make(makesum)
DISTFILES+=	HLARef_html${EXTRACT_SUFX}:src \
		HLAstdlib_html${EXTRACT_SUFX}:src
.endif
.if ${PORT_OPTIONS:MTEST} || make(makesum)
DISTFILES+=	hello.hla:extra
.endif

post-extract:
	${MKDIR} ${WRKDIR}/stdlib && \
	    ${TAR} -zxf ${_DISTDIR}/bsd.${PORTNAME}.tar.gz -C ${WRKDIR}/stdlib
	${CP} ${_DISTDIR}/lex.yy.c ${WRKSRC}
.if ${PORT_OPTIONS:MTEST}
	${CP} ${_DISTDIR}/hello.hla ${WRKSRC}
.endif
.if ${PORT_OPTIONS:MDOCS}
	(${MKDIR} ${WRKDIR}/HLAstdlib && \
	    ${UNZIP_CMD} -q ${_DISTDIR}/HLAstdlib_html${EXTRACT_SUFX} -d ${WRKDIR}/HLAstdlib \
	)
	(${MKDIR} ${WRKDIR}/HLAReference && \
	    ${UNZIP_CMD} -q ${_DISTDIR}/HLARef_html${EXTRACT_SUFX} -d ${WRKDIR}/HLAReference \
	)
.endif

post-patch:
	@${REINPLACE_CMD} -e '/flex/d; s|gcc|${CC}|; s|-O2|${CFLAGS}|; \
		s|-static-libgcc||' ${WRKSRC}/makefile.bsd

do-configure:
	(cd ${WRKSRC} && bison -o hlaparse.c hlaparse.bsn)

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hla ${STAGEDIR}${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/hlaparse ${STAGEDIR}${PREFIX}/bin
	${INSTALL_DATA} ${WRKDIR}/stdlib/hla/hlalib/hlalib.a ${STAGEDIR}${PREFIX}/lib
	@${MKDIR} ${STAGEDIR}${PREFIX}/include/hla
	@${CHMOD} 755 ${WRKDIR}/stdlib/hla/include/include # broken archive
	(cd ${WRKDIR}/stdlib/hla/include/include && ${COPYTREE_SHARE} . ${STAGEDIR}${PREFIX}/include/hla)

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${STAGEDIR}${DOCSDIR}/Reference ${STAGEDIR}${DOCSDIR}/stdlib
	(cd ${WRKDIR}/HLAReference && ${COPYTREE_SHARE} . ${STAGEDIR}${DOCSDIR}/Reference)
	(cd ${WRKDIR}/HLAstdlib && ${COPYTREE_SHARE} . ${STAGEDIR}${DOCSDIR}/stdlib)
.endif
.if ${PORT_OPTIONS:MTEST}
	@${ECHO_MSG} ""
	@${ECHO_MSG} "Testing HLA installation..."
	@( \
	    hlainc=${STAGEDIR}${PREFIX}/include/hla hlalib=${STAGEDIR}${PREFIX}/lib/hlalib.a \
	    PATH=${PATH}:${STAGEDIR}${PREFIX}/bin ${WRKSRC}/hla ${WRKSRC}/hello.hla && \
	    ${WRKSRC}/hello \
	)
.endif

.include <bsd.port.mk>
