# $FreeBSD$

PORTNAME=	dbussupport
PORTREVISION=	1
CATEGORIES=	devel python

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Qt event loop support for dbus-python

BUILD_DEPENDS=	${PYDBUS}
RUN_DEPENDS=	${PYDBUS}

CONFIGURE_ARGS=	--enable QtCore
PYQT_DIST=	yes

USES=		pkgconfig python pyqt:4
USE_PYQT=	sip_build
USE_QT4=	corelib qmake_build moc_build

OPTIONS_DEFINE=		DEBUG
DEBUG_CONFIGURE_ON=	--debug --trace

BUILD_WRKSRC=	${WRKSRC}/dbus
INSTALL_WRKSRC=	${WRKSRC}/dbus

PLIST_FILES=	%%PYTHON_SITELIBDIR%%/dbus/mainloop/qt.so

.include <bsd.port.pre.mk>

.if ${PYTHON_MAJOR_VER} == 2
PYDBUS=		${PYTHON_PKGNAMEPREFIX}dbus>=0.8:${PORTSDIR}/devel/py-dbus
.elif ${PYTHON_MAJOR_VER} == 3
PYDBUS=		${PYTHON_PKGNAMEPREFIX}dbus>=0.8:${PORTSDIR}/devel/py3-dbus
.endif

.include <bsd.port.post.mk>
