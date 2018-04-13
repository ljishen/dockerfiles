# Mendeley in Docker Container

## Usage

1. Launch the container using
   ```bash
   docker run --rm \
        --user 0 \
        -p 5901:5901 \
        -p 6901:6901 \
        ljishen/mendeley
   ```

2. Once you connected to the server with your favourite VNC client or noVNC, the Mendeley Desktop should already start up. Otherwise, you can find the menu item from `Application` -> `Education` -> `Mendeley Desktop`. You can also start the Mendeley Desktop Client via command
   ```bash
   mendeleydesktop
   ```
