--drop table composition

create table composition 
(

spec varchar not null,
component varchar,
x varchar
);

CREATE INDEX composition_spec_component_idx 
on composition (spec, component);

CREATE INDEX composition_spec_idx 
on composition (spec);
