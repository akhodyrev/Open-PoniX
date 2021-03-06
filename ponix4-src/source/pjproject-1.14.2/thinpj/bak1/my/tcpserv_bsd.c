#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <string.h>

#include "tcpserv.h"

char	tcpserv_buf[TCPSERV_BUFSIZE];
char	tcpserv_linebuf[TCPSERV_BUFSIZE];

char	*tcpserv_psbuf;
char	*tcpserv_pcbuf;

int     tcpserv_socket;

char            tcpserv_remote_host[TCPSERV_HOSTNLEN];
unsigned int    tcpserv_port;

void tcpserv_dumpbuf(char *fname)
{
	FILE *f;

	if ((f=fopen(fname,"w+"))==NULL)
		return;

	fwrite(tcpserv_buf,1,TCPSERV_BUFSIZE,f);
	fclose(f);
}

int tcpserv_getsocket()
{
	return tcpserv_socket;
}

int tcpserv_initsocket()
{
		int s;
		int x = 1;

		s = (int)socket(AF_INET, SOCK_STREAM, 0);

        if (s == INVALID_SOCKET)
        {
                printf("tcpserv: can't create socket!\n");
                return INVALID_SOCKET;
        }

        if (setsockopt(s, SOL_SOCKET, SO_REUSEADDR, (char *) &x, sizeof(x)) < 0 )
        {
                printf("tcpserv: error on setsockopt!\n");
                return INVALID_SOCKET;
        }

		return s;
}

void tcpserv_init_buffers()
{
	memset((char*)&tcpserv_buf,0,TCPSERV_BUFSIZE);
	memset((char*)&tcpserv_linebuf,0,TCPSERV_BUFSIZE);
	memset((char*)&tcpserv_remote_host,0,TCPSERV_HOSTNLEN);

	tcpserv_psbuf = (char*)&tcpserv_buf;
	tcpserv_pcbuf = tcpserv_psbuf;

}

int tcpserv_fail(char *msg)
{
	printf("tcpserv_fail: %s\n", msg);
	
	if (tcpserv_socket != INVALID_SOCKET)
		{ close(tcpserv_socket); }

	tcpserv_init_buffers();

	if (tcpserv_remote_host[0]=='\0')
	{
		printf("tcpserv: waiting for new connect...");
		tcpserv_listen_and_accept(tcpserv_port);
	}

	return 1;
}

int tcpserv_init()
{
	tcpserv_socket = INVALID_SOCKET;

	memset((char*)&tcpserv_buf,0,TCPSERV_BUFSIZE);
	memset((char*)&tcpserv_remote_host,0,TCPSERV_HOSTNLEN);

	tcpserv_psbuf = (char*)&tcpserv_buf;
	tcpserv_pcbuf = tcpserv_psbuf;

	return 1;
}

int tcpserv_connect(char *host, unsigned int port)
{
	struct hostent *phe;
        
        struct sockaddr_in	raddr;
	phe = gethostbyname(host);

	tcpserv_socket = tcpserv_initsocket();
	if (tcpserv_socket == INVALID_SOCKET)
			{ return INVALID_SOCKET; }

        if (phe == NULL)
        {
                printf ("tcpserv: bad host name!\n");
                return INVALID_SOCKET;
        }

	strcpy((char*)&tcpserv_remote_host,host);

	memcpy((char*)&raddr.sin_addr, phe->h_addr, phe->h_length);
	raddr.sin_family = AF_INET;
	raddr.sin_port = htons(port);

	if (connect(tcpserv_socket, (struct sockaddr *)&raddr, sizeof(raddr)) < 0)
	{
		printf ("tcpserv: couldn't connect!\n");
		return INVALID_SOCKET;
	}

        return tcpserv_socket;
}


