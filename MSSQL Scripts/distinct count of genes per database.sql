use [msk_met_2021]
select count(distinct([Hugo_Symbol])) from [dbo].[data_mutations]
use [msk_ch_2020]
select count(distinct([Hugo_Symbol])) from [dbo].[data_mutations]
use [chol_icgc_2017]
select count(distinct([Hugo_Symbol])) from [dbo].[data_mutations]
use [chol_msk_2018]
select count(distinct([Hugo_Symbol])) from [dbo].[data_mutations]
use [msk_impact_2017]
select count(distinct([Hugo_Symbol])) from [dbo].[data_mutations]
use [ihch_msk_2021]
select count(distinct([Hugo_Symbol])) from [dbo].[data_mutations]


select [Hugo_Symbol] from [msk_met_2021].[dbo].[data_mutations]
UNION select [Hugo_Symbol] from [msk_ch_2020].[dbo].[data_mutations]
UNION select [Hugo_Symbol] from [chol_icgc_2017].[dbo].[data_mutations]
UNION select [Hugo_Symbol] from [chol_msk_2018].[dbo].[data_mutations]
UNION select [Hugo_Symbol] from [msk_impact_2017].[dbo].[data_mutations]
UNION select [Hugo_Symbol] from [ihch_msk_2021].[dbo].[data_mutations]
order by [Hugo_Symbol]
