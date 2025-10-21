<p align="center">
  <img src="https://verus.io/img/logo.svg" width="100" alt="VerusCoin Logo"/>
</p>

<h1 align="center">⚡ VerusCoin Auto Miner Setup</h1>

<p align="center">
  <a href="https://github.com/karisnacell69/verus-miner-autosetup/actions"><img src="https://github.com/karisnacell69/verus-miner-autosetup/actions/workflows/status.yml/badge.svg" alt="Miner Status"></a>
  <a href="https://ubuntu.com/"><img src="https://img.shields.io/badge/Ubuntu-20.04%2F22.04-orange?logo=ubuntu"></a>
  <a href="https://luckpool.net/"><img src="https://img.shields.io/badge/Luckpool-Compatible-blue?logo=verus"></a>
  <a href="https://github.com/karisnacell69"><img src="https://img.shields.io/badge/Maintainer-@karisnacell69-lightgrey"></a>
</p>


<p align="center">
  <img src="https://verus.io/img/logo.svg" width="100" alt="VerusCoin Logo"/>
</p>

<h1 align="center">⚡ VerusCoin Auto Miner Setup</h1>

<p align="center">
  <a href="https://github.com/karisnacell69/verus-miner-autosetup"><img src="https://img.shields.io/github/repo-size/karisnacell69/verus-miner-autosetup?color=brightgreen&label=Repo%20Size"></a>
  <a href="https://ubuntu.com/"><img src="https://img.shields.io/badge/Ubuntu-20.04%2F22.04-orange?logo=ubuntu"></a>
  <a href="https://luckpool.net/"><img src="https://img.shields.io/badge/Luckpool-Compatible-blue?logo=verus"></a>
  <a href="https://github.com/karisnacell69"><img src="https://img.shields.io/badge/Maintainer-@karisnacell69-lightgrey"></a>
</p>

---

### 🧩 Overview
This script automatically installs and starts a **VerusCoin CPU miner** (`cpuminer-verus`) on Ubuntu VPS or Google Cloud instances.

It:
- 🧠 Compiles VerusCoin miner from official source  
- ⚙️ Installs all required dependencies  
- 🪄 Creates a systemd service for auto-start  
- 💰 Begins mining automatically after setup  

---

## 🚀 Quick Start

Run this one-liner on your Ubuntu VPS / VM:

```bash
wget https://raw.githubusercontent.com/karisnacell69/verus-miner-autosetup/main/verus-autosetup.sh -O verus-autosetup.sh && sudo bash verus-autosetup.sh
