package GraphQL::NodeLimit;
use 5.014;
use strict;
use warnings;

use Types::Standard qw/Int/;

our $VERSION = "0.01";

use Moo;

has limit => (
    is       => 'ro',
    isa      => Int,
    required => 1,
);

has captured => (
    is       => 'rw',
    isa      => Int,
    required => 1,
);

no Moo;

sub BUILDARGS {
    my $self  = shift;
    my $limit = shift;
    return ( limit => $limit, captured => 0 );
}

1;
__END__

=encoding utf-8

=head1 NAME

GraphQL::NodeLimit - It's new $module

=head1 SYNOPSIS

    use GraphQL::NodeLimit;

=head1 DESCRIPTION

GraphQL::NodeLimit is ...

=head1 LICENSE

Copyright (C) taiyoh.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

taiyoh E<lt>sun.basix@gmail.comE<gt>

=cut

