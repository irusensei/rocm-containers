FROM docker.io/ubuntu:jammy-20230605
ENV HSA_OVERRIDE_GFX_VERSION "10.3.0"
ENV PYTORCH_CUDA_ALLOC_CONF "backend:cudaMallocAsync"
RUN apt-get update && apt-get install -y locales wget gnupg2 python3 python3-pip python3.10-venv && \
    rm -rf /var/lib/apt/lists/*
ENV LANG en_US.utf8
RUN wget https://repo.radeon.com/amdgpu-install/5.4.3/ubuntu/jammy/amdgpu-install_5.4.50403-1_all.deb
RUN sudo apt-get install -y ./amdgpu-install_5.4.50403-1_all.deb && rm ./amdgpu-install_5.4.50403-1_all.deb 
RUN amdgpu-install --no-dkms --usecase=rocm,hiplibsdk,mlsdk,mllib
