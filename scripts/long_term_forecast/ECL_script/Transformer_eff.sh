
model_name=Transformer

for seq_len in 96 192 336 720 1024 1440 2048; do
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/electricity/ \
  --data_path electricity.csv \
  --model_id ECL$seq_len'_'$seq_len \
  --model $model_name \
  --data custom \
  --features S \
  --seq_len $seq_len \
  --label_len 48 \
  --pred_len $seq_len \
  --e_layers 3 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --batch_size 16 \
  --train_epochs 1 \
  --itr 1
done