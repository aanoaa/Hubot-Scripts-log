package Hubot::Scripts::log::ResultBase;
use Moose;
use MooseX::NonMoose;
use namespace::autoclean;

extends 'DBIx::Class::Core';

__PACKAGE__->load_components(qw/
    DateTime::Epoch
    Core
/);

__PACKAGE__->meta->make_immutable;

1;
