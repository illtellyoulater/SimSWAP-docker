# simswap-docker

![Main Build](https://github.com/nlemeshko/SimSWAP-docker/actions/workflows/build.yml/badge.svg)

**Docker** for ***SimSwap - https://github.com/neuralchen/simswap***

1. clone repo with ```git clone https://github.com/illtellyoulater/simswap-docker.git```
2. cd /simswap-docker
3. for GPU version: ```docker build . --file Dockerfile_GPU --tag simswap```
4. for CPU version: ```docker build . --file Dockerfile_CPU --tag simswap```
4. Place 1 photo and 1 video in /simswap-docker/media
5. Run ```bash start.sh``` to lauch container execution
6. When the elaboration is finished, check the results in /simswap-docker/media

Also, don't forget to see all other usage examples at https://github.com/illtellyoulater/simswap-docker/doc/examples

<br><br>

Colabs and alternatives (not guaranteed to be on latest version):

https://colab.research.google.com/github/neuralchen/SimSwap/blob/main/SimSwap%20colab.ipynb

https://www.kaggle.com/bananon/simswap-modifed
