drop table [summary_data].dbo.all_data_raw
drop table [summary_data].dbo.all_data_raw_dedupe

create table [summary_data].dbo.all_data_raw(
[id] [nvarchar](100),
[patient_id] [nvarchar](50),
[sample_id] [nvarchar](50),
[cancer_type] [nvarchar](100),
[male] [int],
[female] [int],
[age] [int],
[mutcnt] [int],
[ABCA13] [int],
[ABCA2] [int],
[ABCA7] [int],
[ABCC1] [int],
[ABL1] [int],
[AC004906.3] [int],
[AC008738.1] [int],
[ACAN] [int],
[ACLY] [int],
[ACVR1] [int],
[ACVR1B] [int],
[ACVR2A] [int],
[ADAM33] [int],
[ADAMTS20] [int],
[ADAMTSL3] [int],
[AFF1] [int],
[AFG3L2] [int],
[AGO2] [int],
[AGPAT6] [int],
[AKAP6] [int],
[AKT1] [int],
[AKT2] [int],
[AKT3] [int],
[ALDH1A2] [int],
[ALK] [int],
[ALOX12B] [int],
[AMER1] [int],
[AMER2] [int],
[ANGPT1] [int],
[ANK1] [int],
[ANK3] [int],
[ANKRD11] [int],
[APC] [int],
[APOB] [int],
[AR] [int],
[ARAF] [int],
[ARHGEF4] [int],
[ARID1A] [int],
[ARID1B] [int],
[ARID2] [int],
[ARID5B] [int],
[ARNT] [int],
[ASAP2] [int],
[ASTN1] [int],
[ASTN2] [int],
[ASXL1] [int],
[ASXL2] [int],
[ATF7IP] [int],
[ATM] [int],
[ATP10A] [int],
[ATR] [int],
[ATRX] [int],
[AURKA] [int],
[AURKB] [int],
[AXIN1] [int],
[AXIN2] [int],
[AXL] [int],
[B2M] [int],
[BABAM1] [int],
[BAP1] [int],
[BARD1] [int],
[BBC3] [int],
[BBX] [int],
[BCAR1] [int],
[BCL10] [int],
[BCL2] [int],
[BCL2L1] [int],
[BCL2L11] [int],
[BCL6] [int],
[BCL9] [int],
[BCOR] [int],
[BIRC3] [int],
[BIRC6] [int],
[BLM] [int],
[BMI1] [int],
[BMPR1A] [int],
[BOD1L1] [int],
[BPTF] [int],
[BRAF] [int],
[BRCA1] [int],
[BRCA2] [int],
[BRD4] [int],
[BRD7] [int],
[BRIP1] [int],
[BRPF3] [int],
[BSN] [int],
[BTK] [int],
[C11orf30] [int],
[C1orf145] [int],
[C1orf147] [int],
[CALR] [int],
[CAMTA1] [int],
[CARD11] [int],
[CARM1] [int],
[CASP8] [int],
[CBFB] [int],
[CBL] [int],
[CCND1] [int],
[CCND2] [int],
[CCND3] [int],
[CCNE1] [int],
[CD274] [int],
[CD276] [int],
[CD79A] [int],
[CD79B] [int],
[CD84] [int],
[CDC42] [int],
[CDC73] [int],
[CDH1] [int],
[CDH2] [int],
[CDH22] [int],
[CDH5] [int],
[CDH8] [int],
[CDK10] [int],
[CDK12] [int],
[CDK4] [int],
[CDK6] [int],
[CDK8] [int],
[CDKN1A] [int],
[CDKN1B] [int],
[CDKN2A] [int],
[CDKN2Ap14ARF] [int],
[CDKN2Ap16INK4A] [int],
[CDKN2B] [int],
[CDKN2B-AS1] [int],
[CDKN2C] [int],
[CEBPA] [int],
[CECR2] [int],
[CENPA] [int],
[CGGBP1] [int],
[CHD5] [int],
[CHEK1] [int],
[CHEK2] [int],
[CIC] [int],
[CNOT10] [int],
[CNPPD1] [int],
[COL11A1] [int],
[COL7A1] [int],
[COMP] [int],
[CREB3L4] [int],
[CREBBP] [int],
[CRKL] [int],
[CRLF2] [int],
[CSDE1] [int],
[CSF1R] [int],
[CSF3R] [int],
[CSMD1] [int],
[CSMD3] [int],
[CTCF] [int],
[CTD-2561B21.3] [int],
[CTLA4] [int],
[CTNNA2] [int],
[CTNNB1] [int],
[CTNND2] [int],
[CTTN] [int],
[CUBN] [int],
[CUL3] [int],
[CXCR4] [int],
[CYLD] [int],
[CYSLTR2] [int],
[DAPK1] [int],
[DAXX] [int],
[DCUN1D1] [int],
[DDB2] [int],
[DDR2] [int],
[DDX1] [int],
[DENND4A] [int],
[DICER1] [int],
[DIDO1] [int],
[DIS3] [int],
[DLC1] [int],
[DMXL1] [int],
[DMXL2] [int],
[DNAJB1] [int],
[DNMT1] [int],
[DNMT3A] [int],
[DNMT3B] [int],
[DOPEY2] [int],
[DOT1L] [int],
[DPYSL3] [int],
[DROSHA] [int],
[DUSP4] [int],
[E2F2] [int],
[E2F3] [int],
[ECE2] [int],
[ECT2] [int],
[EED] [int],
[EFS] [int],
[EGFL7] [int],
[EGFR] [int],
[EIF1AX] [int],
[EIF4A2] [int],
[EIF4E] [int],
[EIF4G2] [int],
[ELF3] [int],
[EP300] [int],
[EPAS1] [int],
[EPCAM] [int],
[EPHA2] [int],
[EPHA3] [int],
[EPHA5] [int],
[EPHA7] [int],
[EPHB1] [int],
[EPPK1] [int],
[ERBB2] [int],
[ERBB3] [int],
[ERBB4] [int],
[ERCC2] [int],
[ERCC3] [int],
[ERCC4] [int],
[ERCC5] [int],
[ERF] [int],
[ERG] [int],
[ERRFI1] [int],
[ESR1] [int],
[ESRRG] [int],
[ESX1] [int],
[ETV1] [int],
[ETV6] [int],
[EXT2] [int],
[EZH1] [int],
[EZH2] [int],
[FAM175A] [int],
[FAM46C] [int],
[FAM58A] [int],
[FANCA] [int],
[FANCC] [int],
[FAS] [int],
[FASTKD2] [int],
[FAT1] [int],
[FAT2] [int],
[FAT3] [int],
[FBN2] [int],
[FBXL13] [int],
[FBXO15] [int],
[FBXO31] [int],
[FBXO4] [int],
[FBXW7] [int],
[FGF19] [int],
[FGF23] [int],
[FGF3] [int],
[FGF4] [int],
[FGFR1] [int],
[FGFR2] [int],
[FGFR3] [int],
[FGFR4] [int],
[FH] [int],
[FHIT] [int],
[FIP1L1] [int],
[FKBP3] [int],
[FLCN] [int],
[FLT1] [int],
[FLT3] [int],
[FLT4] [int],
[FNTB] [int],
[FOS] [int],
[FOXA1] [int],
[FOXB2] [int],
[FOXK1] [int],
[FOXL2] [int],
[FOXM1] [int],
[FOXO1] [int],
[FOXP1] [int],
[FOXQ1] [int],
[FRS3] [int],
[FSIP2] [int],
[FUBP1] [int],
[FYN] [int],
[GATA1] [int],
[GATA2] [int],
[GATA3] [int],
[GATA6] [int],
[GATM] [int],
[GLI1] [int],
[GLI3] [int],
[GNA11] [int],
[GNA12] [int],
[GNAQ] [int],
[GNAS] [int],
[GNAS-AS1] [int],
[GPAM] [int],
[GPR112] [int],
[GPR98] [int],
[GPS2] [int],
[GPT] [int],
[GREM1] [int],
[GRIN2A] [int],
[GSK3B] [int],
[GTF2I] [int],
[GTF3C1] [int],
[H3F3A] [int],
[H3F3B] [int],
[H3F3C] [int],
[HACE1] [int],
[HAT1] [int],
[HCFC1] [int],
[HDAC2] [int],
[HECTD3] [int],
[HGF] [int],
[HIPK3] [int],
[HIST1H1C] [int],
[HIST1H2BD] [int],
[HIST1H3A] [int],
[HIST1H3B] [int],
[HIST1H3C] [int],
[HIST1H3D] [int],
[HIST1H3E] [int],
[HIST1H3F] [int],
[HIST1H3G] [int],
[HIST1H3H] [int],
[HIST1H3I] [int],
[HIST1H3J] [int],
[HIST2H3D] [int],
[HIST3H3] [int],
[HLA-A] [int],
[HLA-B] [int],
[HLCS] [int],
[HMCN1] [int],
[HNF1A] [int],
[HOXB13] [int],
[HRAS] [int],
[HSF1] [int],
[HUWE1] [int],
[HYOU1] [int],
[ICOSLG] [int],
[ID3] [int],
[IDH1] [int],
[IDH2] [int],
[IFNGR1] [int],
[IGF1] [int],
[IGF1R] [int],
[IGF2] [int],
[IGLON5] [int],
[IKBKB] [int],
[IKBKE] [int],
[IKZF1] [int],
[IL10] [int],
[IL7R] [int],
[INHA] [int],
[INHBA] [int],
[INPP4A] [int],
[INPP4B] [int],
[INPPL1] [int],
[INS-IGF2] [int],
[INSR] [int],
[INSRR] [int],
[IRF4] [int],
[IRS1] [int],
[IRS2] [int],
[ITCH] [int],
[JAK1] [int],
[JAK2] [int],
[JAK3] [int],
[JARID2] [int],
[JUN] [int],
[KAT2A] [int],
[KAT6B] [int],
[KCNA4] [int],
[KCNH1] [int],
[KDM1B] [int],
[KDM3B] [int],
[KDM5A] [int],
[KDM5C] [int],
[KDM6A] [int],
[KDR] [int],
[KEAP1] [int],
[KIF2B] [int],
[KIT] [int],
[KLF4] [int],
[KMT2A] [int],
[KMT2B] [int],
[KMT2C] [int],
[KMT2D] [int],
[KNSTRN] [int],
[KRAS] [int],
[LAMA1] [int],
[LAMA2] [int],
[LAMA3] [int],
[LATS1] [int],
[LATS2] [int],
[LDB1] [int],
[LGI1] [int],
[LMO1] [int],
[LMO7] [int],
[LRP1B] [int],
[LRP2] [int],
[LRRIQ1] [int],
[LTN1] [int],
[LYN] [int],
[LYVE1] [int],
[MAFB] [int],
[MALT1] [int],
[MAP2K1] [int],
[MAP2K2] [int],
[MAP2K4] [int],
[MAP2K7] [int],
[MAP3K1] [int],
[MAP3K13] [int],
[MAP3K14] [int],
[MAPK1] [int],
[MAPK3] [int],
[MAPK4] [int],
[MAPKAP1] [int],
[MARCKS] [int],
[MARK4] [int],
[MAX] [int],
[MCC] [int],
[MCL1] [int],
[MCM5] [int],
[MCM6] [int],
[MCM9] [int],
[MDC1] [int],
[MDC1-AS1] [int],
[MDM1] [int],
[MDM2] [int],
[MDM4] [int],
[MED12] [int],
[MEF2B] [int],
[MEF2BNB-MEF2B] [int],
[MEN1] [int],
[MET] [int],
[MGA] [int],
[MITF] [int],
[MKL1] [int],
[MLH1] [int],
[MLL] [int],
[MLL2] [int],
[MLL3] [int],
[MLL4] [int],
[MLLT11] [int],
[MLLT6] [int],
[MPL] [int],
[MRAS] [int],
[MRE11A] [int],
[MSH2] [int],
[MSH3] [int],
[MSH4] [int],
[MSH6] [int],
[MSI1] [int],
[MSI2] [int],
[MSL3] [int],
[MST1] [int],
[MST1R] [int],
[MTOR] [int],
[MUC1] [int],
[MUC16] [int],
[MUC17] [int],
[MUC2] [int],
[MUC4] [int],
[MUC6] [int],
[MUTYH] [int],
[MYC] [int],
[MYCL] [int],
[MYCL1] [int],
[MYCN] [int],
[MYD88] [int],
[MYOD1] [int],
[NBN] [int],
[NCK2] [int],
[NCOA2] [int],
[NCOA3] [int],
[NCOR1] [int],
[NDC80] [int],
[NDUFB11] [int],
[NEB] [int],
[NEGR1] [int],
[NEK4] [int],
[NF1] [int],
[NF2] [int],
[NFATC4] [int],
[NFE2L2] [int],
[NFKB1] [int],
[NFKB2] [int],
[NFKBIA] [int],
[NKX2-1] [int],
[NKX3-1] [int],
[NLRP1] [int],
[NOTCH1] [int],
[NOTCH2] [int],
[NOTCH3] [int],
[NOTCH4] [int],
[NOV] [int],
[NPM1] [int],
[NR2F1] [int],
[NRAS] [int],
[NSD1] [int],
[NTHL1] [int],
[NTRK1] [int],
[NTRK2] [int],
[NTRK3] [int],
[NUF2] [int],
[NUP214] [int],
[NUP93] [int],
[OBSCN] [int],
[OBSL1] [int],
[OGT] [int],
[OR10Z1] [int],
[P4HTM] [int],
[PAF1] [int],
[PAK1] [int],
[PAK7] [int],
[PALB2] [int],
[PARK2] [int],
[PARP1] [int],
[PAX5] [int],
[PBRM1] [int],
[PBX1] [int],
[PCDH10] [int],
[PCDHA12] [int],
[PCDHA13] [int],
[PCDHAC1] [int],
[PCLO] [int],
[PDCD1] [int],
[PDCD1LG2] [int],
[PDE4DIP] [int],
[PDGFA] [int],
[PDGFRA] [int],
[PDGFRB] [int],
[PDPK1] [int],
[PEG3] [int],
[PELP1] [int],
[PGR] [int],
[PHOX2B] [int],
[PIGR] [int],
[PIK3C2A] [int],
[PIK3C2G] [int],
[PIK3C3] [int],
[PIK3CA] [int],
[PIK3CB] [int],
[PIK3CD] [int],
[PIK3CG] [int],
[PIK3R1] [int],
[PIK3R2] [int],
[PIK3R3] [int],
[PIM1] [int],
[PLCD1] [int],
[PLCG2] [int],
[PLEC] [int],
[PLEKHG1] [int],
[PLK2] [int],
[PMAIP1] [int],
[PMEPA1] [int],
[PMS1] [int],
[PMS2] [int],
[PNRC1] [int],
[POLD1] [int],
[POLD3] [int],
[POLE] [int],
[PPARG] [int],
[PPFIA4] [int],
[PPM1D] [int],
[PPP1R12A] [int],
[PPP2R1A] [int],
[PPP4R2] [int],
[PPP6C] [int],
[PRDM1] [int],
[PRDM11] [int],
[PRDM14] [int],
[PREX2] [int],
[PRKAR1A] [int],
[PRKCI] [int],
[PRKD1] [int],
[PTCH1] [int],
[PTEN] [int],
[PTP4A1] [int],
[PTPN11] [int],
[PTPRD] [int],
[PTPRE] [int],
[PTPRS] [int],
[PTPRT] [int],
[PXDN] [int],
[RAB35] [int],
[RAC1] [int],
[RAC2] [int],
[RAD21] [int],
[RAD1] [int],
[RAD51] [int],
[RAD51B] [int],
[RAD51C] [int],
[RAD51D] [int],
[RAD52] [int],
[RAD54L] [int],
[RADIL] [int],
[RAF1] [int],
[RARA] [int],
[RARG] [int],
[RASA1] [int],
[RASGRF2] [int],
[RB1] [int],
[RBL1] [int],
[RBM10] [int],
[RECQL] [int],
[RECQL4] [int],
[REG3A] [int],
[REL] [int],
[REST] [int],
[RET] [int],
[RFWD2] [int],
[RGS7] [int],
[RHBDF1] [int],
[RHEB] [int],
[RHOA] [int],
[RICTOR] [int],
[RIMS1] [int],
[RIT1] [int],
[RNF213] [int],
[RNF43] [int],
[ROBO1] [int],
[ROBO2] [int],
[ROBO3] [int],
[ROR2] [int],
[ROS1] [int],
[RP11-366L20.2] [int],
[RP11-45M22.4] [int],
[RP11-461L13.2] [int],
[RP11-513D5.2] [int],
[RPA1] [int],
[RPAP1] [int],
[RPL22] [int],
[RPS6KA4] [int],
[RPS6KA6] [int],
[RPS6KB2] [int],
[RPTOR] [int],
[RRAGC] [int],
[RRAS] [int],
[RRAS2] [int],
[RTEL1] [int],
[RTEL1-TNFRSF6B] [int],
[RUNX1] [int],
[RXRA] [int],
[RYBP] [int],
[RYR2] [int],
[SACS] [int],
[SBNO1] [int],
[SDCCAG8] [int],
[SDHA] [int],
[SDHAF2] [int],
[SDHB] [int],
[SDHC] [int],
[SDHD] [int],
[SESN1] [int],
[SESN2] [int],
[SESN3] [int],
[SETD2] [int],
[SETD8] [int],
[SETDB1] [int],
[SF3B1] [int],
[SH2B3] [int],
[SH2D1A] [int],
[SHOC2] [int],
[SHQ1] [int],
[SIRT6] [int],
[SLC22A23] [int],
[SLC5A5] [int],
[SLIT2] [int],
[SLTM] [int],
[SLX4] [int],
[SMAD2] [int],
[SMAD3] [int],
[SMAD4] [int],
[SMARCA2] [int],
[SMARCA4] [int],
[SMARCB1] [int],
[SMARCD1] [int],
[SMG1] [int],
[SMO] [int],
[SMYD3] [int],
[SOCS1] [int],
[SOS1] [int],
[SOX17] [int],
[SOX2] [int],
[SOX9] [int],
[SPA17] [int],
[SPEN] [int],
[SPHKAP] [int],
[SPOP] [int],
[SPRED1] [int],
[SPTA1] [int],
[SRC] [int],
[SRCAP] [int],
[SRP19] [int],
[SRPK1] [int],
[SRPK2] [int],
[SRSF2] [int],
[ST14] [int],
[STAC3] [int],
[STAG2] [int],
[STAT3] [int],
[STAT5A] [int],
[STAT5B] [int],
[STK11] [int],
[STK19] [int],
[STK4] [int],
[STK40] [int],
[SUFU] [int],
[SUZ12] [int],
[SYK] [int],
[SYNE1] [int],
[SYT1] [int],
[TACC1] [int],
[TAF10] [int],
[TAF4B] [int],
[TAL1] [int],
[TAP1] [int],
[TAP2] [int],
[TBX2] [int],
[TBX3] [int],
[TCEB1] [int],
[TCF3] [int],
[TCF7L2] [int],
[TEK] [int],
[TENM1] [int],
[TENM2] [int],
[TERT] [int],
[TET1] [int],
[TET2] [int],
[TET3] [int],
[TGFBR1] [int],
[TGFBR2] [int],
[THBS2] [int],
[THBS3] [int],
[TIA1] [int],
[TIMM8B] [int],
[TIMP3] [int],
[TLE4] [int],
[TMEM127] [int],
[TMPRSS2] [int],
[TNFAIP3] [int],
[TNFRSF14] [int],
[TNN] [int],
[TONSL] [int],
[TOP1] [int],
[TP53] [int],
[TP53BP1] [int],
[TP63] [int],
[TP73] [int],
[TPI1] [int],
[TPR] [int],
[TRAF2] [int],
[TRAF7] [int],
[TRIM56] [int],
[TRIM58] [int],
[TSC1] [int],
[TSC2] [int],
[TSHR] [int],
[U2AF1] [int],
[UNC5C] [int],
[UPF1] [int],
[USP24] [int],
[USP7] [int],
[VAV3] [int],
[VEGFA] [int],
[VEZT] [int],
[VHL] [int],
[VTCN1] [int],
[WHSC1] [int],
[WHSC1L1] [int],
[WIF1] [int],
[WNT5B] [int],
[WRAP53] [int],
[WRN] [int],
[WT1] [int],
[WWTR1] [int],
[XIAP] [int],
[XIRP2] [int],
[XPO1] [int],
[XRCC2] [int],
[YAP1] [int],
[YEATS4] [int],
[YES1] [int],
[YY1] [int],
[ZEB2] [int],
[ZFHX3] [int],
[ZNF318] [int],
[ZNF415] [int],
[ZNF521] [int],
[ZNF90] [int],
[ZRSR2] [int])

