# Prerequisites

## Install kubectl

kubectl – A command line tool for working with Kubernetes clusters. For more information, see [Installing or updating kubectl](https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html).

### Download the latest release
```
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
```

### Validate the binary (optional but recommended)
```
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(cat kubectl.sha256) kubectl" | sha256sum --check
```

### Install kubectl
```
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
```

### Check kubectl version to ensure it's installed correctly
```
kubectl version --client
```

## Install eksctl

eksctl – A command line tool for working with EKS clusters that automates many individual tasks. For more information, see [Installing or updating](https://docs.aws.amazon.com/eks/latest/userguide/eksctl.html).

### Download and extract the latest release of eksctl
```
curl -s --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
```

### Move the extracted binary to /usr/local/bin
```
sudo mv /tmp/eksctl /usr/local/bin
```

### Check eksctl version to ensure it's installed correctly
```
eksctl version
```

## Install AWS CLI

AWS CLI – A command line tool for working with AWS services, including Amazon EKS. For more information, see [Installing, updating, and uninstalling the AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html) in the AWS Command Line Interface User Guide.

### Download the AWS CLI bundle
```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
```

### Unzip the downloaded file
```
unzip awscliv2.zip
```

### Run the AWS CLI install program
```
sudo ./aws/install
```

### Check AWS CLI version to ensure it's installed correctly
```
aws --version
```
