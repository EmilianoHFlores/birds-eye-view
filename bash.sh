#!/bin/bash

docker run -it --gpus all -u $(id -u):$(id -g) --rm -v $(pwd):/app -w /app --env DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix birds-eye-view /bin/bash

# python3 scripts/predict_horizon_vpz_homography.py --img_path images/0000.png --model_name inception-v4