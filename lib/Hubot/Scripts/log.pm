package Hubot::Scripts::log;
# ABSTRACT: logging all irc chat messages to database
use strict;
use warnings;
use DateTime;
use Hubot::Scripts::log::DBIC;

sub load {
    my ( $class, $robot ) = @_;

    my $schema = Hubot::Scripts::log::DBIC->new({
        connect_info => {
            dsn => $ENV{HUBOT_IRCLOG_DSN}
        }
    });

    my $irclog = $schema->resultset('Irclog');

    $robot->catchAll(
        sub {
            my $msg = shift;

            my $dt = DateTime->now;
            $irclog->create({
                id        => undef,
                channel   => $msg->message->user->{room},
                day       => $dt->ymd,
                nick      => $msg->message->user->{name},
                timestamp => $dt->epoch,
                line      => $msg->message->can('text') ? $msg->message->text : '',
                spam      => 0,
            });
        }
    );
}

1;

=pod

=head1 NAME

Hubot::Scripts::log

=head1 SYNOPSIS

    log - warnings! hubot will catch your messages and write to a furtive place

=head1 CONFIGURATION

=over

=item HUBOT_IRCLOG_DSN

e.g.

    dbi:SQLite:db/irclog.db

=back

=head1 AUTHOR

Hyungsuk Hong <aanoaa@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Hyungsuk Hong.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