create table [summary_data].dbo.all_data_raw_dedupe(
[id] [nvarchar](100),
[patient_id] [nvarchar](50),
[sample_id] [nvarchar](50),
[cancer_type] [nvarchar](100),
[male] [int],
[female] [int],
[age] [int],
[mutcnt] [int],
[ABCA13] [int],
[ABCA2] [int],
[ABCA7] [int],
[ABCC1] [int],
[ABL1] [int],
[AC004906.3] [int],
[AC008738.1] [int],
[ACAN] [int],
[ACLY] [int],
[ACVR1] [int],
[ACVR1B] [int],
[ACVR2A] [int],
[ADAM33] [int],
[ADAMTS20] [int],
[ADAMTSL3] [int],
[AFF1] [int],
[AFG3L2] [int],
[AGO2] [int],
[AGPAT6] [int],
[AKAP6] [int],
[AKT1] [int],
[AKT2] [int],
[AKT3] [int],
[ALDH1A2] [int],
[ALK] [int],
[ALOX12B] [int],
[AMER1] [int],
[AMER2] [int],
[ANGPT1] [int],
[ANK1] [int],
[ANK3] [int],
[ANKRD11] [int],
[APC] [int],
[APOB] [int],
[AR] [int],
[ARAF] [int],
[ARHGEF4] [int],
[ARID1A] [int],
[ARID1B] [int],
[ARID2] [int],
[ARID5B] [int],
[ARNT] [int],
[ASAP2] [int],
[ASTN1] [int],
[ASTN2] [int],
[ASXL1] [int],
[ASXL2] [int],
[ATF7IP] [int],
[ATM] [int],
[ATP10A] [int],
[ATR] [int],
[ATRX] [int],
[AURKA] [int],
[AURKB] [int],
[AXIN1] [int],
[AXIN2] [int],
[AXL] [int],
[B2M] [int],
[BABAM1] [int],
[BAP1] [int],
[BARD1] [int],
[BBC3] [int],
[BBX] [int],
[BCAR1] [int],
[BCL10] [int],
[BCL2] [int],
[BCL2L1] [int],
[BCL2L11] [int],
[BCL6] [int],
[BCL9] [int],
[BCOR] [int],
[BIRC3] [int],
[BIRC6] [int],
[BLM] [int],
[BMI1] [int],
[BMPR1A] [int],
[BOD1L1] [int],
[BPTF] [int],
[BRAF] [int],
[BRCA1] [int],
[BRCA2] [int],
[BRD4] [int],
[BRD7] [int],
[BRIP1] [int],
[BRPF3] [int],
[BSN] [int],
[BTK] [int],
[C11orf30] [int],
[C1orf145] [int],
[C1orf147] [int],
[CALR] [int],
[CAMTA1] [int],
[CARD11] [int],
[CARM1] [int],
[CASP8] [int],
[CBFB] [int],
[CBL] [int],
[CCND1] [int],
[CCND2] [int],
[CCND3] [int],
[CCNE1] [int],
[CD274] [int],
[CD276] [int],
[CD79A] [int],
[CD79B] [int],
[CD84] [int],
[CDC42] [int],
[CDC73] [int],
[CDH1] [int],
[CDH2] [int],
[CDH22] [int],
[CDH5] [int],
[CDH8] [int],
[CDK10] [int],
[CDK12] [int],
[CDK4] [int],
[CDK6] [int],
[CDK8] [int],
[CDKN1A] [int],
[CDKN1B] [int],
[CDKN2A] [int],
[CDKN2Ap14ARF] [int],
[CDKN2Ap16INK4A] [int],
[CDKN2B] [int],
[CDKN2B-AS1] [int],
[CDKN2C] [int],
[CEBPA] [int],
[CECR2] [int],
[CENPA] [int],
[CGGBP1] [int],
[CHD5] [int],
[CHEK1] [int],
[CHEK2] [int],
[CIC] [int],
[CNOT10] [int],
[CNPPD1] [int],
[COL11A1] [int],
[COL7A1] [int],
[COMP] [int],
[CREB3L4] [int],
[CREBBP] [int],
[CRKL] [int],
[CRLF2] [int],
[CSDE1] [int],
[CSF1R] [int],
[CSF3R] [int],
[CSMD1] [int],
[CSMD3] [int],
[CTCF] [int],
[CTD-2561B21.3] [int],
[CTLA4] [int],
[CTNNA2] [int],
[CTNNB1] [int],
[CTNND2] [int],
[CTTN] [int],
[CUBN] [int],
[CUL3] [int],
[CXCR4] [int],
[CYLD] [int],
[CYSLTR2] [int],
[DAPK1] [int],
[DAXX] [int],
[DCUN1D1] [int],
[DDB2] [int],
[DDR2] [int],
[DDX1] [int],
[DENND4A] [int],
[DICER1] [int],
[DIDO1] [int],
[DIS3] [int],
[DLC1] [int],
[DMXL1] [int],
[DMXL2] [int],
[DNAJB1] [int],
[DNMT1] [int],
[DNMT3A] [int],
[DNMT3B] [int],
[DOPEY2] [int],
[DOT1L] [int],
[DPYSL3] [int],
[DROSHA] [int],
[DUSP4] [int],
[E2F2] [int],
[E2F3] [int],
[ECE2] [int],
[ECT2] [int],
[EED] [int],
[EFS] [int],
[EGFL7] [int],
[EGFR] [int],
[EIF1AX] [int],
[EIF4A2] [int],
[EIF4E] [int],
[EIF4G2] [int],
[ELF3] [int],
[EP300] [int],
[EPAS1] [int],
[EPCAM] [int],
[EPHA2] [int],
[EPHA3] [int],
[EPHA5] [int],
[EPHA7] [int],
[EPHB1] [int],
[EPPK1] [int],
[ERBB2] [int],
[ERBB3] [int],
[ERBB4] [int],
[ERCC2] [int],
[ERCC3] [int],
[ERCC4] [int],
[ERCC5] [int],
[ERF] [int],
[ERG] [int],
[ERRFI1] [int],
[ESR1] [int],
[ESRRG] [int],
[ESX1] [int],
[ETV1] [int],
[ETV6] [int],
[EXT2] [int],
[EZH1] [int],
[EZH2] [int],
[FAM175A] [int],
[FAM46C] [int],
[FAM58A] [int],
[FANCA] [int],
[FANCC] [int],
[FAS] [int],
[FASTKD2] [int],
[FAT1] [int],
[FAT2] [int],
[FAT3] [int],
[FBN2] [int],
[FBXL13] [int],
[FBXO15] [int],
[FBXO31] [int],
[FBXO4] [int],
[FBXW7] [int],
[FGF19] [int],
[FGF23] [int],
[FGF3] [int],
[FGF4] [int],
[FGFR1] [int],
[FGFR2] [int],
[FGFR3] [int],
[FGFR4] [int],
[FH] [int],
[FHIT] [int],
[FIP1L1] [int],
[FKBP3] [int],
[FLCN] [int],
[FLT1] [int],
[FLT3] [int],
[FLT4] [int],
[FNTB] [int],
[FOS] [int],
[FOXA1] [int],
[FOXB2] [int],
[FOXK1] [int],
[FOXL2] [int],
[FOXM1] [int],
[FOXO1] [int],
[FOXP1] [int],
[FOXQ1] [int],
[FRS3] [int],
[FSIP2] [int],
[FUBP1] [int],
[FYN] [int],
[GATA1] [int],
[GATA2] [int],
[GATA3] [int],
[GATA6] [int],
[GATM] [int],
[GLI1] [int],
[GLI3] [int],
[GNA11] [int],
[GNA12] [int],
[GNAQ] [int],
[GNAS] [int],
[GNAS-AS1] [int],
[GPAM] [int],
[GPR112] [int],
[GPR98] [int],
[GPS2] [int],
[GPT] [int],
[GREM1] [int],
[GRIN2A] [int],
[GSK3B] [int],
[GTF2I] [int],
[GTF3C1] [int],
[H3F3A] [int],
[H3F3B] [int],
[H3F3C] [int],
[HACE1] [int],
[HAT1] [int],
[HCFC1] [int],
[HDAC2] [int],
[HECTD3] [int],
[HGF] [int],
[HIPK3] [int],
[HIST1H1C] [int],
[HIST1H2BD] [int],
[HIST1H3A] [int],
[HIST1H3B] [int],
[HIST1H3C] [int],
[HIST1H3D] [int],
[HIST1H3E] [int],
[HIST1H3F] [int],
[HIST1H3G] [int],
[HIST1H3H] [int],
[HIST1H3I] [int],
[HIST1H3J] [int],
[HIST2H3D] [int],
[HIST3H3] [int],
[HLA-A] [int],
[HLA-B] [int],
[HLCS] [int],
[HMCN1] [int],
[HNF1A] [int],
[HOXB13] [int],
[HRAS] [int],
[HSF1] [int],
[HUWE1] [int],
[HYOU1] [int],
[ICOSLG] [int],
[ID3] [int],
[IDH1] [int],
[IDH2] [int],
[IFNGR1] [int],
[IGF1] [int],
[IGF1R] [int],
[IGF2] [int],
[IGLON5] [int],
[IKBKB] [int],
[IKBKE] [int],
[IKZF1] [int],
[IL10] [int],
[IL7R] [int],
[INHA] [int],
[INHBA] [int],
[INPP4A] [int],
[INPP4B] [int],
[INPPL1] [int],
[INS-IGF2] [int],
[INSR] [int],
[INSRR] [int],
[IRF4] [int],
[IRS1] [int],
[IRS2] [int],
[ITCH] [int],
[JAK1] [int],
[JAK2] [int],
[JAK3] [int],
[JARID2] [int],
[JUN] [int],
[KAT2A] [int],
[KAT6B] [int],
[KCNA4] [int],
[KCNH1] [int],
[KDM1B] [int],
[KDM3B] [int],
[KDM5A] [int],
[KDM5C] [int],
[KDM6A] [int],
[KDR] [int],
[KEAP1] [int],
[KIF2B] [int],
[KIT] [int],
[KLF4] [int],
[KMT2A] [int],
[KMT2B] [int],
[KMT2C] [int],
[KMT2D] [int],
[KNSTRN] [int],
[KRAS] [int],
[LAMA1] [int],
[LAMA2] [int],
[LAMA3] [int],
[LATS1] [int],
[LATS2] [int],
[LDB1] [int],
[LGI1] [int],
[LMO1] [int],
[LMO7] [int],
[LRP1B] [int],
[LRP2] [int],
[LRRIQ1] [int],
[LTN1] [int],
[LYN] [int],
[LYVE1] [int],
[MAFB] [int],
[MALT1] [int],
[MAP2K1] [int],
[MAP2K2] [int],
[MAP2K4] [int],
[MAP2K7] [int],
[MAP3K1] [int],
[MAP3K13] [int],
[MAP3K14] [int],
[MAPK1] [int],
[MAPK3] [int],
[MAPK4] [int],
[MAPKAP1] [int],
[MARCKS] [int],
[MARK4] [int],
[MAX] [int],
[MCC] [int],
[MCL1] [int],
[MCM5] [int],
[MCM6] [int],
[MCM9] [int],
[MDC1] [int],
[MDC1-AS1] [int],
[MDM1] [int],
[MDM2] [int],
[MDM4] [int],
[MED12] [int],
[MEF2B] [int],
[MEF2BNB-MEF2B] [int],
[MEN1] [int],
[MET] [int],
[MGA] [int],
[MITF] [int],
[MKL1] [int],
[MLH1] [int],
[MLL] [int],
[MLL2] [int],
[MLL3] [int],
[MLL4] [int],
[MLLT11] [int],
[MLLT6] [int],
[MPL] [int],
[MRAS] [int],
[MRE11A] [int],
[MSH2] [int],
[MSH3] [int],
[MSH4] [int],
[MSH6] [int],
[MSI1] [int],
[MSI2] [int],
[MSL3] [int],
[MST1] [int],
[MST1R] [int],
[MTOR] [int],
[MUC1] [int],
[MUC16] [int],
[MUC17] [int],
[MUC2] [int],
[MUC4] [int],
[MUC6] [int],
[MUTYH] [int],
[MYC] [int],
[MYCL] [int],
[MYCL1] [int],
[MYCN] [int],
[MYD88] [int],
[MYOD1] [int],
[NBN] [int],
[NCK2] [int],
[NCOA2] [int],
[NCOA3] [int],
[NCOR1] [int],
[NDC80] [int],
[NDUFB11] [int],
[NEB] [int],
[NEGR1] [int],
[NEK4] [int],
[NF1] [int],
[NF2] [int],
[NFATC4] [int],
[NFE2L2] [int],
[NFKB1] [int],
[NFKB2] [int],
[NFKBIA] [int],
[NKX2-1] [int],
[NKX3-1] [int],
[NLRP1] [int],
[NOTCH1] [int],
[NOTCH2] [int],
[NOTCH3] [int],
[NOTCH4] [int],
[NOV] [int],
[NPM1] [int],
[NR2F1] [int],
[NRAS] [int],
[NSD1] [int],
[NTHL1] [int],
[NTRK1] [int],
[NTRK2] [int],
[NTRK3] [int],
[NUF2] [int],
[NUP214] [int],
[NUP93] [int],
[OBSCN] [int],
[OBSL1] [int],
[OGT] [int],
[OR10Z1] [int],
[P4HTM] [int],
[PAF1] [int],
[PAK1] [int],
[PAK7] [int],
[PALB2] [int],
[PARK2] [int],
[PARP1] [int],
[PAX5] [int],
[PBRM1] [int],
[PBX1] [int],
[PCDH10] [int],
[PCDHA12] [int],
[PCDHA13] [int],
[PCDHAC1] [int],
[PCLO] [int],
[PDCD1] [int],
[PDCD1LG2] [int],
[PDE4DIP] [int],
[PDGFA] [int],
[PDGFRA] [int],
[PDGFRB] [int],
[PDPK1] [int],
[PEG3] [int],
[PELP1] [int],
[PGR] [int],
[PHOX2B] [int],
[PIGR] [int],
[PIK3C2A] [int],
[PIK3C2G] [int],
[PIK3C3] [int],
[PIK3CA] [int],
[PIK3CB] [int],
[PIK3CD] [int],
[PIK3CG] [int],
[PIK3R1] [int],
[PIK3R2] [int],
[PIK3R3] [int],
[PIM1] [int],
[PLCD1] [int],
[PLCG2] [int],
[PLEC] [int],
[PLEKHG1] [int],
[PLK2] [int],
[PMAIP1] [int],
[PMEPA1] [int],
[PMS1] [int],
[PMS2] [int],
[PNRC1] [int],
[POLD1] [int],
[POLD3] [int],
[POLE] [int],
[PPARG] [int],
[PPFIA4] [int],
[PPM1D] [int],
[PPP1R12A] [int],
[PPP2R1A] [int],
[PPP4R2] [int],
[PPP6C] [int],
[PRDM1] [int],
[PRDM11] [int],
[PRDM14] [int],
[PREX2] [int],
[PRKAR1A] [int],
[PRKCI] [int],
[PRKD1] [int],
[PTCH1] [int],
[PTEN] [int],
[PTP4A1] [int],
[PTPN11] [int],
[PTPRD] [int],
[PTPRE] [int],
[PTPRS] [int],
[PTPRT] [int],
[PXDN] [int],
[RAB35] [int],
[RAC1] [int],
[RAC2] [int],
[RAD21] [int],
[RAD1] [int],
[RAD51] [int],
[RAD51B] [int],
[RAD51C] [int],
[RAD51D] [int],
[RAD52] [int],
[RAD54L] [int],
[RADIL] [int],
[RAF1] [int],
[RARA] [int],
[RARG] [int],
[RASA1] [int],
[RASGRF2] [int],
[RB1] [int],
[RBL1] [int],
[RBM10] [int],
[RECQL] [int],
[RECQL4] [int],
[REG3A] [int],
[REL] [int],
[REST] [int],
[RET] [int],
[RFWD2] [int],
[RGS7] [int],
[RHBDF1] [int],
[RHEB] [int],
[RHOA] [int],
[RICTOR] [int],
[RIMS1] [int],
[RIT1] [int],
[RNF213] [int],
[RNF43] [int],
[ROBO1] [int],
[ROBO2] [int],
[ROBO3] [int],
[ROR2] [int],
[ROS1] [int],
[RP11-366L20.2] [int],
[RP11-45M22.4] [int],
[RP11-461L13.2] [int],
[RP11-513D5.2] [int],
[RPA1] [int],
[RPAP1] [int],
[RPL22] [int],
[RPS6KA4] [int],
[RPS6KA6] [int],
[RPS6KB2] [int],
[RPTOR] [int],
[RRAGC] [int],
[RRAS] [int],
[RRAS2] [int],
[RTEL1] [int],
[RTEL1-TNFRSF6B] [int],
[RUNX1] [int],
[RXRA] [int],
[RYBP] [int],
[RYR2] [int],
[SACS] [int],
[SBNO1] [int],
[SDCCAG8] [int],
[SDHA] [int],
[SDHAF2] [int],
[SDHB] [int],
[SDHC] [int],
[SDHD] [int],
[SESN1] [int],
[SESN2] [int],
[SESN3] [int],
[SETD2] [int],
[SETD8] [int],
[SETDB1] [int],
[SF3B1] [int],
[SH2B3] [int],
[SH2D1A] [int],
[SHOC2] [int],
[SHQ1] [int],
[SIRT6] [int],
[SLC22A23] [int],
[SLC5A5] [int],
[SLIT2] [int],
[SLTM] [int],
[SLX4] [int],
[SMAD2] [int],
[SMAD3] [int],
[SMAD4] [int],
[SMARCA2] [int],
[SMARCA4] [int],
[SMARCB1] [int],
[SMARCD1] [int],
[SMG1] [int],
[SMO] [int],
[SMYD3] [int],
[SOCS1] [int],
[SOS1] [int],
[SOX17] [int],
[SOX2] [int],
[SOX9] [int],
[SPA17] [int],
[SPEN] [int],
[SPHKAP] [int],
[SPOP] [int],
[SPRED1] [int],
[SPTA1] [int],
[SRC] [int],
[SRCAP] [int],
[SRP19] [int],
[SRPK1] [int],
[SRPK2] [int],
[SRSF2] [int],
[ST14] [int],
[STAC3] [int],
[STAG2] [int],
[STAT3] [int],
[STAT5A] [int],
[STAT5B] [int],
[STK11] [int],
[STK19] [int],
[STK4] [int],
[STK40] [int],
[SUFU] [int],
[SUZ12] [int],
[SYK] [int],
[SYNE1] [int],
[SYT1] [int],
[TACC1] [int],
[TAF10] [int],
[TAF4B] [int],
[TAL1] [int],
[TAP1] [int],
[TAP2] [int],
[TBX2] [int],
[TBX3] [int],
[TCEB1] [int],
[TCF3] [int],
[TCF7L2] [int],
[TEK] [int],
[TENM1] [int],
[TENM2] [int],
[TERT] [int],
[TET1] [int],
[TET2] [int],
[TET3] [int],
[TGFBR1] [int],
[TGFBR2] [int],
[THBS2] [int],
[THBS3] [int],
[TIA1] [int],
[TIMM8B] [int],
[TIMP3] [int],
[TLE4] [int],
[TMEM127] [int],
[TMPRSS2] [int],
[TNFAIP3] [int],
[TNFRSF14] [int],
[TNN] [int],
[TONSL] [int],
[TOP1] [int],
[TP53] [int],
[TP53BP1] [int],
[TP63] [int],
[TP73] [int],
[TPI1] [int],
[TPR] [int],
[TRAF2] [int],
[TRAF7] [int],
[TRIM56] [int],
[TRIM58] [int],
[TSC1] [int],
[TSC2] [int],
[TSHR] [int],
[U2AF1] [int],
[UNC5C] [int],
[UPF1] [int],
[USP24] [int],
[USP7] [int],
[VAV3] [int],
[VEGFA] [int],
[VEZT] [int],
[VHL] [int],
[VTCN1] [int],
[WHSC1] [int],
[WHSC1L1] [int],
[WIF1] [int],
[WNT5B] [int],
[WRAP53] [int],
[WRN] [int],
[WT1] [int],
[WWTR1] [int],
[XIAP] [int],
[XIRP2] [int],
[XPO1] [int],
[XRCC2] [int],
[YAP1] [int],
[YEATS4] [int],
[YES1] [int],
[YY1] [int],
[ZEB2] [int],
[ZFHX3] [int],
[ZNF318] [int],
[ZNF415] [int],
[ZNF521] [int],
[ZNF90] [int],
[ZRSR2] [int])


BULK INSERT [summary_data].dbo.all_data_raw
FROM 'G:\My Drive\Machine Learning\cBioPortal\all_data_raw.txt'
 WITH (FIRSTROW=2,
    FIELDTERMINATOR = '\t', 
    ROWTERMINATOR = '\n',
	MAXERRORS = 0
  )

BULK INSERT [summary_data].dbo.all_data_raw_dedupe
FROM 'G:\My Drive\Machine Learning\cBioPortal\all_data_raw_dedupe.txt'
 WITH (FIRSTROW=2,
    FIELDTERMINATOR = '\t', 
    ROWTERMINATOR = '\n',
	MAXERRORS = 0
  )
