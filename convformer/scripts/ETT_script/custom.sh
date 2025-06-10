# pyenv activate science-venv && cd Documents/VScodeProjects/RNN-TimeSeries-coursework/convformer && bash scripts/ETT_script/custom.sh

export CUDA_VISIBLE_DEVICES=0

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# all # all # all # all # all # all # all # all # all  #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# informer

# 24
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_24 \
  --model Informer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 24 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 48
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_48 \
  --model Informer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 48 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 168
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_168 \
  --model Informer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 168 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 336
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_336 \
  --model Informer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 336 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 720
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_720 \
  --model Informer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 720 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# convstem

# 24
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_24 \
  --model Informer_ConvStem \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 24 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 48
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_48 \
  --model Informer_ConvStem \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 48 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 168
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_168 \
  --model Informer_ConvStem \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 168 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 336
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_336 \
  --model Informer_ConvStem \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 336 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 720
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_720 \
  --model Informer_ConvStem \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 720 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# favor

# 24
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_24 \
  --model Informer_FAVOR \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 24 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --num_rand_features 256 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 48
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_48 \
  --model Informer_FAVOR \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 48 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --num_rand_features 256 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 168
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_168 \
  --model Informer_FAVOR \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 168 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --num_rand_features 256 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 336
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_336 \
  --model Informer_FAVOR \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 336 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --num_rand_features 256 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 720
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_720 \
  --model Informer_FAVOR \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 720 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --num_rand_features 256 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# decomp

# 24
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_24 \
  --model Informer_Decomp \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 24 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 48
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_48 \
  --model Informer_Decomp \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 48 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 168
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_168 \
  --model Informer_Decomp \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 168 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 336
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_336 \
  --model Informer_Decomp \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 336 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 720
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_720 \
  --model Informer_Decomp \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 720 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# convformer

# 24
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_24 \
  --model Convformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 24 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --num_rand_features 256 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 48
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_48 \
  --model Convformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 48 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --num_rand_features 256 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 168
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_168 \
  --model Convformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 168 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --num_rand_features 256 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 336
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_336 \
  --model Convformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 336 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --num_rand_features 256 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 720
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_720 \
  --model Convformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 720 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --num_rand_features 256 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# autoformer

# 24
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_24 \
  --model Autoformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 24 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 48
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_48 \
  --model Autoformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 48 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 168
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_168 \
  --model Autoformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 168 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 336
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_336 \
  --model Autoformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 336 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 720
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_720 \
  --model Autoformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 720 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# transformer

# 24
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_24 \
  --model Transformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 24 \
  --e_layers 2 \
  --d_layers 1 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 48
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_48 \
  --model Transformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 48 \
  --e_layers 2 \
  --d_layers 1 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 168
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_168 \
  --model Transformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 168 \
  --e_layers 2 \
  --d_layers 1 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 336
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_336 \
  --model Transformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 336 \
  --e_layers 2 \
  --d_layers 1 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 720
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_720 \
  --model Transformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 720 \
  --e_layers 2 \
  --d_layers 1 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# reformer

# 24
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_24 \
  --model Reformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 24 \
  --e_layers 2 \
  --d_layers 1 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 48
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_48 \
  --model Reformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 48 \
  --e_layers 2 \
  --d_layers 1 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 168
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_168 \
  --model Reformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 168 \
  --e_layers 2 \
  --d_layers 1 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 336
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_336 \
  --model Reformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 336 \
  --e_layers 2 \
  --d_layers 1 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# 720
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_720 \
  --model Reformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 720 \
  --e_layers 2 \
  --d_layers 1 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Convformer # Convformer # Convformer # Convformer # Convformer # Convformer # Convformer # Convformer # Convformer  #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

export CUDA_VISIBLE_DEVICES=0

# 24
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_24 \
  --model Convformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 24 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --num_rand_features 256 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 10

# 48
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_48 \
  --model Convformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 48 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --num_rand_features 256 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 10

# 168
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_168 \
  --model Convformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 168 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --num_rand_features 256 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 10

# 336
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_336 \
  --model Convformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 336 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --num_rand_features 256 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 10

# 720
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_720 \
  --model Convformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 720 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --num_rand_features 256 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 10

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Informer # Informer # Informer # Informer # Informer # Informer # Informer # Informer # Informer  #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# 24
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_24 \
  --model Informer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 24 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 10

# 48
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_48 \
  --model Informer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 48 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 10

# 168
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_168 \
  --model Informer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 168 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 10

# 336
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_336 \
  --model Informer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 336 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 10

# 720
python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_720 \
  --model Informer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 720 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 5 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 10
