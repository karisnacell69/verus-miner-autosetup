#!/bin/bash
# ===============================================
#  VerusCoin Auto Installer & Miner Setup Script
#  Tested on Ubuntu 20.04 / 22.04 (Google Cloud / VPS)
#  Author: @karisnacell69
# ===============================================

echo "=============================="
echo "   VerusCoin Auto Installer   "
echo "=============================="

# Update & install dependencies
sudo apt update && sudo apt upgrade -y
sudo apt install -y git build-essential cmake automake libtool autoconf screen htop

# Clone and build cpuminer-verus
cd /usr/local/src
if [ ! -d "cpuminer-verus" ]; then
    sudo git clone https://github.com/VerusCoin/cpuminer-verus.git
fi
cd cpuminer-verus
sudo ./build.sh

# Input wallet info
echo
read -p "Masukkan alamat wallet VerusCoin kamu (RV...): " WALLET
read -p "Masukkan nama worker (misal: vps1): " WORKER

# Pool default (Luckpool Asia)
POOL="stratum+tcp://ap.luckpool.net:3956"

# Create mining script
sudo tee /usr/local/bin/verusmine.sh > /dev/null <<EOF
#!/bin/bash
WALLET="$WALLET"
POOL="$POOL"
WORKER="$WORKER"

sudo /usr/local/src/cpuminer-verus/cpuminer \\
  -a verus -o \$POOL -u \$WALLET.\$WORKER -p x -t \$(nproc)
EOF

sudo chmod +x /usr/local/bin/verusmine.sh

# Create systemd service for auto-run
sudo tee /etc/systemd/system/verus.service > /dev/null <<EOF
[Unit]
Description=VerusCoin Miner
After=network.target

[Service]
Type=simple
ExecStart=/usr/local/bin/verusmine.sh
Restart=always
RestartSec=5

[Install]
WantedBy=multi-user.target
EOF

# Enable & start miner
sudo systemctl daemon-reload
sudo systemctl enable verus.service
sudo systemctl start verus.service

# Display info
clear
echo "=============================="
echo "  VerusCoin Miner is Running! "
echo "=============================="
echo "Wallet   : $WALLET"
echo "Worker   : $WORKER"
echo "Pool     : $POOL"
echo
echo "Untuk melihat log: sudo journalctl -u verus.service -f"
echo "Untuk stop miner : sudo systemctl stop verus.service"
echo "Untuk restart    : sudo systemctl restart verus.service"
echo
echo "Cek IP Publik VM:"
curl -s ifconfig.me && echo
echo "=============================="
