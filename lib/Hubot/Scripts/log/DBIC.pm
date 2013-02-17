package Hubot::Scripts::log::DBIC;
use Moose;
use namespace::autoclean;

use Hubot::Scripts::log::Schema;

has schema => (
    is => 'ro',
    lazy_build => 1,
    handles => {
        txn_guard => 'txn_scope_guard',
    }
);

has connect_info => (
    is => 'ro',
    isa => 'HashRef',
);

sub _build_schema { Hubot::Scripts::log::Schema->connect(shift->connect_info) }

sub resultset {
    my ($self, $moniker) = @_;

    return $self->schema->resultset($moniker);
}

__PACKAGE__->meta->make_immutable;

1;
