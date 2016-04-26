create table deltav
(
	pdes varchar not null,
	dv numeric(10,7),
	H numeric(10,5),
	a numeric(10,5),
	e numeric(10,5),
	i numeric(10,5)
	);
	
CREATE INDEX deltav_pdes 
on deltav (pdes);
