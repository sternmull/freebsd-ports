# Created by: Lars Eggert <lars@eggert.org>
# $FreeBSD$

PORTNAME=	flowgrind
PORTVERSION=	0.7.5
DISTVERSIONPREFIX=	${PORTNAME}-
CATEGORIES=	benchmarks

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Measure throughput and other metrics for TCP

LICENSE=	GPLv3+
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	pcap-config:${PORTSDIR}/net/libpcap
LIB_DEPENDS=	libpcap.so:${PORTSDIR}/net/libpcap \
		libgsl.so:${PORTSDIR}/math/gsl \
		libxmlrpc.so:${PORTSDIR}/net/xmlrpc-c

USE_GITHUB=	yes

USES=		autoreconf
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-pcap --enable-gsl

post-patch:
	@${RM} -rf ${WRKSRC}/build-aux
	@${REINPLACE_CMD} -e 's|AC_LIB_RPATH||g' ${WRKSRC}/configure.ac

.include <bsd.port.mk>
