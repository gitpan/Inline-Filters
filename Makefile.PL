use ExtUtils::MakeMaker;

WriteMakefile(
  NAME => 'Inline::Filters',
  VERSION_FROM => 'Filters.pm',
  ABSTRACT => 'Common source code filters for Inline Modules',
  AUTHOR => 'Neil Watkiss',
  PREREQ_PM => {
    Inline    => 0.42,
    Inline::C => 0.42,
  },
  clean => {FILES => '_Inline/'},
  ($ExtUtils::MakeMaker::VERSION gt '6.46' ?
   ('META_MERGE'  =>
    {
      resources =>
      {
        repository  => 'http://github.com/perl11/Inline-Filters',
        license     => 'http://dev.perl.org/licenses/',
      },
    }
   ) : ()),
  SIGN => 1,
  );
