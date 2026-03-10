#!/bin/bash

export OMP_NUM_THREADS=1
export PYTHONUNBUFFERED=1
#paths
model_name_or_path="Qwen3-32B" ##TODO: Change Model Path
home_dir="./" # Home Path
dataset_dir="${home_dir}/data"
sft_name="all"
sft_path="${home_dir}/adapters/${sft_name}"
final_model="mix_${sft_name}_singleSpecs"
#configs
mode="finetune" #train/finetune/predict
train_path="./examples/1_train_qwen3_sft_multispec.yaml"
finetune_path="./examples/2_finetune_qwen3_sft_singleSpec.yaml"
predict_path="./examples/3_predict_qwen3.yaml"

model_params=""
case "$mode" in
  "train")
    config_path="${train_path}"
    model_params="output_dir=${sft_path}"
    ;;
  "finetune")
    config_path="${finetune_path}"
    model_params="adapter_name_or_path=${sft_path} output_dir=${home_dir}/adapters/${final_model}"
    ;;
  "predict")
    config_path="${predict_path}"
    model_params="output_dir=${home_dir}/data/${final_model}/predict/"
    ;;
  *)
    echo "未知模式: $mode，默认使用train模式"
    config_path="${train_path}"
    ;;
esac

# 打印当前状态及路径
 echo "当前模式: $mode"
 echo "使用的配置文件路径: $config_path"

SWANLAB_MODE=disabled llamafactory-cli train ${config_path} \
 dataset_dir="${dataset_dir}" \
 model_name_or_path="${model_name_or_path}" \
 ${model_params}

