CREATE TABLE spec_data
(
	file_name varchar not null,
	junk varchar,
	wavelength numeric(10,7),
	reflectance numeric(10,7),
	uncertainty numeric(20,7),
	images_used integer
);
	
CREATE INDEX spec_data_name_wave_idx 
ON spec_data (file_name, wavelength);
