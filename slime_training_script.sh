# Efficient dense model. Good for debugging.
cd /root/slime

# RL Training with Decoupled Inference
ray job submit --address="http://127.0.0.1:8265" \
   -- python3 train.py \
   --actor-num-nodes 1 \
   --actor-num-gpus-per-node 8 \
   --rollout-num-gpus 4 \
   # Megatron Parallelism
   --tensor-model-parallel-size 2 \
   --pipeline-model-parallel-size 1 \
   --context-parallel-size 1 \
   --expert-model-parallel-size 1 \
   # Slime Optimizations
   --use-dynamic-batch-size \
   --optimizer-cpu-offload \
   # Load model config
   --model-script scripts/run-qwen3-4B.sh