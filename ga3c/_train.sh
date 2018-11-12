mkdir checkpoints > /dev/null 2>&1
mkdir logs > /dev/null 2>&1
#python3 GA3C.py "$@"
#/usr/local/cuda/bin/nvprof --profile-from-start off --export-profile profiler_output.nvvp -f --print-summary python3 GA3C.py "$@"

nohup python3 GA3C.py "$@" &
nohup /usr/local/cuda-8.0/bin/nvprof --export-profile profile-launcher-%p.nvvp -f --print-summary --profile-from-start off --profile-all-processes &