CREATE USER rockmine_user WITH PASSWORD 'r0ckm1n3' CREATEDB;
GRANT SELECT on asteroid to rockmine_user;
GRANT SELECT on composition to rockmine_user;
GRANT SELECT on spec_header to rockmine_user;
GRANT SELECT on spec_link to rockmine_user;
GRANT SELECT on spec_data to rockmine_user;
