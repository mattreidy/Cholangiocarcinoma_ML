library(dplyr)
new <- all_data_raw %>%
  group_by(patient_id) %>%
  mutate(age = max(age)) %>%
  slice(which.max(mutcnt)) %>%
  ungroup()
# mark cholangio cancer types as 1
new[new=="Biliary Tract" 
    | new=="CHOL" 
    | new=="Cholangio Extrahepatic" 
    | new=="Cholangio Intrahepatic"
    | new=="Cholangiocarcinoma"
    | new=="EHCH"
    | new=="Extrahepatic Cholangiocarcinoma"
    | new=="Hepatocellular Carcinoma plus Intrahepatic Cholangiocarcinoma"
    | new=="IHCH"
    | new=="Intrahepatic Cholangiocarcinoma"
    | new=="Perihilar Cholangiocarcinoma"
    ]<- "1"
# mark all other cancer types as 0
new["cancer_type"][new["cancer_type"] != "1"] <- "0"
# create a new file with the output
write.table(new, file = "all_data_raw_dedupe.txt", sep = "\t", quote = F, row.names = FALSE)
# delete columns not needed for CNN
new[2] <- NULL
new[2] <- NULL
new[3] <- NULL
new[3] <- NULL
new[3] <- NULL
new[3] <- NULL
new[1] <- NULL
write.table(new, file = "cancer_mutations.txt", sep = "\t", quote = F, row.names = FALSE)