#!/bin/bash
set -ex

python run_ernie.py \
	--cuda_devices 1 \
	--vocab_file ../pretrained_weights/ernie_weights/edit_vocab.txt \
	--bert_config_file ../pretrained_weights/ernie_weights/bert_config.json \
	--fine_tune_checkpoint ./ernie_output/pytorch_model_best.bin \
	--do_predict \
	--predict_file ../data/cmrc2019_trial.json \
	--predict_batch_size 64 \
	--max_seq_length 512 \
	--output_dir ./ernie_output
