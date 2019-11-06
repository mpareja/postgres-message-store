-- Table
GRANT SELECT, INSERT ON messages TO :DATABASE_USER;

-- Sequence
GRANT USAGE, SELECT ON SEQUENCE messages_global_position_seq TO :DATABASE_USER;

-- Functions
GRANT EXECUTE ON FUNCTION gen_random_uuid() TO :DATABASE_USER;
GRANT EXECUTE ON FUNCTION md5(text) TO :DATABASE_USER;
GRANT EXECUTE ON FUNCTION hash_64(varchar) TO :DATABASE_USER;
GRANT EXECUTE ON FUNCTION category(varchar) TO :DATABASE_USER;
GRANT EXECUTE ON FUNCTION stream_version(varchar) TO :DATABASE_USER;
GRANT EXECUTE ON FUNCTION write_message(varchar, varchar, varchar, jsonb, jsonb, bigint) TO :DATABASE_USER;
GRANT EXECUTE ON FUNCTION get_stream_messages(varchar, bigint, bigint, varchar) TO :DATABASE_USER;
GRANT EXECUTE ON FUNCTION get_category_messages(varchar, bigint, bigint, varchar) TO :DATABASE_USER;
GRANT EXECUTE ON FUNCTION get_last_message(varchar) TO :DATABASE_USER;

-- Views
GRANT SELECT ON category_type_summary TO :DATABASE_USER;
GRANT SELECT ON stream_summary TO :DATABASE_USER;
GRANT SELECT ON stream_type_summary TO :DATABASE_USER;
GRANT SELECT ON type_category_summary TO :DATABASE_USER;
GRANT SELECT ON type_stream_summary TO :DATABASE_USER;
GRANT SELECT ON type_summary TO :DATABASE_USER;
