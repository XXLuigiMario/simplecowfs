all: simplecowfs

simplecowfs: simplecowfs.c simplecow.c simplecow.h
	${CC} ${CFLAGS} -Wall `pkg-config fuse --cflags --libs` -lulockmgr simplecowfs.c simplecow.c -o simplecowfs
