#!/usr/bin/perl

use XML::Simple;
#use Data::Dumper;
use YAML::Syck;

if( ( not defined $ARGV[0]) or ( $ARGV[0] eq "-h" ) or ( $ARGV[0] eq "--help" ) ) {
	print "USAGE: perl xml2yaml.pl file.xml > file.yaml\n";
	exit();
}

my $data = XMLin( $ARGV[0] );

#print Dumper($ref);
$YAML::Syck::ImplicitTyping = 1;
$yaml = Dump( $data );

print $yaml;
