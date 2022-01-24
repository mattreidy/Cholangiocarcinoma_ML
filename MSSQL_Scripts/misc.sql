use summary_data
select distinct male from [dbo].[all_data_raw]
select distinct female from [dbo].[all_data_raw]
select distinct age from [dbo].[all_data_raw]
select distinct mutcnt from [dbo].[all_data_raw] order by mutcnt asc

select distinct id, count(id), mutcnt from [dbo].[all_data_raw] group by id, mutcnt order by count(id) desc
select * from [dbo].[all_data_raw] where id='P-0000298P-0000298-T01-IM3'

select distinct id, count(id), mutcnt from [dbo].[all_data_raw_dedupe] group by id, mutcnt order by count(id) desc
select * from [dbo].[all_data_raw_dedupe] where id='P-0000298P-0000298-T01-IM3'


select distinct id, count(id) from [dbo].[all_data_raw]  group by id having count(id) > 1 order by count(id) desc
select id, age, mutcnt from [dbo].[all_data_raw]  group by id, age, mutcnt having count(id) > 1 order by age asc



select min(age) from [summary_data].[dbo].[all_data_raw] as youngest_age where age in (select age from [summary_data].[dbo].[all_data_raw] where age > 0) 

select id,  mutcnt, cancer_type, age from [dbo].[all_data_raw]  group by id, mutcnt, cancer_type, age  having  count(id) > 1