CUDA_VERSION ?= 12.9.0
IMAGE := nvbw:cuda-$(CUDA_VERSION)

build:
	docker build --build-arg CUDA_VERSION=$(CUDA_VERSION) -t $(IMAGE) .

run:
	docker run --rm --gpus all $(IMAGE) $(ARGS)

.PHONY: build run
