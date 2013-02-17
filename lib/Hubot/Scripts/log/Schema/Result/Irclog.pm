use utf8;
package Hubot::Scripts::log::Schema::Result::Irclog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Hubot::Scripts::log::Schema::Result::Irclog

=cut

use strict;
use warnings;

=head1 BASE CLASS: L<Hubot::Scripts::log::ResultBase>

=cut

use Moose;
use MooseX::NonMoose;
use namespace::autoclean;
extends 'Hubot::Scripts::log::ResultBase';

=head1 TABLE: C<irclog>

=cut

__PACKAGE__->table("irclog");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 channel

  data_type: 'text'
  is_nullable: 1

=head2 day

  data_type: 'text'
  is_nullable: 1

=head2 nick

  data_type: 'text'
  is_nullable: 1

=head2 timestamp

  data_type: 'integer'
  is_nullable: 1

=head2 line

  data_type: 'text'
  is_nullable: 1

=head2 spam

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "channel",
  { data_type => "text", is_nullable => 1 },
  "day",
  { data_type => "text", is_nullable => 1 },
  "nick",
  { data_type => "text", is_nullable => 1 },
  "timestamp",
  { data_type => "integer", is_nullable => 1 },
  "line",
  { data_type => "text", is_nullable => 1 },
  "spam",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07033 @ 2013-02-17 19:08:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:VxMkeJY2HirfbkYfsZyY8Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
