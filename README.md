# Hubot-Scripts-log #

    $ git clone git://github.com/aanoaa/Hubot-Scripts-log.git
    $ sqlite3 db/irclog.db < db/irclog.sql
    $ export HUBOT_IRCLOG_DSN='dbi:SQLite:/path/to/db/irclog.db'
    $ hubot -a irc
