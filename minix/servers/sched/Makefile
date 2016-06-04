# Makefile for Scheduler (SCHED)
PROG=	sched
SRCS=	main.c

DPADD+=	${LIBSYS} ${LIBTIMERS}
LDADD+=	-lsys -ltimers

CPPFLAGS.main.c+=	-I${NETBSDSRCDIR}/minix

.include <minix.service.mk>
