#!/usr/bin/env perl

use strict;
use warnings;

use Test::More tests=>4;

use_ok('Conductrics::Client');
my $client = Conductrics::Client->new(apiKey=>$agent->apiKey, ownerCode=>$agent->ownerCode, baseUrl=>$agent->baseUrl);

ok($client, "Management Client created");
isa_ok($client, 'Conductrics::Client');
can_ok($client, qw/create_agent delete_agent/);

exit;
