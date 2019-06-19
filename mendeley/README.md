# Mendeley Docker Image

## Usage

1. Launch the container using
   ```bash
   docker run --rm \
        -p 6080:80 \
        -p 5900:5900 \
        -v /dev/shm:/dev/shm \
        ljishen/mendeley
   ```

2. You can connect to the server with your favorite VNC client or noVNC. Once connected, the Mendeley Desktop should already start up. Otherwise, you can find the menu item from `Education` -> `Mendeley Desktop`. You can also start the Mendeley Desktop Client via command
   ```bash
   mendeleydesktop
   ```
