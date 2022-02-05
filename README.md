# simswap-docker

**Docker image for SimSwap - https://github.com/neuralchen/simswap**

1. download the dockerfile and place it into an empty folder (e.g. /simswap)
2. cd /simswap
3. to build an image for latest version: ```docker build . --file dockerfile-for-v24-11-2021 --tag simswap```
4. to build an image for v1 with CPU patch: ```docker build . --file dockerfile-for-v1-cpufix --tag simswap```
4. create a /shared folder in /simswap and place input photo and video in it
5. run the container with ```docker run --rm -it -v /shared:/home/media simswap /opt/conda/envs/simswap/bin/python test_video_swapsingle.py --no_simswaplogo --crop_size 224 --use_mask --name people --Arc_path arcface_model/arcface_checkpoint.tar --pic_a_path /home/media/photo.jpg --video_path /home/media/video.mp4 --output_path /home/media/video-out.mp4 --temp_path /home/media/temp_results```
6. alternatively for a more automated version download and execute ```bash start.sh```
7. when the container finishes running find the results in the mapped folder (/shared) 

For other simswap usage examples (e.g. multiple face substitution) see https://github.com/illtellyoulater/simswap-docker/examples.md

<br><br>

Colab from simswap maintainers:

https://colab.research.google.com/github/neuralchen/SimSwap/blob/main/SimSwap%20colab.ipynb
