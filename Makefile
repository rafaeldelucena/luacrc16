LIB = crc16.so
SRCS = crc16.c 

ifndef LUA
LUA = lua
endif

ifndef LUA_INCDIR
LUA_CFLAGS = $(shell pkg-config --cflags $(LUA))
else
LUA_CFLAGS = -I$(LUA_INCDIR)
endif

###########################################################################

CFLAGS += -std=c99 -pedantic -D_XOPEN_SOURCE=700
CFLAGS += -Wall -Wextra -Wno-unused-parameter $(DEBUG) -fPIC -I. $(LUA_CFLAGS)
LDFLAGS += -shared

###########################################################################

.PHONY: all
all: $(LIB)

.PHONY: clean
clean:
	rm -rf $(LIB)

.PHONY: install
install:
	mkdir -p $(LUA_LIBDIR)
	cp $(LIB) $(LUA_LIBDIR)/$(LIB)

###########################################################################

$(LIB): $(SRCS)
	$(CC) $(CFLAGS) $(LDFLAGS) $(SRCS) -o $@
