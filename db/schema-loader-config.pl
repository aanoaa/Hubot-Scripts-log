{
    schema_class => "Hubot::Scripts::log::Schema",
    connect_info => {
        dsn => "dbi:SQLite:db/irclog.db",
    },
    loader_options => {
        dump_directory     => 'lib',
        naming             => { ALL => 'v8' },
        skip_load_external => 1,
        relationships      => 1,
        use_moose          => 1,
        only_autoclean     => 1,
        col_collision_map  => 'column_%s',
        result_base_class => 'Hubot::Scripts::log::ResultBase',
        overwrite_modifications => 1,
        datetime_undef_if_invalid => 1,
        custom_column_info => sub {
            my ($table, $column_name, $column_info) = @_;
            if ($column_name =~ /at$/) {
                return {
                    inflate_datetime => 'epoch',
                    set_on_create    => 1,
                    %$column_info,
                };
            }
        },
    },
}
