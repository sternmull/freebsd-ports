# $FreeBSD$

PORTNAME=	gio2
PORTVERSION=	3.0.7
PORTREVISION=	1
CATEGORIES=	devel rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Ruby binding for GLib2

LICENSE=	LGPL21+

RUN_DEPENDS=	rubygem-glib2>=${PORTVERSION}:${PORTSDIR}/devel/rubygem-glib2 \
		rubygem-gobject-introspection>=${PORTVERSION}:${PORTSDIR}/devel/rubygem-gobject-introspection

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
