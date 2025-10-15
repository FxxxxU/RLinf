#! /bin/bash
set -x

tabs 4
export VLLM_ATTENTION_BACKEND=XFORMERS
export CUDA_DEVICE_MAX_CONNECTIONS=1
export TOKENIZERS_PARALLELISM=false
export RAY_DEDUP_LOGS=0

CONFIG_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
REPO_PATH=$(dirname $(dirname "$CONFIG_PATH"))
MEGATRON_PATH=/opt/Megatron-LM
export PYTHONPATH=${REPO_PATH}:${MEGATRON_PATH}:$PYTHONPATH

if [ -z "$1" ]; then
<<<<<<<< HEAD:examples/reasoning/run_main_grpo_math.sh
    CONFIG_NAME="qwen3-30b-grpo-megatron"
    # CONFIG_NAME="qwen2.5-1.5b-grpo-megatron"
========
    CONFIG_NAME="qwen2.5-1.5b-ppo"
>>>>>>>> new-support-vlm:examples/coding_online_rl/run_main_coding_online_rl.sh
else
    CONFIG_NAME=$1
fi

<<<<<<<< HEAD:examples/reasoning/run_main_grpo_math.sh
python ${REPO_PATH}/examples/reasoning/main_grpo.py --config-path ${CONFIG_PATH}/config/math/  --config-name $CONFIG_NAME
========
python ${REPO_PATH}/examples/coding_online_rl/main_coding_online_rl.py --config-path ${CONFIG_PATH}/config/  --config-name $CONFIG_NAME
>>>>>>>> new-support-vlm:examples/coding_online_rl/run_main_coding_online_rl.sh
