update spec_link set 
asteroid_num = replace(substring( substring(url from 'mpnumber" rowspan="\d">[(]\d*[)]*</'  ) from  position('>' in substring(url from 'mpnumber" rowspan="\d">[(]\d*[)]</'  ) )+1 ), '</','')
,asteroid_name = replace(substring( substring(url from 'mpname" rowspan="\d">\w*</'  ) from  position('>' in substring(url from 'mpname" rowspan="\d">\w*</'  ) )+1 ), '</','')
,asteroid_desig = replace(replace(substring( substring(url from 'provdesig" rowspan="\d">[0-9A-Za-z <>]*<'  ) from  position('>' in substring(url from 'provdesig" rowspan="\d">[0-9A-Za-z <>]*<'  ) )+1 ), '<sub>',''),'<','')
,file_name = substring(substring(substring(url from 'data/[A-Za-z0-9/.]*') from 15) from position('/' in substring(substring(url from 'data/[A-Za-z0-9/.]*') from 15))+1)
	
where substring(url from 'mpname" rowspan="\d">\w*</'  ) is not null;


select file_name,case when a1.id is null then a2.id else a1.id end as asteroid_id into spec_link_header
from spec_link s
left join asteroid a1 on s.asteroid_desig = a1.pdes
left join asteroid a2 on s.asteroid_name = a2.name
where file_name is not null
and  (a1.id is not null or a2.id is not null);

update spec_header
set asteroid_id = (select asteroid_id from spec_link_header where file_name = spec_header.file_name );
