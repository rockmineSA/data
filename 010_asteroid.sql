create table asteroid 
(

id varchar not null,
spkid varchar not null,
full_name varchar not null,
pdes varchar not null,
name varchar,
prefix varchar,
neo varchar null,
pha varchar null,
H numeric(10,5),
G  numeric(10,5),
M1  numeric(10,5), --no NEO observations
M2  numeric(10,5), --no NEO observations
K1  numeric(10,5), --no NEO observations
K2  numeric(10,5), --no NEO observations
PC  numeric(10,5),
diameter  numeric(10,5),
extent varchar,
albedo numeric(10,5),
rot_per numeric(10,5),
GM varchar,  --E notation
BV numeric(10,5),
UB numeric(10,5),
IR varchar,  --no NEO observations
spec_B varchar,
spec_T varchar,
H_sigma numeric(10,5),
diameter_sigma numeric(10,5),
orbit_id varchar not null,
epoch varchar,
epoch_mjd varchar,
epoch_cal varchar,
equinox varchar,
e numeric(30,20),
a numeric(30,20),
q numeric(30,20),
i numeric(30,20),
om numeric(30,20),
w numeric(30,20),
ma numeric(30,20),
ad numeric(30,20),
n numeric(30,20),
tp numeric(30,20),
tp_cal varchar,
per numeric(30,20),
per_y numeric(30,20),
moid numeric(20,12),
moid_ld numeric(20,12),
moid_jup numeric(20,12),
t_jup numeric(20,12),
sigma_e varchar,  --E notation
sigma_a varchar,  --E notation
sigma_q varchar,  --E notation
sigma_i varchar,  --E notation
sigma_om varchar,  --E notation
sigma_w varchar,  --E notation
sigma_ma varchar,  --E notation
sigma_ad varchar,  --E notation
sigma_n varchar,  --E notation
sigma_tp varchar,  --E notation
sigma_per varchar,  --E notation
class varchar,
producer varchar,
data_arc integer,
first_obs date,
last_obs date,
n_obs_used integer,
n_del_obs_used integer,
n_dop_obs_used integer,
condition_code varchar,
rms numeric(15,10),
two_body varchar, --no NEO observations
A1 varchar, --E notation
A2 varchar, --E notation
A3 varchar, --no NEO observations
DT varchar  --no NEO observations 
);
