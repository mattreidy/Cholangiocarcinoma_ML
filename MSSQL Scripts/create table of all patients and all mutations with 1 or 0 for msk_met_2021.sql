use msk_met_2021

DECLARE @Columns NVARCHAR(MAX),
@SQL NVARCHAR(MAX);
SELECT @Columns = ( SELECT CHAR(10) + CHAR(9) + ',MAX( CASE WHEN data_mutations.hugo_symbol = ' + QUOTENAME( hugo_symbol, '''') + ' THEN 1 ELSE 0 END) AS ' +  QUOTENAME(hugo_symbol)
                FROM [reference_data].[dbo].[all_hugo_symbols]
                GROUP BY hugo_symbol
                FOR XML PATH(''), TYPE).value('./text()[1]', 'nvarchar(max)')

SET @SQL = N'SELECT data_clinical_patient.patient_id + data_clinical_sample.sample_id as id
		,data_clinical_patient.patient_id
		,data_clinical_sample.sample_id
		,data_clinical_sample.SUBTYPE as cancer_type
		,data_clinical_patient.sex
		,FLOOR(data_clinical_patient.AGE_AT_SEQUENCING) as age'
         + @Columns
         + N'FROM data_clinical_patient, data_clinical_sample, data_mutations
		 WHERE data_clinical_sample.sample_id = data_mutations.tumor_sample_barcode
		 AND data_clinical_sample.patient_id = data_clinical_patient.patient_id
		 GROUP BY data_clinical_sample.patient_id, data_clinical_sample.sample_id, data_clinical_sample.SUBTYPE, data_clinical_patient.patient_id, data_clinical_patient.sex, data_clinical_patient.AGE_AT_SEQUENCING' 

execute sp_executesql @SQL




