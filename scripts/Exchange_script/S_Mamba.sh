
model_name=S_Mamba

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/exchange_rate/ \
  --data_path exchange_rate.csv \
  --model_id Exchange_96_96 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --pred_len 96 \
  --e_layers 2 \
  --enc_in 8 \
  --dec_in 8 \
  --c_out 8 \
  --des 'Exp' \
  --d_model 128 \
  --batch_size 16\
  --learning_rate 0.0001 \
  --d_ff 128 \
  --itr 1

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/exchange_rate/ \
  --data_path exchange_rate.csv \
  --model_id Exchange_96_192 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --pred_len 192 \
  --e_layers 2 \
  --enc_in 8 \
  --dec_in 8 \
  --c_out 8 \
  --des 'Exp' \
  --d_model 128 \
  --learning_rate 0.0001 \
  --d_ff 128 \
  --itr 1

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/exchange_rate/ \
  --data_path exchange_rate.csv \
  --model_id Exchange_96_336 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --pred_len 336 \
  --e_layers 2 \
  --enc_in 8 \
  --dec_in 8 \
  --c_out 8 \
  --des 'Exp' \
  --itr 1 \
  --d_model 128 \
  --learning_rate 0.00005 \
  --d_ff 128 \

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/exchange_rate/ \
  --data_path exchange_rate.csv \
  --model_id Exchange_96_720 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --pred_len 720 \
  --e_layers 2 \
  --enc_in 8 \
  --dec_in 8 \
  --c_out 8 \
  --des 'Exp' \
  --learning_rate 0.00005 \
  --d_model 128 \
  --d_ff 128 \
  --itr 1