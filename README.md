# slime: LLM Post-Training Framework

**slime** is an LLM post-training framework for RL scaling, providing two core capabilities:
1. **High-Performance Training**: Supports efficient training in various modes by connecting Megatron with SGLang.
2. **Flexible Data Generation**: Enables arbitrary training data generation workflows through custom data generation interfaces.

## Quick Start
1. Install dependencies:
   ```bash
   git clone https://github.com/THUDM/slime.git
   cd slime
   pip install -e .
   ```
2. Prepare data and checkpoint (see detailed docs).
3. Run training script.

## Core Features
- **SGLang Native**: High-performance rollout with FP8, Speculative Decoding, and DeepEP.
- **Megatron Backend**: Supports TP, PP, CP, EP parallelism.
- **Fault Tolerance**: Automatic heartbeat checks and rollout recovery.
- **Flexible Workflows**: RL, SFT, and Rejection Sampling supported.

## Architecture
- **Training**: Megatron-LM (parameter updates).
- **Rollout**: SGLang (data generation).
- **Buffer**: Ray Actors (data management).

For full details, please refer to the project repository.