# README.localhost

1. 数据集路径：

   ```text
   /home/songliyu/Templates/DJI-Mini3-Pro/20260208/102MEDIA/DJI_0544/images
   ```

1. 产物路径：

   ```text
   /home/songliyu/Documents/VGGT-SLAM/output/20260306151424/poses_points.pcd
   ```

1. 推理：`./main.sh`

1. 后处理得到mp4：

   ```text
   cd ~/Documents/Depth-Anything-3/
   conda activate depth-anything-3
   python3 fix_axis.py -i /home/songliyu/Documents/VGGT-SLAM/output/20260306151424/poses_points.pcd
   python3 visualize_pyvista.py -i /home/songliyu/Documents/VGGT-SLAM/output/20260306151424/poses_points_corrected.ply
   python3 record_ply_video.py -i /home/songliyu/Documents/VGGT-SLAM/output/20260306151424/poses_points_corrected.ply --showcase --showcase-zoom 0.4
   mpv /home/songliyu/Documents/VGGT-SLAM/output/20260306151424/poses_points_corrected_video.mp4
   ```
