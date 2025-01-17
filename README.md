libstemmer_c

Source: https://snowballstem.org/download.html
Version: 2.1.0

Original README:

libstemmer_c
============

This document pertains to the C version of the libstemmer distribution,
available for download from:

- https://snowballstem.org/download.html
- (Old) http://snowball.tartarus.org/dist/libstemmer_c.tgz


Compiling the library
=====================

A simple makefile is provided for Unix style systems.  On such systems, it
should be possible simply to run "make", and the file "libstemmer.o"
and the example program "stemwords" will be generated.

If this doesn't work on your system, you need to write your own build
system (or call the compiler directly).  The files to compile are
all contained in the "libstemmer", "runtime" and "src_c" directories,
and the public header file is contained in the "include" directory.

The library comes in two flavours; UTF-8 only, and UTF-8 plus other character
sets.  To use the utf-8 only flavour, compile "libstemmer_utf8.c" instead of
"libstemmer.c".

For convenience "mkinc.mak" is a makefile fragment listing the source files and
header files used to compile the standard version of the library.
"mkinc_utf8.mak" is a comparable makefile fragment listing just the source
files for the UTF-8 only version of the library.


Using the library
=================

The library provides a simple C API.  Essentially, a new stemmer can
be obtained by using "sb_stemmer_new".  "sb_stemmer_stem" is then
used to stem a word, "sb_stemmer_length" returns the stemmed
length of the last word processed, and "sb_stemmer_delete" is
used to delete a stemmer.

Creating a stemmer is a relatively expensive operation - the expected
usage pattern is that a new stemmer is created when needed, used
to stem many words, and deleted after some time.

Stemmers are re-entrant, but not threadsafe.  In other words, if
you wish to access the same stemmer object from multiple threads,
you must ensure that all access is protected by a mutex or similar
device.

libstemmer does not currently incorporate any mechanism for caching the results
of stemming operations.  Such caching can greatly increase the performance of a
stemmer under certain situations, so suitable patches will be considered for
inclusion.

The standard libstemmer sources contain an algorithm for each of the supported
languages.  The algorithm may be selected using the english name of the
language, or using the 2 or 3 letter ISO 639 language codes.  In addition,
the traditional "Porter" stemming algorithm for english is included for
backwards compatibility purposes, but we recommend use of the "English"
stemmer in preference for new projects.

(Some minor algorithms which are included only as curiosities in the snowball
website, such as the Lovins stemmer and the Kraaij Pohlmann stemmer, are not
included in the standard libstemmer sources.  These are not really supported by
the snowball project, but it would be possible to compile a modified libstemmer
library containing these if desired.)


The stemwords example
=====================

The stemwords example program allows you to run any of the stemmers
compiled into the libstemmer library on a sample vocabulary.  For
details on how to use it, run it with the "-h" command line option.


Using the library in a larger system
====================================

If you are incorporating the library into the build system of a larger
program, I recommend copying the unpacked tarball without modification into
a subdirectory of the sources of your program.  Future versions of the
library are intended to keep the same structure, so this will keep the
work required to move to a new version of the library to a minimum.

As an additional convenience, the list of source and header files used
in the library is detailed in mkinc.mak - a file which is in a suitable
format for inclusion by a Makefile.  By including this file in your build
system, you can link the snowball system into your program with a few
extra rules.

Using the library in a system using GNU autotools
=================================================

The libstemmer_c library can be integrated into a larger system which uses the
GNU autotool framework (and in particular, automake and autoconf) as follows:

1) Unpack libstemmer_c-*.tar.gz in the top level project directory and rename
   the resulting directory to remove the version number so that there is a
   libstemmer_c subdirectory of the top level directory of the project.

2) Add a file "Makefile.am" to the unpacked libstemmer_c folder, containing:
   
noinst_LTLIBRARIES = libstemmer.la
include $(srcdir)/mkinc.mak
noinst_HEADERS = $(snowball_headers)
libstemmer_la_SOURCES = $(snowball_sources) 

(You may also need to add other lines to this, for example, if you are using
compiler options which are not compatible with compiling the libstemmer
library.)

3) Add libstemmer_c to the AC_CONFIG_FILES declaration in the project's
   configure.ac file.

4) Add to the top level makefile the following lines (or modify existing
   assignments to these variables appropriately):

AUTOMAKE_OPTIONS = subdir-objects
AM_CPPFLAGS = -I$(top_srcdir)/libstemmer_c/include
SUBDIRS=libstemmer_c
<name>_LIBADD = libstemmer_c/libstemmer.la

(Where <name> is the name of the library or executable which links against
libstemmer.) 

