#!/usr/bin/env bash
podman build -t repo.despera.space/iru/rocm:5.4.3 -f Dockerfile.5.4.3 .
podman build -t repo.despera.space/iru/rocm:5.4.3-torch5.4.2 -f torch/Dockerfile.5.4.3 .
podman build -t repo.despera.space/iru/rocm:5.4.3-koboldcpp . -f kobold/Dockerfile.5.4.3
podman build -t repo.despera.space/iru/rocm:5.4.3-llamacpp . -f llamacpp/Dockerfile.5.4.3
podman build -t repo.despera.space/iru/rocm:5.2.3 -f Dockerfile.5.2.3 . 
podman build -t repo.despera.space/iru/rocm:5.2.3-torch-1.13.1 -f torch/Dockerfile.5.2.3 .
