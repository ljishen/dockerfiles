# Linux Perf in Docker Container

perf is a Performance analysis tools for Linux. Now is available using `docker run`.


## Usage

```bash
docker run --rm --cap-add SYS_ADMIN ljishen/perf stat sleep 2
```
