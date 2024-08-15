python run.py \
    --model_name Chinese_LLaMa_Alpaca2_7B \
    --model_path /root/autodl-tmp/model/chinese-alpaca-2-7b \
    --evaluation_strategy ReAct \
    --Sampling_strategy WT \
    --test_data_file /root/autodl-fs/work/Tool-augmented/dataset/test.json \
    --save_path /root/autodl-fs/work/Tool-augmented/experiment/test02