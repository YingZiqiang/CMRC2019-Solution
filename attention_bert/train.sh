#!/bin/bash
set -ex

python run_attention_bert.py \
	--cuda_devices 1,2,3 \
	--vocab_file ../bert_weights_chinese/vocab.txt \
	--bert_config_file ../bert_weights_chinese/bert_config.json \
	--init_checkpoint ../bert_weights_chinese/pytorch_model.bin \
	--do_train \
	--do_evaluate \
	--train_file ../data/tiny_train.json \
	--dev_file ../data/cmrc2019_dev.json \
	--train_batch_size 24 \
	--predict_batch_size 64 \
	--learning_rate 2e-5 \
	--num_train_epochs 10.0 \
	--max_seq_length 512 \
	--gradient_accumulation_steps 2 \
	--output_dir ./attention_bert_output \
	--seed 777
