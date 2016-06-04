.include <bsd.own.mk>

SUBDIR+=	ds input pm rs sched sched_rr sched_fcfs vfs vm

.if ${MKIMAGEONLY} == "no"
SUBDIR+=	ipc is devman
.endif

.include <bsd.subdir.mk>
