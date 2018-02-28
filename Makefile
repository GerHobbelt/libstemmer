include mkinc.mak

ifeq ($(OS),Windows_NT)
	RM = "C:\Program Files\CMake\bin\cmake.exe" -E remove -f
else
	RM = rm -f
endif
CFLAGS=-Iinclude -fPIC

all: libstemmer.o stemwords

libstemmer.o: $(snowball_sources:.c=.o)
	$(AR) -cru $@ $^

stemwords: examples/stemwords.o libstemmer.o
	$(CC) -o $@ $^

clean:
	$(RM) *.o src_c/*.o runtime/*.o libstemmer/*.o examples/*.o
