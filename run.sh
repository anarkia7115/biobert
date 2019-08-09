mkdir /tmp/bioner/

NER_DIR="/data/nerdata/NCBI-disease2"
BIOBERT_DIR="/data/bert_model"

# check data exist. if not exist, download
python run_ner.py \
    --do_train=true \
    --do_predict=true \
    --do_eval=true \
    --vocab_file=$BIOBERT_DIR/vocab.txt \
    --bert_config_file=$BIOBERT_DIR/bert_config.json \
    --init_checkpoint=$BIOBERT_DIR/bert_model.ckpt \
    --num_train_epochs=10.0 \
    --data_dir=$NER_DIR/ \
    --output_dir=/tmp/bioner
