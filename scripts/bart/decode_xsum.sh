BEAM_SIZE=1
MAX_LEN_B=60
MIN_LEN=10
LEN_PEN=1.0

DATA=/home/jupyter/storage/datasets/cliff_summ_data


DATA_PATH=$DATA/data/xsum_binarized
MODEL_PATH=$DATA/trained_models/bart_xsum/syslowcon_swapent/checkpoint_last.pt
RESULT_PATH=/home/alberto/workspace/nlp/cliff_summ/outputs
USER_DIR=/home/alberto/workspace/nlp/cliff_summ/models/bart


fairseq-generate $DATA_PATH \
    --path $MODEL_PATH --results-path $RESULT_PATH \
    --beam $BEAM_SIZE --max-len-b $MAX_LEN_B --min-len $MIN_LEN --lenpen $LEN_PEN \
    --no-repeat-ngram-size 3 \
    --batch-size 32 --fp16 \
    --truncate-source --user-dir $USER_DIR;

#python convert_bart.py --generate-dir $RESULT_PATH
