
#define _MAIN

#include "sched.h"

static void reply(endpoint_t whom, message *m_ptr);
static void sef_local_startup(void);

int main(void)
{
	/* Main routine of the scheduler. */
	message m_in;	/* the incoming message itself is kept here. */
	message m_in_;
	int result;
	int call_nr, who_e;	/* system call number */
	
	/* SEF local startup. */
	sef_local_startup();

	
	while (TRUE) {
		int ipc_status;

		printf("ADMINISTRADOR\n");

		/* Wait for the next message and extract useful information from it. */
		if (sef_receive_status(ANY, &m_in, &ipc_status) != OK)
			panic("SCHED sef_receive error");

		m_in_ = m_in;
		call_nr = m_in.m_type;	/* system call number */
		who_e = m_in.m_source;

		if (is_ipc_notify(ipc_status)) {
			switch(who_e) {
				case CLOCK:
					expire_timers(m_in.m_notify.timestamp);
					continue;	/* don't reply */
				default :
					result = ENOSYS;
			}

			goto sendreply;
		}

		if (m_in.m_lsys_sched_scheduling_start.parent == INIT_PROC_NR)
		{
			switch(call_nr){

				case SCHEDULING_INHERIT: 
					result = _taskcall(SCHED_RR_PROC_NR, call_nr, &m_in);
					break;

				case SCHEDULING_START: 
					result = _taskcall(SCHED_RR_PROC_NR, call_nr, &m_in);
					break;

				case SCHEDULING_STOP: 
					result = _taskcall(SCHED_RR_PROC_NR, call_nr, &m_in);
					break;

				case SCHEDULING_SET_NICE: 
					result = _taskcall(SCHED_RR_PROC_NR, call_nr, &m_in);
					break;

				case SCHEDULING_NO_QUANTUM: 
					result = _taskcall(SCHED_RR_PROC_NR, call_nr, &m_in);
					break;

			}
		}else{
			switch(call_nr){

				case SCHEDULING_INHERIT: 
					result = _taskcall(SCHED_FCFS_PROC_NR, call_nr, &m_in);
					break;

				case SCHEDULING_START: 
					result = _taskcall(SCHED_FCFS_PROC_NR, call_nr, &m_in);
					break;

				case SCHEDULING_STOP: 
					result = _taskcall(SCHED_FCFS_PROC_NR, call_nr, &m_in);
					break;

				case SCHEDULING_SET_NICE: 
					result = _taskcall(SCHED_FCFS_PROC_NR, call_nr, &m_in);
					break;

				case SCHEDULING_NO_QUANTUM: 
					result = _taskcall(SCHED_FCFS_PROC_NR, call_nr, &m_in);
					break;

			}
		}

sendreply:
		/* Send reply. */
		if (result != SUSPEND) {
			m_in.m_type = result;  		/* build reply message */
			reply(who_e, &m_in);		/* send it away */
		}
		
		
 	}
return(OK);
}

static void sef_local_startup(void)
{
	sef_startup();
}
static void reply(endpoint_t who_e, message *m_ptr)
{
	int s = ipc_send(who_e, m_ptr);    /* send the message */
	if (OK != s)
		printf("SCHED: unable to send reply to %d: %d\n", who_e, s);
}