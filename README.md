# SpectraLLM
Code repository for the paper **"SpectraLLM: Uncovering the Ability of LLMs for Molecule Structure Elucidation from Multi-Spectral Data"** (ICLR 2026 Submission, OpenReview: [J5XUzUW8o3](https://openreview.net/forum?id=J5XUzUW8o3)).

## Overview
This work introduces **SpectraLLM**, a large language model that performs end-to-end molecular structure prediction by reasoning over one or multiple spectra. Unlike conventional spectrum-to-structure pipelines, SpectraLLM represents both continuous (IR, Raman, UV-Vis, NMR) and discrete (MS) modalities in a shared language space, enabling it to capture substructural patterns that are complementary across different spectral types. It achieves state-of-the-art performance on four public benchmark datasets, substantially surpassing single-modality baselines, and demonstrates strong robustness in unimodal settings while improving accuracy with joint reasoning over diverse spectra.

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