# SpectraLLM
Code repository for the paper **"SpectraLLM: Uncovering the Ability of LLMs for Molecule Structure Elucidation from Multi-Spectral Data"** (ICLR 2026 Submission, OpenReview: [J5XUzUW8o3](https://openreview.net/forum?id=J5XUzUW8o3)).

## Overview
This work introduces **SpectraLLM**, a large language model that performs end-to-end molecular structure prediction by reasoning over one or multiple spectra. Unlike conventional spectrum-to-structure pipelines, SpectraLLM represents both continuous (IR, Raman, UV-Vis, NMR) and discrete (MS) modalities in a shared language space, enabling it to capture substructural patterns that are complementary across different spectral types. It achieves state-of-the-art performance on four public benchmark datasets, substantially surpassing single-modality baselines, and demonstrates strong robustness in unimodal settings while improving accuracy with joint reasoning over diverse spectra.

## How to run
1、Environment Setup

The environment is based on **Llama-Factory**. To set up the required dependencies, you can install them by using the provided requirements.txt:

`#pip install -r requirements.txt`

Ensure you have the necessary versions of Python and other libraries installed for smooth setup.

2、Data Preprocessing

For data preprocessing, you will need to download either the qm9s or multimodal-spectroscopic-dataset dataset.

Dataset Download：Download the dataset of your choice.

Generate Prompts：After downloading the dataset, use the corresponding Jupyter Notebook (located in the `scripts/ directory`) to generate the prompts.

The script will format the data according to the specifications found in the `./data directory`.

Ensure that the generated data is in the correct format before proceeding to training.

3、Training, Fine-tuning, and Prediction

The training, fine-tuning, and prediction processes are controlled by the train.sh script. You can specify different modes by adjusting the mode parameter within the script.

Available Modes:

train: Start the model training.

finetune: Fine-tune an already pre-trained model on the dataset.

predict: Use the trained model for making predictions on new data.

They all start with: bash script/train.sh , need to manually adjust the mode in `script/train.sh`.

4、Pre-trained Adapter

You can load this adapter (https://huggingface.co/ccjh/SpectraLLM_32B & https://huggingface.co/ccjh/widthIrplus_msg_qm9s_mb_msd) for inference or use it as a base for further fine-tuning on your dataset.

## Citation
If you find our work helpful, please cite the paper:
```bibtex
@inproceedings{
su2026spectrallm,
title={SpectraLLM: Uncovering the Ability of LLMs for Molecule Structure Elucidation from Multi-Spectral Data},
author={Yunyue Su and Jiahui Chen and Zao Jiang and Zhenyi Zhong and Liang Wang and Qiang Liu and Zhaoxiang Zhang},
booktitle={International Conference on Learning Representations (ICLR)},
year={2026},
url={https://openreview.net/forum?id=J5XUzUW8o3}
}
