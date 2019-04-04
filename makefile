CC=gcc
CFLAGS=-Wall

all: TCPEchoClient TCPEchoServer

OTHER_OBSS = DieWithError.o HandleTCPClient.o

TCPEchoClient :	TCPEchoClient.o	$(OTHER_OBSS)

TCPEchoServer :	TCPEchoServer.o	$(OTHER_OBSS)

DieWithError.o : DieWithError.c
				CC -c DieWithError.c

HandleTCPClient.o : HandleTCPClient.c
				CC -c HandleTCPClient.c

TCPEchoClient.o: TCPEchoClient.c
				CC -c TCPEchoClient.c

TCPEchoSever.o: TCPEchoSever.c 
				CC -c TCPEchoSever.c

clean:
		rm -f	TCPEchoClient.o	DieWithError.o HandleTCPClient.o TCPEchoServer.o TCPEchoClient.exe TCPEchoServer.exe
				