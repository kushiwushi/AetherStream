# AetherStream

> Next-Generation Cloud GPU Workstations & Real-Time Interactive Streaming

AetherStream is an open-source architecture for deploying, optimizing, and orchestrating low-latency cloud GPU workstations on Amazon Web Services (AWS) using dedicated NVIDIA Tesla/Ampere hardware, hardware-accelerated NVENC video pipelines, and automated zero-waste storage lifecycles.

---

## Architecture Overview

* **Compute Layer**: AWS EC2 GPU Family (`g4dn.xlarge` / `g5.xlarge`) with dedicated PCIe passthrough.
* **Graphics Stack**: NVIDIA GRID vGPU drivers running in WDDM mode supporting native DirectX 12, Vulkan, and OpenGL.
* **Streaming Protocol**: Ultra-low latency P2P WebRTC / H.264 / HEVC video stream with sub-5ms encode times.
* **Storage Optimization**:
  * Persistent 64KB-cluster `gp3` system volumes.
  * Ephemeral high-throughput NVMe instance store for instant caching.
  * Automated idle-freeze lifecycle reducing idle storage footprint by >75%.
* **Client**: Multi-platform client support (Arch Linux, Windows, macOS) utilizing hardware VA-API/NVDEC decoding.

---

## Live Website

The official project landing page is hosted via GitHub Pages:
`https://<your-username>.github.io/AetherStream/`

---

## License

This project is licensed under the MIT License - see the LICENSE file for details.
