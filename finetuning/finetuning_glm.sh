EXPERIMENT_ID=test03

CUDA_VISIBLE_DEVICES=0 python src/train_bash.py \
    --stage sft \
    --do_train True \
    --model_name_or_path /root/autodl-tmp/model/chatglm3-6b \
    --finetuning_type lora \
    --template chatglm3 \
    --dataset_dir data \
    --dataset toolaugmented_train_AT \
    --cutoff_len 1024 \
    --learning_rate 5e-05 \
    --num_train_epochs 3.0 \
    --max_samples 100000 \
    --per_device_train_batch_size 8 \
    --gradient_accumulation_steps 1 \
    --lr_scheduler_type cosine \
    --max_grad_norm 1.0 \
    --logging_steps 5 \
    --save_steps 50 \
    --warmup_steps 0 \
    --lora_rank 8 \
    --lora_dropout 0.1 \
    --lora_target query_key_value \
    --output_dir /root/autodl-tmp/$EXPERIMENT_ID/chatglm3_sft_AT_3epoch \
    --fp16 True \
    --plot_loss True

CUDA_VISIBLE_DEVICES=0 python src/train_bash.py \
    --stage sft \
    --do_train True \
    --model_name_or_path /root/autodl-tmp/model/chatglm3-6b \
    --finetuning_type lora \
    --template chatglm3 \
    --dataset_dir data \
    --dataset toolaugmented_train_WT \
    --cutoff_len 1024 \
    --learning_rate 5e-05 \
    --num_train_epochs 3.0 \
    --max_samples 100000 \
    --per_device_train_batch_size 8 \
    --gradient_accumulation_steps 1 \
    --lr_scheduler_type cosine \
    --max_grad_norm 1.0 \
    --logging_steps 5 \
    --save_steps 50 \
    --warmup_steps 0 \
    --lora_rank 8 \
    --lora_dropout 0.1 \
    --lora_target query_key_value \
    --output_dir /root/autodl-tmp/$EXPERIMENT_ID/chatglm3_sft_WT_3epoch \
    --fp16 True \
    --plot_loss True

CUDA_VISIBLE_DEVICES=0 python src/train_bash.py \
    --stage sft \
    --do_train True \
    --model_name_or_path /root/autodl-tmp/model/chatglm3-6b \
    --finetuning_type lora \
    --template chatglm3 \
    --dataset_dir data \
    --dataset toolaugmented_train_AT_meta \
    --cutoff_len 1024 \
    --learning_rate 5e-05 \
    --num_train_epochs 3.0 \
    --max_samples 100000 \
    --per_device_train_batch_size 8 \
    --gradient_accumulation_steps 1 \
    --lr_scheduler_type cosine \
    --max_grad_norm 1.0 \
    --logging_steps 5 \
    --save_steps 50 \
    --warmup_steps 0 \
    --lora_rank 8 \
    --lora_dropout 0.1 \
    --lora_target query_key_value \
    --output_dir /root/autodl-tmp/$EXPERIMENT_ID/chatglm3_mft_AT_3epoch \
    --fp16 True \
    --plot_loss True

CUDA_VISIBLE_DEVICES=0 python src/train_bash.py \
    --stage sft \
    --do_train True \
    --model_name_or_path /root/autodl-tmp/model/chatglm3-6b \
    --finetuning_type lora \
    --template chatglm3 \
    --dataset_dir data \
    --dataset toolaugmented_train_WT_meta \
    --cutoff_len 1024 \
    --learning_rate 5e-05 \
    --num_train_epochs 3.0 \
    --max_samples 100000 \
    --per_device_train_batch_size 8 \
    --gradient_accumulation_steps 1 \
    --lr_scheduler_type cosine \
    --max_grad_norm 1.0 \
    --logging_steps 5 \
    --save_steps 50 \
    --warmup_steps 0 \
    --lora_rank 8 \
    --lora_dropout 0.1 \
    --lora_target query_key_value \
    --output_dir /root/autodl-tmp/$EXPERIMENT_ID/chatglm3_mft_WT_3epoch \
    --fp16 True \
    --plot_loss True

/usr/bin/shutdown