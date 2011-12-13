#!/usr/bin/env perl
use strict;
use lib ($ENV{HOME}."/extlib/lib/perl5", 'lib');
use DBI;
use Cirque::Environment;

my $dbh = DBI->connect( 
    sprintf( 'dbi:mysql:host=%s;port=%s', $ENV{DOTCLOUD_DB_MYSQL_HOST}, $ENV{DOTCLOUD_DB_MYSQL_PORT} ),
    $ENV{CIRQUE_MYSQL_USERNAME},
    $ENV{CIRQUE_MYSQL_PASSWORD},
) or die 'could not connect to database';

$dbh->do( 'CREATE DATABASE cirque' );

$dbh->disconnect if $dbh;

