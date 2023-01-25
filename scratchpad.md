# Scratchpad

./decode_xsum.sh $TRAINED_MODELS/bart_xsum/syslowcon_swapent/checkpoint_last.pt /home/shaib.c/confused-transformer/cliff_summ/outputs/

Token 1 in the target attends to all 40 tokens in the source. Once for every layer, and once for every head.
Token 2 in the target attends to all 40 tokens in the source.