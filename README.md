# Repository for term project: UIUC CS 598 DLH, Spring 2023, Team 53

This repository contains the code for the term project of UIUC CS 598 DLH,
Spring 2023, Team 53. The project is based on the paper [Context-aware Health
Event Prediction via Transition Functions on Dynamic Disease
Graphs](https://arxiv.org/pdf/2112.05195.pdf) (Chang et. al., 2022). The goal of
this project is to reproduce the original experiments that predict the health
events of patients based on their medical history and context information. We also selected the CGL model (Chang et. al., 2021) to reproduce as the baseline comparison.

## Project authors:
- Sherry Li (shiyuli2@illinois.edu)
- Wei-Lun Tsai (wltsai2@illinois.edu)

## Original authors (Chet): 
- Chang Lu (clu13@stevens.edu)
- Tian Han (tian.han@stevens.edu)
- Yue Ning (yue.ning@stevens.edu)

## Original authors (CGL):
- Chang Lu
- Chandan K. Reddy
- Prithwish Chakraborty
- Samantha Kleinberg
- Yue Ning

## Original sourcecode repositories:
- [github.com/LuChang-CS/Chet](https://github.com/LuChang-CS/Chet)
- [github.com/LuChang-CS/CGL](https://github.com/LuChang-CS/CGL)

# Main experiment results

<img width="568" alt="image" src="https://github.com/willtsai/dlh-sp23-team53/assets/28876888/dbaed888-a7de-4419-943e-bc95c489287f">

# Instructions

## Clone this repository
```bash
git clone https://github.com/willtsai/dlh-sp23-team53.git
cd dlh-sp23-team53
```

## Download the data
The data can be downloaded from https://mimic.physionet.org/. You will need to
obtain permissions for downloading the MIMIC-III (Johnson et. al., 2016) and MIMIC-IV (Johnson et. al., 2023) datasets. Once you
have acquired the necessary credentials, you can download the data into the
required directories by running the following commands and script:
```bash
export PHYSIONET_USERNAME=yourusername
export PHYSIONET_PASSWORD=yourpassword
bash initialize.sh
```

## Install dependencies

Dependencies for both our main repro model (Chet) and the baseline model (CGL) are captured in `requirements.txt`. To install the dependencies, run the following command:

```bash
pip install -r requirements.txt
```

## Set up and train the model
Run each cell in order from the Jupyter notebooks `chet.ipynb` and `cgl.ipynb` to preprocess and load the data, train the models, and evaluate accuracy for diagnosis and heart failure prediction tasks.

# References

Alistair Johnson, Tom Pollard, and Roger Mark. 2016.
[Mimic-iii clinical database](https://doi.org/10.13026/C2XW26).

Alistair Johnson, Lucas Bulgarelli, Tom Pollard, Steven
Horng, Leo Anthony Celi, and Roger Mark. 2023.
[Mimic-iv](https://doi.org/10.13026/6MM1-EK67).

Chang Lu, Tian Han, and Yue Ning. 2022. [Context-
aware health event prediction via transition functions
on dynamic disease graphs](https://doi.org/10.1609/aaai.v36i4.20380). 
*Proceedings of the AAAI Conference on Artificial Intelligence*, 
36(4):4567–4574.

Chang Lu, Chandan K Reddy, Prithwish Chakraborty,
Samantha Kleinberg, and Yue Ning. 2021. [Collabo-
rative graph learning with auxiliary text for temporal
event prediction in healthcare](https://doi.org/10.24963/ijcai.2021/486). 
*In Proceedings of the Thirtieth International Joint Conference on Artificial Intelligence, IJCAI-21*, 
pages 3529–3535. International Joint Conferences on Artificial Intelligence
Organization. Main Track.
