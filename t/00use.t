# $Id: 00use.t 77 2008-09-13 09:06:30Z cfaerber $

use strict;
use Test::More tests => 3;

use_ok 'Net::IDN::Nameprep';
use_ok 'Net::IDN::Punycode';
use_ok 'Net::IDN::Encode';
