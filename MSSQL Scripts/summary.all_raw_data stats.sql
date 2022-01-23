/*
select count (*) from [summary_data].[dbo].[all_data_raw] as total_samples
select count(distinct id) from [summary_data].[dbo].[all_data_raw]
select count(distinct patient_id) from [summary_data].[dbo].[all_data_raw]
select count(distinct sample_id) from [summary_data].[dbo].[all_data_raw]
select distinct cancer_type from [summary_data].[dbo].[all_data_raw] order by cancer_type

select min(age) from [summary_data].[dbo].[all_data_raw] as youngest_age where age in (select age from [summary_data].[dbo].[all_data_raw] where age > 0) 
select avg(age) from [summary_data].[dbo].[all_data_raw] as average_age
select max(age) from [summary_data].[dbo].[all_data_raw] as oldest_age
select top(1000) * from [summary_data].[dbo].[all_data_raw]
select * from  [summary_data].[dbo].[all_data_raw]
select cancer_type, count(*) from summary_data.[dbo].[all_data_raw] where FGFR2 > 0 group by cancer_type order by count(*) desc
select cancer_type, count(*) from summary_data.[dbo].[all_data_raw] where IDH1 > 0 group by cancer_type order by count(*) desc
select cancer_type, count(*) from summary_data.[dbo].[all_data_raw] where MLH1 > 0 group by cancer_type order by count(*) desc
*/

/* count of cholangio data */
select count(*) from [summary_data].[dbo].[all_data_raw] where 
cancer_type = 'Biliary Tract'
or cancer_type ='CHOL'
or cancer_type ='Cholangio Extrahepatic'
or cancer_type ='Cholangio Intrahepatic'
or cancer_type ='Cholangiocarcinoma'
or cancer_type ='EHCH'
or cancer_type ='Extrahepatic Cholangiocarcinoma'
or cancer_type ='Hepatocellular Carcinoma plus Intrahepatic Cholangiocarcinoma'
or cancer_type ='IHCH'
or cancer_type ='Intrahepatic Cholangiocarcinoma'
or cancer_type ='Perihilar Cholangiocarcinoma'


/* avg age of cholangio patients */
select avg(age) from [summary_data].[dbo].[all_data_raw] where age in 
(select age from summary_data.[dbo].[all_data_raw] where 
(cancer_type = 'Biliary Tract'
or cancer_type ='CHOL'
or cancer_type ='Cholangio Extrahepatic'
or cancer_type ='Cholangio Intrahepatic'
or cancer_type ='Cholangiocarcinoma'
or cancer_type ='EHCH'
or cancer_type ='Extrahepatic Cholangiocarcinoma'
or cancer_type ='Hepatocellular Carcinoma plus Intrahepatic Cholangiocarcinoma'
or cancer_type ='IHCH'
or cancer_type ='Intrahepatic Cholangiocarcinoma'
or cancer_type ='Perihilar Cholangiocarcinoma')
and age>0)

/* cholangio patients with mutation X */
select * from [summary_data].[dbo].[all_data_raw] where 
(cancer_type = 'Biliary Tract'
or cancer_type ='CHOL'
or cancer_type ='Cholangio Extrahepatic'
or cancer_type ='Cholangio Intrahepatic'
or cancer_type ='Cholangiocarcinoma'
or cancer_type ='EHCH'
or cancer_type ='Extrahepatic Cholangiocarcinoma'
or cancer_type ='Hepatocellular Carcinoma plus Intrahepatic Cholangiocarcinoma'
or cancer_type ='IHCH'
or cancer_type ='Intrahepatic Cholangiocarcinoma'
or cancer_type ='Perihilar Cholangiocarcinoma')
and IDH1 > 0 ORDER BY id


select * from [summary_data].[dbo].[all_data_raw] where mutcnt < 1

select ERBB2 from [summary_data].[dbo].[all_data_raw] where id = 'P-0027527P-0027527-T04-IM6'
select ERBB2 ,IDH2 from [summary_data].[dbo].[all_data_raw] where id = 'P-0027527P-0027527-T04-IM6'

/* counts of each CC type */
select cancer_type, count(*) from [summary_data].[dbo].[all_data_raw] where 
(cancer_type = 'Biliary Tract'
or cancer_type ='CHOL'
or cancer_type ='Cholangio Extrahepatic'
or cancer_type ='Cholangio Intrahepatic'
or cancer_type ='Cholangiocarcinoma'
or cancer_type ='EHCH'
or cancer_type ='Extrahepatic Cholangiocarcinoma'
or cancer_type ='Hepatocellular Carcinoma plus Intrahepatic Cholangiocarcinoma'
or cancer_type ='IHCH'
or cancer_type ='Intrahepatic Cholangiocarcinoma'
or cancer_type ='Perihilar Cholangiocarcinoma')
group by cancer_type order by count(*) desc
