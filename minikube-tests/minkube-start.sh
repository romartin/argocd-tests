echo "Starting Minikube"
minikube start --driver=docker

echo "Creating NS"
kubectl create ns argocd

echo "Installing argoCD"
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v2.8.4/manifests/install.yaml
