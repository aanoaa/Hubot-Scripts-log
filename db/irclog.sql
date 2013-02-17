-- DROP TABLE irclog;
CREATE TABLE irclog (
    id        INTEGER PRIMARY KEY,
    channel   TEXT,
    day       TEXT,
    nick      TEXT,
    timestamp INTEGER,
    line      TEXT,
    spam      INTEGER
);

CREATE INDEX nick_index ON irclog (nick);
CREATE INDEX day_index ON irclog (day);
CREATE INDEX irclog_day_channel_idx ON irclog (day, channel);
CREATE INDEX channel_index ON irclog (channel);
