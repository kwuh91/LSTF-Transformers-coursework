# pyenv activate science-venv && cd Documents/VScodeProjects/RNN-TimeSeries-coursework/convformer && bash scripts/ETT_script/custom2.sh

export PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True
export CUDA_VISIBLE_DEVICES=0

# # 720
# python -u run.py \
#   --is_training 1 \
#   --root_path ./data/raw/ETT-small/ \
#   --data_path ETTh1.csv \
#   --model_id ETTh1_96_720 \
#   --model Reformer \
#   --data ETTh1 \
#   --features M \
#   --seq_len 96 \
#   --label_len 48 \
#   --pred_len 720 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --des 'Exp' \
#   --itr 1 \
#   --batch_size 30

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
  --itr 1 \
  --batch_size 16
