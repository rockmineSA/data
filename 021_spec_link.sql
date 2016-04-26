CREATE TABLE public.spec_link
(
  url text
);


alter table spec_link add column file_name varchar;
alter table spec_link add column asteroid_name varchar;
alter table spec_link add column asteroid_num varchar;
alter table spec_link add column asteroid_desig varchar;

