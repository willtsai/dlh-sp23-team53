# Repository for term project: UIUC CS 598 DLH, Spring 2023, Team 53

## Introduction
This repository contains the code for the term project of UIUC CS 598 DLH,
Spring 2023, Team 53. The project is based on the paper [Context-aware Health
Event Prediction via Transition Functions on Dynamic Disease
Graphs](https://arxiv.org/pdf/2112.05195.pdf) (Chang et. al., 2021). The goal of
this project is to reproduce the original experiments that predict the health
events of patients based on their medical history and context information.

### Project authors:
- Sherry Li (shiyuli2@illinois.edu)
- Wei-Lun Tsai (wltsai2@illinois.edu)

### Original authors: 
- Chang Lu (clu13@stevens.edu)
- Tian Han (tian.han@stevens.edu)
- Yue Ning (yue.ning@stevens.edu)

### Original paper:
Chang Lu, Tian Han, and Yue Ning. 2022. [Context-aware Health Event Prediction
via Transition Functions on Dynamic Disease
Graphs.](https://arxiv.org/pdf/2112.05195.pdf) Proceedings of the AAAI
Conference on Artificial Intelligence, 36(4):4567–4574.

## Instructions

### Clone this repository
```bash
git clone https://github.com/willtsai/dlh-sp23-team53.git
cd dlh-sp23-team53
```

### Download the data
The data can be downloaded from https://mimic.physionet.org/. You will need to
obtain permissions for downloading the MIMIC-III and MIMIC-IV datasets. Once you
have acquired the necessary credentials, you can download the data into the
required directories by running the following commands and script:
```bash
export PHYSIONET_USERNAME=yourusername
export PHYSIONET_PASSWORD=yourpassword
bash initialize.sh
```

### Install dependencies
```bash
pip install -r requirements.txt
```

### Preprocess the data
```bash
python preprocess.py
```

### Set up and train the model
Work through the Jupyter notebook `TODO.ipynb` to run the code.