int tcpserv_listen_and_accept(unsigned int port)
{
        struct sockaddr_in	laddr, raddr;
        int addrlen = sizeof(raddr);
        int rc;
        int ls;

        tcpserv_port = port;

        laddr.sin_addr.s_addr = INADDR_ANY;
        laddr.sin_family = AF_INET;
        laddr.sin_port = htons(port);
	
	ls = tcpserv_initsocket();

	if (ls == INVALID_SOCKET)
		{ return INVALID_SOCKET; }

	rc = bind (ls, (struct sockaddr *)&laddr, sizeof(laddr));

        if (rc == SOCKET_ERROR)
        {
            printf("tcpserv: can't bind socket!\n");
            return INVALID_SOCKET;
        }

        if (listen(ls,1) == SOCKET_ERROR)
        {
            printf("tcpserv: listen error!\n");
            return INVALID_SOCKET;
        }

        tcpserv_socket = (int)accept (ls, (struct sockaddr *)&raddr, (int*)&addrlen);
		close(ls);

        if (tcpserv_socket == INVALID_SOCKET)
        {
		printf("tcpserv: error on accept!\n");
		return INVALID_SOCKET;
        }

        return tcpserv_socket;
}


char *tcpserv_gets(char *buf, int size)
{
	if (tcpserv_socket==INVALID_SOCKET)
		{ return (char*)"\0"; }

	memset(buf,0,size);

	if (recv(tcpserv_socket, buf, size-1, 0) <= 0) {
		tcpserv_fail("recv");
		return (char*)"\0";
	}

	return buf;
}

int tcpserv_read_to_buf()
{
	char *p = tcpserv_pcbuf;

	int rc = recv(tcpserv_socket, tcpserv_pcbuf, TCPSERV_BUFSIZE-(tcpserv_pcbuf-tcpserv_psbuf)-1, 0);
	if (rc <= 0)
		{ return rc; }

	tcpserv_pcbuf += rc;

	if ((tcpserv_pcbuf-tcpserv_psbuf) >= TCPSERV_BUFSIZE-1)
	{
		printf ("tcpserv: buffer overflow\n");
		return -1;
	}

	return rc;
}

char *tcpserv_getline()
{
	char *r;
	char *p;

	r = (char *)&tcpserv_linebuf;
	memset(r,0,TCPSERV_BUFSIZE);

	if (tcpserv_pcbuf == tcpserv_psbuf)
		return NULL;

	p = tcpserv_psbuf;

	while (p <= tcpserv_pcbuf)
	{
		if ((*p=='\n')||(*p=='\r'))
		{
			*p = '\0';
			strcpy(r,tcpserv_psbuf);

			while ((*p=='\0')||(*p=='\n')||(*p=='\r')) p++;

			if (p < tcpserv_pcbuf) {
				memmove(tcpserv_psbuf, p, tcpserv_pcbuf - p);				
				tcpserv_pcbuf -= (p - tcpserv_psbuf);				
			} else
				{ tcpserv_pcbuf = tcpserv_psbuf; };

			memset(tcpserv_pcbuf,0,TCPSERV_BUFSIZE-(tcpserv_pcbuf-tcpserv_psbuf));

			return r;
		}
		p++;
	}

	return NULL;
}

void tcpserv_send(char *text)
{
	if (tcpserv_socket==INVALID_SOCKET)
		{ return; }

	if (send(tcpserv_socket, text, (int)strlen(text), 0) == INVALID_SOCKET) {
		tcpserv_fail("send");
	}
}

void tcpserv_puts(char *text)
{
	memset(&tcpserv_linebuf,0,TCPSERV_BUFSIZE);
    strcpy(&tcpserv_linebuf,text);
    strcpy(&tcpserv_linebuf[strlen(text)],"\n\r");
	tcpserv_send((char*)&tcpserv_linebuf);
}

void tcpserv_shutdown()
{
	if (tcpserv_socket != INVALID_SOCKET)
        {
		close(tcpserv_socket);
		tcpserv_socket = INVALID_SOCKET;
        }
}


