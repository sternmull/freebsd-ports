# Created by: Adam Weinberger <adamw@FreeBSD.org>
# $FreeBSD$

PORTNAME=	Crypt-XTEA
PORTVERSION=	0.0107
CATEGORIES=	security perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	adamw@FreeBSD.org
COMMENT=	Implementation of the eXtended Tiny Encryption Algorithm

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Scalar-Util-Numeric>=0.40:${PORTSDIR}/devel/p5-Scalar-Util-Numeric
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Crypt-CBC>=0:${PORTSDIR}/security/p5-Crypt-CBC

USES=		perl5
USE_PERL5=	configure

post-install:
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/${SITE_ARCH_REL}/auto/Crypt/XTEA/XTEA.so

.include <bsd.port.mk>
