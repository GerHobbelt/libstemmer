# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ruby-stemmer}
  s.version = "0.8.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Aurelian Oancea", "Yury Korolev"]
  s.date = %q{2011-03-08}
  s.description = %q{Expose the bundled libstemmer_c library to Ruby.}
  s.email = %q{oancea@gmail.com}
  s.extensions = ["ext/lingua/extconf.rb"]
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "MIT-LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "ext/lingua/extconf.rb",
    "ext/lingua/stemmer.c",
    "lib/lingua/stemmer.rb",
    "libstemmer_c/MANIFEST",
    "libstemmer_c/Makefile",
    "libstemmer_c/Makefile.windows",
    "libstemmer_c/README",
    "libstemmer_c/examples/stemwords.c",
    "libstemmer_c/include/libstemmer.h",
    "libstemmer_c/libstemmer/libstemmer.c",
    "libstemmer_c/libstemmer/libstemmer_utf8.c",
    "libstemmer_c/libstemmer/modules.h",
    "libstemmer_c/libstemmer/modules.txt",
    "libstemmer_c/libstemmer/modules_utf8.h",
    "libstemmer_c/libstemmer/modules_utf8.txt",
    "libstemmer_c/mkinc.mak",
    "libstemmer_c/mkinc_utf8.mak",
    "libstemmer_c/runtime/api.c",
    "libstemmer_c/runtime/api.h",
    "libstemmer_c/runtime/header.h",
    "libstemmer_c/runtime/utilities.c",
    "libstemmer_c/src_c/stem_ISO_8859_1_danish.c",
    "libstemmer_c/src_c/stem_ISO_8859_1_danish.h",
    "libstemmer_c/src_c/stem_ISO_8859_1_dutch.c",
    "libstemmer_c/src_c/stem_ISO_8859_1_dutch.h",
    "libstemmer_c/src_c/stem_ISO_8859_1_english.c",
    "libstemmer_c/src_c/stem_ISO_8859_1_english.h",
    "libstemmer_c/src_c/stem_ISO_8859_1_finnish.c",
    "libstemmer_c/src_c/stem_ISO_8859_1_finnish.h",
    "libstemmer_c/src_c/stem_ISO_8859_1_french.c",
    "libstemmer_c/src_c/stem_ISO_8859_1_french.h",
    "libstemmer_c/src_c/stem_ISO_8859_1_german.c",
    "libstemmer_c/src_c/stem_ISO_8859_1_german.h",
    "libstemmer_c/src_c/stem_ISO_8859_1_hungarian.c",
    "libstemmer_c/src_c/stem_ISO_8859_1_hungarian.h",
    "libstemmer_c/src_c/stem_ISO_8859_1_italian.c",
    "libstemmer_c/src_c/stem_ISO_8859_1_italian.h",
    "libstemmer_c/src_c/stem_ISO_8859_1_latin.c",
    "libstemmer_c/src_c/stem_ISO_8859_1_latin.h",
    "libstemmer_c/src_c/stem_ISO_8859_1_norwegian.c",
    "libstemmer_c/src_c/stem_ISO_8859_1_norwegian.h",
    "libstemmer_c/src_c/stem_ISO_8859_1_porter.c",
    "libstemmer_c/src_c/stem_ISO_8859_1_porter.h",
    "libstemmer_c/src_c/stem_ISO_8859_1_portuguese.c",
    "libstemmer_c/src_c/stem_ISO_8859_1_portuguese.h",
    "libstemmer_c/src_c/stem_ISO_8859_1_spanish.c",
    "libstemmer_c/src_c/stem_ISO_8859_1_spanish.h",
    "libstemmer_c/src_c/stem_ISO_8859_1_swedish.c",
    "libstemmer_c/src_c/stem_ISO_8859_1_swedish.h",
    "libstemmer_c/src_c/stem_ISO_8859_2_romanian.c",
    "libstemmer_c/src_c/stem_ISO_8859_2_romanian.h",
    "libstemmer_c/src_c/stem_KOI8_R_russian.c",
    "libstemmer_c/src_c/stem_KOI8_R_russian.h",
    "libstemmer_c/src_c/stem_UTF_8_danish.c",
    "libstemmer_c/src_c/stem_UTF_8_danish.h",
    "libstemmer_c/src_c/stem_UTF_8_dutch.c",
    "libstemmer_c/src_c/stem_UTF_8_dutch.h",
    "libstemmer_c/src_c/stem_UTF_8_english.c",
    "libstemmer_c/src_c/stem_UTF_8_english.h",
    "libstemmer_c/src_c/stem_UTF_8_finnish.c",
    "libstemmer_c/src_c/stem_UTF_8_finnish.h",
    "libstemmer_c/src_c/stem_UTF_8_french.c",
    "libstemmer_c/src_c/stem_UTF_8_french.h",
    "libstemmer_c/src_c/stem_UTF_8_german.c",
    "libstemmer_c/src_c/stem_UTF_8_german.h",
    "libstemmer_c/src_c/stem_UTF_8_hungarian.c",
    "libstemmer_c/src_c/stem_UTF_8_hungarian.h",
    "libstemmer_c/src_c/stem_UTF_8_italian.c",
    "libstemmer_c/src_c/stem_UTF_8_italian.h",
    "libstemmer_c/src_c/stem_UTF_8_latin.c",
    "libstemmer_c/src_c/stem_UTF_8_latin.h",
    "libstemmer_c/src_c/stem_UTF_8_norwegian.c",
    "libstemmer_c/src_c/stem_UTF_8_norwegian.h",
    "libstemmer_c/src_c/stem_UTF_8_porter.c",
    "libstemmer_c/src_c/stem_UTF_8_porter.h",
    "libstemmer_c/src_c/stem_UTF_8_portuguese.c",
    "libstemmer_c/src_c/stem_UTF_8_portuguese.h",
    "libstemmer_c/src_c/stem_UTF_8_romanian.c",
    "libstemmer_c/src_c/stem_UTF_8_romanian.h",
    "libstemmer_c/src_c/stem_UTF_8_russian.c",
    "libstemmer_c/src_c/stem_UTF_8_russian.h",
    "libstemmer_c/src_c/stem_UTF_8_spanish.c",
    "libstemmer_c/src_c/stem_UTF_8_spanish.h",
    "libstemmer_c/src_c/stem_UTF_8_swedish.c",
    "libstemmer_c/src_c/stem_UTF_8_swedish.h",
    "libstemmer_c/src_c/stem_UTF_8_turkish.c",
    "libstemmer_c/src_c/stem_UTF_8_turkish.h",
    "test/helper.rb",
    "test/lingua/test_stemmer.rb"
  ]
  s.homepage = %q{http://github.com/aurelian/ruby-stemmer}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{ruby-stemmer}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Expose libstemmer_c to Ruby.}
  s.test_files = [
    "test/helper.rb",
    "test/lingua/test_stemmer.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

