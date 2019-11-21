# Dockerfile for aarch64 package build and release

1. Build the docker image for cross compile

    ```shell script
    docker build -t netty-cross-compile:v1.0 .
    ```

2. Start a container with the built image

    Show help message
    ```shell script
    docker run netty-cross-compile:v1.0
    ```

    Or release the package directly
    ```shell script
    docker run -it netty-cross-compile:v1.0 release
    ```
    Or just run into the container
    ```shell script
    docker run -it netty-cross-compile:v1.0 bash
    ```
