DESTDIR=

BIN=banner
SRC=$(BIN).c
MAN=$(BIN).1

$(BIN): $(SRC)
	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)

install: $(BIN) $(MAN)
	install -d $(DESTDIR)/usr/bin
	install -m 755 $(BIN) $(DESTDIR)/usr/bin
	install -d $(DESTDIR)/usr/share/man/man1
	install    -m 644 $(MAN) $(DESTDIR)/usr/share/man/man1

clean:
	$(RM) $(BIN)
