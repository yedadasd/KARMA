model_name=WaveForM

seq_len=96

for pred_len in 96 192 336 720
do

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/weather/ \
  --data_path weather.csv \
  --model_id weather_$seq_len'_'$pred_len \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len $seq_len \
  --label_len 48 \
  --pred_len $pred_len \
  --enc_in 21 \
  --c_out 21 \
  --des 'WaveForM' \
  --dropout 0.3 \
  --itr 1 \

done