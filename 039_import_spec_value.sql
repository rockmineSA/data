truncate table spec_t_b_map;

\copy spec_t_b_map from '/Users/erictheis/spaceapps-rockmine/data/spec_t_b_map.csv' csv;


truncate table spec_t_composition;

\copy spec_t_composition from '/Users/erictheis/spaceapps-rockmine/data/spec_t_composition.csv' csv;
