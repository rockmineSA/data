#!/bin/bash

/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -f 001_create_db.sql


/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -f 010_asteroid.sql rockminedb
/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -f 011_composition.sql rockminedb
/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -f 012_spec_header.sql rockminedb
/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -f 013_spec_data.sql rockminedb
/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -f 014_deltav.sql rockminedb

/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -f 020_asteroid_raw.sql rockminedb
/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -f 021_spec_link.sql rockminedb
/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -f 030_import_asteroids.sql rockminedb
/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -f 031_insert_raw_into_asteroid.sql rockminedb
/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -f 032_import_spec_link.sql rockminedb
/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -f 033_import_spec_header.sql rockminedb
/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -f 034_import_spec_data.sql rockminedb
/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -f 035_import_composition.sql rockminedb
/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -f 036_update_spec_header_asteroid_id.sql rockminedb
/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -f 037_import_deltav.sql rockminedb
/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -f 038_import_name2provdesig.sql rockminedb
/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -f 039_import_spec_value.sql rockminedb


#/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -h whitebear.cufgwnjiypjv.us-west-2.rds.amazonaws.com  -U polar -f /Users/erictheis/spaceapps-rockmine/data/030_import_asteroids.sql rockminedb
#/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -h whitebear.cufgwnjiypjv.us-west-2.rds.amazonaws.com  -U polar -f /Users/erictheis/spaceapps-rockmine/data/031_insert_raw_into_asteroid.sql rockminedb
#/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -h whitebear.cufgwnjiypjv.us-west-2.rds.amazonaws.com  -U polar -f /Users/erictheis/spaceapps-rockmine/data/032_import_spec_link.sql rockminedb
#/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -h whitebear.cufgwnjiypjv.us-west-2.rds.amazonaws.com  -U polar -f /Users/erictheis/spaceapps-rockmine/data/033_import_spec_header.sql rockminedb
#/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -h whitebear.cufgwnjiypjv.us-west-2.rds.amazonaws.com  -U polar -f /Users/erictheis/spaceapps-rockmine/data/034_import_spec_data.sql rockminedb


#/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -h whitebear.cufgwnjiypjv.us-west-2.rds.amazonaws.com  -U polar -f 014_deltav.sql rockminedb
#/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -h whitebear.cufgwnjiypjv.us-west-2.rds.amazonaws.com  -U polar -f 037_import_deltav.sql rockminedb
#/Applications/Postgres.app/Contents/Versions/9.5/bin/psql -h whitebear.cufgwnjiypjv.us-west-2.rds.amazonaws.com  -U polar -f 039_import_spec_value.sql rockminedb