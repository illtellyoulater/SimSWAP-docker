#!/bin/bash
TIMESTAMP=`date +%Y-%m-%d_%H-%M-%S`
echo
echo Enter the name of the image file
read imagefile
echo Enter the name of the video file
read videofile
echo
echo
echo -+- The face in the photo will replace the face in the video -+-
echo
echo If multiple faces are in the video the replacement will affect the face with the highest detection score
echo
echo For other examples see https://github.com/illtellyoulater/simswap-docker/examples.md

docker run --rm -it -v /shared:/home/media simswap /opt/conda/envs/simswap/bin/python test_video_swapsingle.py --no_simswaplogo --crop_size 512 --use_mask --name people --Arc_path arcface_model/arcface_checkpoint.tar --pic_a_path /home/media/$imagefile --video_path /home/media/$videofile --output_path /home/media/video$TIMESTAMP.mp4 --temp_path /home/media/temp_results

