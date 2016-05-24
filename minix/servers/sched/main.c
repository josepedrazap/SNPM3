
#define _MAIN

#include "sched.h"
#include <machine/archtypes.h>
#include <sys/resource.h> /* for PRIO_MAX & PRIO_MIN */
#include "kernel/proc.h" /* for queue constants */
#include "schedproc.h"

static void reply(endpoint_t whom, message *m_ptr);
static void sef_local_startup(void);
int sched_isokendpt(int endpoint, int *proc);
int sched_isemtyendpt(int endpoint, int *proc);


int main(void)
{
	/* Main routine of the scheduler. */
	message m_in;	/* the incoming message itself is kept here. */
	message m_in_;
	int result, rv;
	int call_nr, who_e, proc_nr_n;	/* system call number */
	
	/* SEF local startup. */
	sef_local_startup();

	
	while (TRUE) {
		int ipc_status;
		register struct schedproc *rmp;
		/* Wait for the next message and extract useful information from it. */
		if (sef_receive_status(ANY, &m_in, &ipc_status) != OK)
			panic("SCHED sef_receive error");

		m_in_ = m_in;
		call_nr = m_in.m_type;	/* system call number */
		who_e = m_in.m_source;

		if ((rv = sched_isemtyendpt(m_in.m_lsys_sched_scheduling_start.endpoint,
			&proc_nr_n)) != OK) {
			return rv;
		}
	
		rmp = &schedproc[proc_nr_n];  //Registramos los procesos

		rmp->endpoint     = m_in.m_lsys_sched_scheduling_start.endpoint;
		rmp->parent       = m_in.m_lsys_sched_scheduling_start.parent;


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

		endpoint_t p = m_in.m_lsys_sched_scheduling_start.parent;
		sched_isokendpt(p, &proc_nr_n);

		p = schedproc[proc_nr_n].parent;

			if (p == 32958 || p == 32960 || p == 32962 ){
				rmp->hijo = 1;
				result = _taskcall(SCHED_FCFS_PROC_NR, call_nr, &m_in);
			}else{
				rmp->hijo = 0;
				result = _taskcall(SCHED_RR_PROC_NR, call_nr, &m_in);
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

//hola


/*===========================================================================*
 *				sched_isokendpt			 	     *
 *===========================================================================*/
int sched_isokendpt(int endpoint, int *proc)
{
	*proc = _ENDPOINT_P(endpoint);
	if (*proc < 0)
		return (EBADEPT); /* Don't schedule tasks */
	if(*proc >= NR_PROCS)
		return (EINVAL);
	if(endpoint != schedproc[*proc].endpoint)
		return (EDEADEPT);
	if(!(schedproc[*proc].flags & IN_USE))
		return (EDEADEPT);
	return (OK);
}

/*===========================================================================*
 *				sched_isemtyendpt		 	     *
 *===========================================================================*/
int sched_isemtyendpt(int endpoint, int *proc)
{
	*proc = _ENDPOINT_P(endpoint);
	if (*proc < 0)
		return (EBADEPT); /* Don't schedule tasks */
	if(*proc >= NR_PROCS)
		return (EINVAL);
	if(schedproc[*proc].flags & IN_USE)
		return (EDEADEPT);
	return (OK);
}