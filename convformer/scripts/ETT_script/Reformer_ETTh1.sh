# pyenv activate science-venv && cd Documents/VScodeProjects/RNN-TimeSeries-coursework/convformer && bash scripts/ETT_script/Reformer_ETTh1.sh

export CUDA_VISIBLE_DEVICES=0

python -u run.py \
  --is_training 1 \
  --root_path ./data/raw/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_96 \
  --model Reformer \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1

# ETTh1_96_720_Reformer_ETTh1_ftM_sl96_ll48_pl720_dm512_nh8_el2_dl1_df2048_fc1_ebtimeF_dtTrue_Exp_0  
# mse:1.1451867818832397, mae:0.8267222046852112, rmse:1.0701340436935425, mape:24.63397979736328, mspe:240523.859375
