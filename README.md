# nvbw

Docker wrapper for [nvbandwidth](https://github.com/NVIDIA/nvbandwidth) — NVIDIA memory bandwidth benchmarking tool.

Images are published to GitHub Container Registry for CUDA versions: 12.8.1, 12.9.0, 13.0.0, 13.1.0, 13.2.1.

## Requirements

- Docker with [NVIDIA Container Toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html)
- NVIDIA GPU

## Usage

```bash
# Host to device memory copy (CE)
docker run --rm --gpus all ghcr.io/slapshin/nvbw:cuda-12.9.0 -t host_to_device_memcpy_ce

# Device to host memory copy (CE)
docker run --rm --gpus all ghcr.io/slapshin/nvbw:cuda-12.9.0 -t device_to_host_memcpy_ce

# List all available tests
docker run --rm --gpus all ghcr.io/slapshin/nvbw:cuda-12.9.0 --list
```

## Build locally

```bash
docker build -t nvbw .

# Or with a specific CUDA version
make build CUDA_VERSION=12.8.1
```
