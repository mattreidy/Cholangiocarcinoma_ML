use chol_msk_2018
DECLARE @Columns NVARCHAR(MAX),
@SQL NVARCHAR(MAX);
SELECT @Columns = ( SELECT CHAR(10) + CHAR(9) + ',MAX( CASE WHEN data_mutations.hugo_symbol = ' + QUOTENAME( hugo_symbol, '''') + ' THEN 1 ELSE 0 END) AS ' +  QUOTENAME(hugo_symbol)
                FROM [reference_data].[dbo].[all_hugo_symbols]
                GROUP BY hugo_symbol
                FOR XML PATH(''), TYPE).value('./text()[1]', 'nvarchar(max)')

SET @SQL = N'SELECT data_patients.patient_id + data_clinical_sample.sample_id as id
		,data_patients.patient_id
		,data_clinical_sample.sample_id
		,data_clinical_sample.ONCOTREE_CODE as cancer_type
		,data_patients.sex
		,data_clinical_sample.AGE_AT_SEQ_REPORT as age'
         + @Columns
         + N'FROM data_patients, data_clinical_sample, data_mutations
		 WHERE data_clinical_sample.sample_id = data_mutations.tumor_sample_barcode
		 AND data_clinical_sample.patient_id = data_patients.patient_id
		 GROUP BY data_clinical_sample.patient_id, data_clinical_sample.sample_id, data_clinical_sample.ONCOTREE_CODE, data_patients.patient_id, data_patients.sex, data_clinical_sample.AGE_AT_SEQ_REPORT' 

execute sp_executesql @SQL



