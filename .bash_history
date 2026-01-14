# Update
sudo apt update && sudo apt upgrade -y
# Git
sudo apt install git -y
# Terraform (latest)
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform -y
# kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl && sudo mv kubectl /usr/local/bin/
# Helm
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
# ArgoCD CLI
curl -sSL -o argocd https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64
chmod +x argocd && sudo mv argocd /usr/local/bin/
# Kyverno CLI
curl -LO https://github.com/kyverno/kyverno/releases/latest/download/kyverno-cli_linux_amd64.tar.gz
tar -xvzf kyverno-cli_linux_amd64.tar.gz kyverno
chmod +x kyverno && sudo mv kyverno /usr/local/bin/
[200~cat /etc/os-release
cat /etc/os-release
sudo yum update -y
sudo yum install git -y
git --version
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum install terraform -y
terraform version
curl -LO https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
kubectl version --client
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
helm version
curl -sSL -o argocd https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64
chmod +x argocd
sudo mv argocd /usr/local/bin/
argocd version --client
curl -LO https://github.com/kyverno/kyverno/releases/latest/download/kyverno-cli_linux_amd64.tar.gz
tar -xzf kyverno-cli_linux_amd64.tar.gz
chmod +x kyverno
sudo mv kyverno /usr/local/bin/
kyverno version
rm kyverno-cli_linux_amd64.tar.gz
curl -LO https://github.com/kyverno/kyverno/releases/latest/download/kyverno-cli_linux_amd64.tar.gz
tar -xzf kyverno-cli_linux_amd64.tar.gz
chmod +x kyverno
sudo mv kyverno /usr/local/bin/
kyverno version
[200~curl -L -o kyverno https://github.com/kyverno/kyverno/releases/latest/download/kyverno-linux-amd64
curl -L -o kyverno https://github.com/kyverno/kyverno/releases/latest/download/kyverno-linux-amd64
chmod +x kyverno
sudo mv kyverno /usr/local/bin/
kyverno version
file kyverno-cli_linux_amd64.tar.gz
cat kyverno-cli_linux_amd64.tar.gz
sudo yum install -y kyverno
curl -L -o kyverno https://github.com/kyverno/kyverno/releases/download/v${VERSION}/kyverno-linux-amd64
ls -lh kyverno
file kyverno
chmod +x kyverno
sudo mv kyverno /usr/local/bin/
kyverno version
sudo rm -f /usr/local/bin/kyverno
curl -sfL https://get.k3s.io | sh -
sudo k3s kubectl get nodes
mkdir -p ~/.kube
sudo cp /etc/rancher/k3s/k3s.yaml ~/.kube/config
sudo chown $(id -u):$(id -g) ~/.kube/config
kubectl get pods -A
helm repo add kyverno https://kyverno.github.io/kyverno/
helm repo update
helm install kyverno kyverno/kyverno   -n kyverno   --create-namespace
kubectl get pods -n kyverno
ls
mkdir zero-trust-k8s-platform && cd zero-trust-k8s-platform
touch README.md
mkdir -p architecture/diagrams architecture/decisions
mkdir -p terraform/bootstrap terraform/iam terraform/kubernetes terraform/environments
mkdir -p platform/policies platform/networking platform/observability
mkdir -p gitops/argocd gitops/applications
mkdir -p teams/team-alpha teams/team-beta
mkdir -p ci/github-actions
mkdir -p audit/examples audit/evidence
ls
nano README.md
ls
cd zero-trust-k8s-platform
ls
cd terraform
ls
cd kubernetes
ls
terraform init
cd ..
cd bootstrap
terraform init
ls
nano backend.tf
nano providers.tf
terraform init
terraform init -reconfigure
ls
cd zero-trust-k8s-platform
nano zero-trust-model.md
nan rbac-strategy.md
nano rbac-strategy.md
nano policy-engine-choice.md
cd ../
cd terraform
ls
cd zero-trust-k8s-platform
ls
mv policy-engine-choice.md architecture
mv rbac-strategy.md  architecture
mv zero-trust-model.md                    architecture
cd architecture
ls
mv policy-engine-choice.md  rbac-strategy.md  zero-trust-model.md decisions
ls
cd decisions
cd ../
ls
cd terraform
nano bootstrap/backend.tf
ls
cd bootstrap
ls
nano providers.tf
cd ../
ls
cd iam
ls
nano github-oidc.tf
nano roles
rm roles
nano roles.tf
nano policies.tf
cd ..
cd kubernetes
nano cluster.tf
nano rbac.tf
nano namespaces.tf
cd ..
environments/dev/variables.tf
cd environments
ls
nano dev/variables.tf
ls
mkdir dev
mv variables.tf dev
ls
cat dev
ls -l dev
cd 
cd environments
ls
cd zero-trust-k8s-platform/terraform/environments
ls
mkdir prod
cd prod
nano variables.tf
cd ..
ls
cd ..
ls
cd ..
ls
cd platform
ls
nano policies/kyverno/disallow-latest.yaml
cd policies
mkdir kyverno
nano disallow-latest.yaml
mv disallow-latest.yaml kyverno
ls
cd kyverno
ls
nano require-labels.yaml
nano restrict-privileged.yaml
cd ..
cd networking
nano default-deny.yaml
nano namespace-isolation.yaml
cd ../observability
mkdir loki
cd loki
nano values.yaml
cd ..
mkdir prometheus
cd prometheus
nano values.yaml
cd ..
mkdir opencost
cd opencost
nano values.yaml
cd ..
cd ../gitops
ls
cd argocd
ls
nano install.yaml
nano projects.yaml
cd ..
cd applications
nano app.yaml
cd ..
ls
cd ..
ls
cd teams
ls
cd team-alpha
ls
nano namespace.yaml
nano rbac.yaml
nano deployment.yaml
nano service.yaml
cd ..
cd team-beta
ls
nano namespace.yaml
nano rbac.yaml
nano deployment.yaml
nano service.yaml
cd ..
cd ../ci
ls
cd github-actions
nano validate.yaml
nano security-scan.yaml
nano policy-check.yaml
nano deploy.yaml
cd ../../audit
ls
cd examples
nano who-deployed-what.md
nano failed-policy-attempt.md
cd zero-trust-k8s-platform
cd terraform/bootstrap
terraform init --reconfigure
cd ..
aws sts get-caller-identity
aws s3api head-object   --bucket my-terraform-bucket   --key terraform.tfstate
nano backend.wf
cd zero-trust-k8s-platform
cd terraform/bootstrap
nano backend.wf
nano backend.tf
nano provider.tf
lsw
ls
nano providers.tf
terraform init --reconfigure
cd zero-trusat-k8s-platform
cd zero-trust-k8s-platform
ls
cd terraform
ls
terraform apply
cd ..
terraform apply
cd terraform/bootstrap
ls
terraform apply
aws s3 ls s3://coker-terraform-bucket
cd ..
ls
cd kubernetes
ls
kubectl auth can-i create pods -n team-a --as team-b-user
ls
cd ..
cd platform
cd../platform
cd ../platform
ls
cd ..
cd ../ci
cd ..
cd zero-trust-k8s-platform/ci
ls
cd github-actions
ls
cd
cd zero-trust-k8s-platform
cd gitops
ls
cd applications
ls'

:qr


exit
ls
cd zero-trust-k8s-platform/terraform/environments
ls
cd ..
cd ../platform
ls
cd policies
ls
cd kyverno
ls
cd ../../terraform/kubernetes
cd ../../
cd ..
cd terraform/kubernetes
