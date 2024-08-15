python run.py \
    --model_name ChatGLM3 \
    --model_path /root/autodl-tmp/model/chatglm3-6b \
    --lora_model_path /root/autodl-tmp/test02/chatglm3_mft_WT_3epoch/checkpoint-8600 \
    --evaluation_strategy MFT \
    --Sampling_strategy WT \
    --test_data_file /root/autodl-fs/work/Tool-augmented/dataset/test.json \
    --save_path /root/autodl-fs/work/Tool-augmented/experiment/test03\
&& /usr/bin/shutdown