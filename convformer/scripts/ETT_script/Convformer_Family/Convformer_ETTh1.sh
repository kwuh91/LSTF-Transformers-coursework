# pyenv activate science-venv && cd Documents/VScodeProjects/RNN-TimeSeries-coursework/convformer && bash scripts/ETT_script/Convformer_Family/Convformer_ETTh1.sh

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
