CFLAGS = -Wall -g -I/usr/local/include/freetype2 -I/usr/include/freetype2 -IUGUI

OBJS= ttf2ugui.o ugui.o

all: $(OBJS)
	cc -g -o ttf2ugui $(OBJS) -L/usr/local/lib -lfreetype

ugui.o: UGUI/ugui.c UGUI/ugui.h
	cc -o $@ -c $<

clean:
	rm -f $(OBJS)
	rm -f ttf2ugui
