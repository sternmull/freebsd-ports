# Created by: clsung
# $FreeBSD$

PORTNAME=	Net-GitHub
PORTVERSION=	0.83
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl interface to github.com

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Cache-LRU>=0:${PORTSDIR}/devel/p5-Cache-LRU \
		p5-HTTP-Message>0:${PORTSDIR}/www/p5-HTTP-Message \
		p5-JSON-MaybeXS>=0:${PORTSDIR}/converters/p5-JSON-MaybeXS \
		p5-LWP-Protocol-https>=0:${PORTSDIR}/www/p5-LWP-Protocol-https \
		p5-Moo>=0:${PORTSDIR}/devel/p5-Moo \
		p5-Type-Tiny>=0:${PORTSDIR}/devel/p5-Type-Tiny \
		p5-URI>=0:${PORTSDIR}/net/p5-URI \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww
RUN_DEPENDS:=	${BUILD_DEPENDS}

NO_ARCH=	yes
USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
