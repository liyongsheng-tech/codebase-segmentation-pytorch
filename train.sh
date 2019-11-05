# Please note that the number of GPUs should be consistant with parameter `nproc_per_node`.


# Single-Node Multi-Process.
CUDA_VISIBLE_DEVICES=0,1,2,3 python -m torch.distributed.launch --nproc_per_node=4 train.py 

# TODO(xwd): Multi-Node Multi-Process. Not implemented yet because of lacking of computing resources.
# Any other information please refer: `https://zhuanlan.zhihu.com/p/52110617`
# python -m torch.distributed.launch --nproc_per_node=NUM_GPUS_YOU_HAVE
#            --nnodes=2 --node_rank=0 --master_addr="192.168.1.1"
#            --master_port=1234 YOUR_TRAINING_SCRIPT.py (--arg1 --arg2 --arg3
#            and all other arguments of your training script)
