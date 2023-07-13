#

# Images

If you want to use this please build the images yourself.

# ROCm 5.4.3 

## Jammy base + ROCm 5.4.3
```
podman build -t repo.despera.space/iru/rocm:5.4.3 -f Dockerfile.5.4.3 .
podman run -it --privileged  -v /dev/dri:/dev/dri -v /dev/kfd:/dev/kfd  repo.despera.space/iru/rocm:5.4.3 /bin/bash
```
  

## Jammy base + ROCm 5.4.3 + Torch 5.4.2 + Python 3.10 + Git
```
podman build -t repo.despera.space/iru/rocm:5.4.3-torch5.4.2 -f torch/Dockerfile.5.4.3 .
podman run -it --privileged  -v /dev/dri:/dev/dri -v /dev/kfd:/dev/kfd  repo.despera.space/iru/rocm:5.4.3-torch5.4.2 /bin/bash
```

# ROCm 5.2.3

## Focal base + ROCm 5.2.3
```
podman build -t repo.despera.space/iru/rocm:5.2.3 -f Dockerfile.5.2.3 .
podman run -it --privileged  -v /dev/dri:/dev/dri -v /dev/kfd:/dev/kfd  repo.despera.space/iru/rocm:5.2.3 /bin/bash
```

## Focal base + ROCm 5.2.3 + Torch 1.13.1 + Python + Git
```
podman build -t repo.despera.space/iru/rocm:5.2.3-torch-1.13.1 -f torch/Dockerfile.5.2.3 .
podman run -it --privileged  -v /dev/dri:/dev/dri -v /dev/kfd:/dev/kfd  repo.despera.space/iru/rocm:5.2.3-torch-1.13.1 /bin/bash
```

# Testing

## ROCm

Run `rocminfo` or `rocm-smi`.

## Torch
Run Python3.

```python
import torch
torch.cuda.is_available()
torch.cuda.device_count()
torch.cuda.get_device_name(0)
```


# Why are those so large?

The libraries installed are quite big. I have no idea why
