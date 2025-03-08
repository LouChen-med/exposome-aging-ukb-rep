# exposome-aging-ukb-rep
Replication of the paper "Integrating the environmental and genetic architectures of aging and mortality"

## Code
### 01-UKB-data-import.Rmd  
The variable names in the RMD file are optimized according to the data from the UKB rap platform of Feb 03 2025

D:\git\exposome-aging-ukb-rep\func\split_colum.R  is use to split the array mixed variable

D:\git\exposome-aging-ukb-rep\data_dict\imputation_dict_all.csv is from sup table "SF1 - Imputation data dictionar"

D:\git\exposome-aging-ukb-rep\data_dict\import_dist_all.csv  is from all the variables used in "01-UKB-data-import.Rmd"

D:\git\exposome-aging-ukb-rep\data_dict\xwas_dict_all.csv is from sup table "SF2 - XWAS data dictionary"

In the three CSV dictionaries above for data retrieval, I have corrected the field errors present in "SF1 - Imputation Data Dictionary" and "SF2 - XWAS Data Dictionary." In the original versions of these tables, there were even instances of such issues.

UKB.dataset.ID	Field.ID

f.6145.0.0 - f.6145.0.5	6147

f.6145.0.0 - f.6145.0.5	6148

f.6145.0.0 - f.6145.0.5	6149

f.6145.0.0 - f.6145.0.5	6150

I have already made the necessary modifications, including changes to some variable names, such as `p189` being updated to `p22189`. 
now in My three csv dict ,all "name",list can used to retrieve data

01-UKB-data-import.Rmd  only used the data retrieved from import_dist_all.csv and we can already fully run it! on 2025.3.8








