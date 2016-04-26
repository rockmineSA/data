--select count(distinct a.id) from asteroid a

select a.id, c.--c.component, 
	sum((case when a.diameter is null then 64 else a.diameter end / 2) ^ 3 * c.x::numeric(20,10))
from asteroid a 
	join composition c on a.spec_b = c.spec
group by a.id--, c.component
order by 2 desc
	;


