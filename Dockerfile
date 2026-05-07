ARG CUDA_VERSION=12.9.0
FROM nvidia/cuda:${CUDA_VERSION}-devel-ubuntu24.04

RUN apt-get update && apt-get install -y --no-install-recommends \
  git \
  cmake \
  build-essential \
  libboost-program-options-dev \
  && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/NVIDIA/nvbandwidth.git /opt/nvbandwidth \
  && cd /opt/nvbandwidth \
  && cmake . \
  && make -j$(nproc)

WORKDIR /opt/nvbandwidth
ENTRYPOINT ["./nvbandwidth"]
