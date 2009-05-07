CFLAGS=-Wall -O2
DESTDIR=

INSTOPT= -s
ifneq (,$(findstring nostrip,$(DEB_BUILD_OPTIONS)))
INSTOPT=
endif

BIN=banner
SRC=$(BIN).c
MAN=$(BIN).1

$(BIN): $(SRC)
	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)

install: $(BIN) $(MAN)
	install $(INSTOPT) -m 755 $(BIN) $(DESTDIR)/usr/bin
	install    -m 644 $(MAN) $(DESTDIR)/usr/share/man/man1

clean:
	$(RM) $(BIN)
