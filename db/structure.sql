CREATE TABLE migration_versions (version text NOT NULL);
CREATE TABLE example_models (id integer PRIMARY KEY AUTOINCREMENT, name text NOT NULL, created_at text NOT NULL, updated_at text NOT NULL);
CREATE TABLE foos (id integer PRIMARY KEY AUTOINCREMENT, name text NOT NULL, created_at text NOT NULL, updated_at text NOT NULL);
