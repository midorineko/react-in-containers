#!/bin/bash

# Download and install Minikube
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
&& chmod +x minikube \
&& sudo mv minikube /usr/local/bin/

# Download and install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
&& chmod +x kubectl \
&& sudo mv kubectl /usr/local/bin/

# Start Minikube
minikube start
#!/bin/bash

echo "Starting setup script..."

# Update and install required packages for Minikube
sudo apt-get update && sudo apt-get install -y conntrack iptables

# Check if conntrack is installed correctly
if ! command -v conntrack &> /dev/null
then
    echo "conntrack could not be found"
    exit 1
fi

# Download and install Minikube
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
&& chmod +x minikube \
&& sudo mv minikube /usr/local/bin/

# Download and install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
&& chmod +x kubectl \
&& sudo mv kubectl /usr/local/bin/

# Start Minikube using the none driver
sudo minikube start --driver=none

echo "Setup script completed."
