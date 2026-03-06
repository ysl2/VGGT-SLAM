#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUTPUT="${SCRIPT_DIR}/output/$(date +%Y%m%d%H%M%S)"

mkdir -p "$OUTPUT"
python "${SCRIPT_DIR}/main.py" \
    --image_folder /home/songliyu/Templates/DJI-Mini3-Pro/20260208/102MEDIA/DJI_0544/images \
    --max_loops 0 \
    --submap_size 8 \
    --vis_map \
    --vis_voxel_size 0.05 \
    --log_results \
    --export_map_pcd \
    --skip_dense_log \
    --log_path "${OUTPUT}/poses.txt"
