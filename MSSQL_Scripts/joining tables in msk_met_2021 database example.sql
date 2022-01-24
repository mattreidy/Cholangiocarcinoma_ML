
use msk_met_2021

select data_clinical_sample.patient_id
,data_mutations.hugo_symbol
,data_clinical_patient.sex
,data_clinical_sample.subtype
,data_clinical_sample.msi_type
,floor(data_clinical_sample.TMB_NONSYNONYMOUS) as tmb
,floor(data_clinical_patient.age_at_sequencing) as age
from data_clinical_sample, data_mutations, data_clinical_patient
where data_clinical_sample.sample_id = data_mutations.tumor_sample_barcode
and data_clinical_sample.patient_id = data_clinical_patient.patient_id
and data_clinical_sample.subtype like 'cholangio%'
order by TMB_NONSYNONYMOUS

