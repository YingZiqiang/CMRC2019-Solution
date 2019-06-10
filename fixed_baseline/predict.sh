#!/bin/bash
set -ex

python run_fixed_baseline.py \
	--cuda_devices 1,2 \
	--predict_batch_size 32 \
	--vocab_file ../bert_weights_chinese/vocab.txt \
	--bert_config_file ../bert_weights_chinese/bert_config.json \
	--fine_tune_checkpoint ./fixed_baseline_output/pytorch_model_best.bin \
	--do_predict \
	--predict_file ../data/cmrc2019_dev.json \
	--train_batch_size 24 \
	--max_seq_length 512 \
	--output_dir ./fixed_baseline_output
