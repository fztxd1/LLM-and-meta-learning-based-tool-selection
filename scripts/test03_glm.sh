
EXPERIMENT_ID=test04

python run.py \
    --model_name ChatGLM3 \
    --model_path /root/autodl-tmp/model/chatglm3-6b \
    --evaluation_strategy Base \
    --Sampling_strategy AT \
    --test_data_file /root/autodl-fs/work/Tool-augmented/dataset/test.json \
    --save_path /root/autodl-fs/work/Tool-augmented/experiment/$EXPERIMENT_ID

python run.py \
    --model_name ChatGLM3 \
    --model_path /root/autodl-tmp/model/chatglm3-6b \
    --evaluation_strategy Base \
    --Sampling_strategy WT \
    --test_data_file /root/autodl-fs/work/Tool-augmented/dataset/test.json \
    --save_path /root/autodl-fs/work/Tool-augmented/experiment/$EXPERIMENT_ID

python run.py \
    --model_name ChatGLM3 \
    --model_path /root/autodl-tmp/model/chatglm3-6b \
    --evaluation_strategy CoT \
    --Sampling_strategy AT \
    --test_data_file /root/autodl-fs/work/Tool-augmented/dataset/test.json \
    --save_path /root/autodl-fs/work/Tool-augmented/experiment/$EXPERIMENT_ID

python run.py \
    --model_name ChatGLM3 \
    --model_path /root/autodl-tmp/model/chatglm3-6b \
    --evaluation_strategy CoT \
    --Sampling_strategy WT \
    --test_data_file /root/autodl-fs/work/Tool-augmented/dataset/test.json \
    --save_path /root/autodl-fs/work/Tool-augmented/experiment/$EXPERIMENT_ID

python run.py \
    --model_name ChatGLM3 \
    --model_path /root/autodl-tmp/model/chatglm3-6b \
    --evaluation_strategy ReAct \
    --Sampling_strategy AT \
    --test_data_file /root/autodl-fs/work/Tool-augmented/dataset/test.json \
    --save_path /root/autodl-fs/work/Tool-augmented/experiment/$EXPERIMENT_ID

python run.py \
    --model_name ChatGLM3 \
    --model_path /root/autodl-tmp/model/chatglm3-6b \
    --evaluation_strategy ReAct \
    --Sampling_strategy WT \
    --test_data_file /root/autodl-fs/work/Tool-augmented/dataset/test.json \
    --save_path /root/autodl-fs/work/Tool-augmented/experiment/$EXPERIMENT_ID

python run.py \
    --model_name ChatGLM3 \
    --model_path /root/autodl-tmp/model/chatglm3-6b \
    --lora_model_path /root/autodl-tmp/$EXPERIMENT_ID/chatglm3_sft_AT_3epoch/checkpoint-2850 \
    --evaluation_strategy Lora \
    --Sampling_strategy AT \
    --test_data_file /root/autodl-fs/work/Tool-augmented/dataset/test.json \
    --save_path /root/autodl-fs/work/Tool-augmented/experiment/$EXPERIMENT_ID

python run.py \
    --model_name ChatGLM3 \
    --model_path /root/autodl-tmp/model/chatglm3-6b \
    --lora_model_path /root/autodl-tmp/$EXPERIMENT_ID/chatglm3_sft_WT_3epoch/checkpoint-2850 \
    --evaluation_strategy Lora \
    --Sampling_strategy WT \
    --test_data_file /root/autodl-fs/work/Tool-augmented/dataset/test.json \
    --save_path /root/autodl-fs/work/Tool-augmented/experiment/$EXPERIMENT_ID

python run.py \
    --model_name ChatGLM3 \
    --model_path /root/autodl-tmp/model/chatglm3-6b \
    --lora_model_path /root/autodl-tmp/$EXPERIMENT_ID/chatglm3_mft_AT_3epoch/checkpoint-8600 \
    --evaluation_strategy MFT \
    --Sampling_strategy AT \
    --test_data_file /root/autodl-fs/work/Tool-augmented/dataset/test.json \
    --save_path /root/autodl-fs/work/Tool-augmented/experiment/$EXPERIMENT_ID

python run.py \
    --model_name ChatGLM3 \
    --model_path /root/autodl-tmp/model/chatglm3-6b \
    --lora_model_path /root/autodl-tmp/$EXPERIMENT_ID/chatglm3_mft_WT_3epoch/checkpoint-8600 \
    --evaluation_strategy MFT \
    --Sampling_strategy WT \
    --test_data_file /root/autodl-fs/work/Tool-augmented/dataset/test.json \
    --save_path /root/autodl-fs/work/Tool-augmented/experiment/$EXPERIMENT_ID

/usr/bin/shutdown