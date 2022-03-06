include mkinc.mak

ifeq ($(OS),Windows_NT)
	RM = "C:\Program Files\CMake\bin\cmake.exe" -E remove -f
else
	RM = rm -f
endif
CFLAGS=-O2
CPPFLAGS=-Iinclude -fPIC $(ARCHFLAGS)

all: libstemmer.o stemwords

libstemmer.o: $(snowball_sources:.c=.o)
	$(AR) -cru $@ $^

stemwords: examples/stemwords.o libstemmer.o
	$(CC) $(CFLAGS) -o $@ $^

clean:
	$(RM) stemwords *.o src_c/*.o examples/*.o runtime/*.o libstemmer/*.o

.PHONY: all
