#! /bin/bash

# download data from physionet.org
wget -P data/downloaded -r -N -c -np --user $PHYSIONET_USERNAME --password $PHYSIONET_PASSWORD https://physionet.org/files/mimiciii/1.4/
wget -P data/downloaded -r -N -c -np --user $PHYSIONET_USERNAME --password $PHYSIONET_PASSWORD https://physionet.org/files/mimiciv/2.2/

# copy and gunzip downloaded data files to created target directories data/mimic3/raw and data/mimic4/raw
gunzip -k -f -r data/downloaded/physionet.org/files/mimiciii/
mkdir -p data/mimic3/raw && mv -f data/downloaded/physionet.org/files/mimiciii/**/*.csv data/mimic3/raw/
gunzip -k -f -r data/downloaded/physionet.org/files/mimiciv/
mkdir -p data/mimic4/raw && mv -f data/downloaded/physionet.org/files/mimiciv/**/*.csv data/mimic4/raw/

# download ICS10-ICD9 mapping file
wget -O data/mimic4/raw/icd10-icd9.csv https://data.nber.org/gem/icd10cmtoicd9gem.csv