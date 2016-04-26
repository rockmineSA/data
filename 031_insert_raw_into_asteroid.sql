--delete from asteroids

insert into asteroid
select id,spkid,full_name,pdes,name,prefix,neo,pha,
H::numeric(10,5),
G::numeric(10,5),
M1::numeric(10,5), 
M2::numeric(10,5), 
K1::numeric(10,5), 
K2::numeric(10,5), 
PC::numeric(10,5),
CASE WHEN position(',' in diameter) > 0 THEN NULL ELSE diameter::numeric(10,5) END,
extent,
albedo::numeric(10,5),
rot_per::numeric(10,5),
GM ,  --E notation
BV::numeric(10,5),
UB::numeric(10,5),
IR ,  --no NEO observations
REPLACE(spec_B,':','') ,
spec_T ,
H_sigma::numeric(10,5),
diameter_sigma::numeric(10,5),
orbit_id ,
epoch ,
epoch_mjd ,
epoch_cal ,
equinox ,
e::numeric(30,20),
a::numeric(30,20),
q::numeric(30,20),
i::numeric(30,20),
om::numeric(30,20),
w::numeric(30,20),
ma::numeric(30,20),
ad::numeric(30,20),
n::numeric(30,20),
tp::numeric(30,20),
tp_cal ,
per::numeric(30,20),
per_y::numeric(30,20),
moid::numeric(20,12),
moid_ld::numeric(20,12),
moid_jup::numeric(20,12),
t_jup::numeric(20,12),
sigma_e ,  --E notation
sigma_a ,  --E notation
sigma_q ,  --E notation
sigma_i ,  --E notation
sigma_om ,  --E notation
sigma_w ,  --E notation
sigma_ma ,  --E notation
sigma_ad ,  --E notation
sigma_n ,  --E notation
sigma_tp ,  --E notation
sigma_per ,  --E notation
class ,
producer ,
data_arc::integer,
first_obs::date,
last_obs::date,
n_obs_used::integer,
n_del_obs_used::integer,
n_dop_obs_used::integer,
condition_code,
rms::numeric(15,10),
two_body , --no NEO observations
A1 , --E notation
A2 , --E notation
A3 , --no NEO observations
DT   --no NEO observations 

from asteroid_raw
--where position(',' in diameter) = 0 or diameter is null
--where neo = 'Y'
--limit 1

