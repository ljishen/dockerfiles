# Linux Perf in Docker Container

perf is a Performance analysis tools for Linux. Now is available using `docker run`.


## Supported tags

- `4.9-slim`, `latest` [debian-slim/Dockerfile](https://github.com/ljishen/dockerfiles/blob/master/linux-perf/debian-slim/Dockerfile)
- `4.9-python3` [debian-python3/Dockerfile](https://github.com/ljishen/dockerfiles/blob/master/linux-perf/debian-python3/Dockerfile)


## Example Usage

```bash
docker run --rm --cap-add SYS_ADMIN ljishen/perf stat sleep 2
```
