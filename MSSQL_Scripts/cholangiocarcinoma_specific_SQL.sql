/* counts of cholangio data */
select cancer_type, count(*) from [summary_data].[dbo].[all_data_raw_dedupe] where 
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
group by cancer_type order by count(*) desc

select * from [summary_data].[dbo].[all_data_raw_dedupe] where 
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
order by cancer_type