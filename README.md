# Docker-sha256


QC module for any files, based on sha256sum.
* Input : a file (either gzipped or not)
* Output : a report file containing sha256sum
    * format of output report file
    ```
    8635ebfb7a7307c323da365801caa2a0
    ```

This repo contains the source files for a docker image stored in duplexa/sha256:v1. (we will change the docker hub account soon)


## Cloning the repo
```
git clone https://github.com/4dn-dcic/docker-sha256
cd docker-sha256
```

## Resources tools
Major software tools used inside the docker container are downloaded by the script `downloads.sh`. This script also creates a symlink to a version-independent folder for each software tool. In order to build an updated docker image with a new version of the tools, ideally only `downloads.sh` should be modified, but not `Dockerfile`, unless the new tool requires a specific APT tool that need to be downloaded. 
The `downloads.sh` file also contains comment lines that specifies the name and version of individual software tools.


## Building docker image
You need docker daemon to rebuild the docker image. If you want to push it to a different docker repo, replace duplexa/sha256:v1 with your desired docker repo name. You need permission to push to duplexa/sha256:v1.
```
docker build -t duplexa/sha256:v1 .
docker push duplexa/sha256:v1
```

## Usage
Run the following in the container.
```
run.sh <file> 
# file : input file, either gzipped or not
# output file 'report' is generated.
```
