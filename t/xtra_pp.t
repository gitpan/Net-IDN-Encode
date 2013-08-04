use strict;
use utf8;
use warnings;

BEGIN {
  binmode STDOUT, ':utf8';
  binmode STDERR, ':utf8';
}

use Test::More tests => 3 + 1;
use Test::NoWarnings;

{
  $Net::IDN::Punycode::_NO_XS = 1;
}
use Net::IDN::UTS46 (':all');

no warnings 'utf8';

my %p = ("TransitionalProcessing" => "0");

is(eval{uts46_to_ascii("xn--0.pt", %p)},	undef,	"to_ascii\(\'xn\-\-0\.pt\'\)\ throws\ error\ A3\ \[data\/IdnaTest\.txt\:256\]") or ($@ and diag($@));
is(eval{uts46_to_unicode("xn--0.pt", %p)},	undef,	"to_unicode\(\'xn\-\-0\.pt\'\)\ throws\ error\ A3\ \[data\/IdnaTest\.txt\:256\]") or ($@ and diag($@));
is(eval{Net::IDN::Punycode::decode_punycode(0)}, undef,  "decode_punycode(0) throws error") or ($@ and diag($@));

exit(0);
