# simswap-docker

**Docker image for SimSwap - https://github.com/neuralchen/simswap**

1. download the dockerfile for the simswap version you want to build:
 - `dockerfile-for-v1-cpufix` (first version with CPU patch)
 - `dockerfile-for-v24-11-2021` (latest version with HD dataset; it will still run on CPU but does not require a patch)
2. cd /simswap
3. build the image with: ```docker build . --file dockerfile-for-v1-cpufix --tag simswap``` or ```docker build . --file dockerfile-for-v24-11-2021 --tag simswap```
4. create a /shared folder in /simswap and place input photo and video in it
5. run the container with ```docker run --rm -it -v /shared:/home/media simswap /opt/conda/envs/simswap/bin/python test_video_swapsingle.py --no_simswaplogo --crop_size 224 --use_mask --name people --Arc_path arcface_model/arcface_checkpoint.tar --pic_a_path /home/media/photo.jpg --video_path /home/media/video.mp4 --output_path /home/media/video-out.mp4 --temp_path /home/media/temp_results```
6. when the container finishes running find the results in the mapped folder (/shared) 

Note: to use the HD dataset (only available if you built the latest version) replace `--crop_size 224` with  `--crop_size 512`

```start.sh``` is a little bash script like for automating the running procedure

For other working modes supported by simswap (e.g. multiple face substitution) see https://github.com/illtellyoulater/simswap-docker/blob/main/examples.md

<br>

Colab from simswap maintainers:

https://colab.research.google.com/github/neuralchen/SimSwap/blob/main/SimSwap%20colab.ipynb
