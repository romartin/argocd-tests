# Build/update image

Change helloworld.rb code.... then

docker build -t quay.io/romartin/argocd-tests:latest -f helloworld.dockerfile .
docker tag quay.io/romartin/argocd-tests:latest quay.io/romartin/argocd-tests:0.0.1

docker login quay.io
docker push quay.io/romartin/argocd-tests:0.0.1

# Install and run minikube

1.- Run minikube and deploy argoCD
sh minikube-start.sh

2.- Once Pods available, run: (see admin password)
sh minikube-poststart.sh

3.- localhost:8080 -> admin/xxxx -> Go to Settings -> Repos -> Add repo

4.- Click on 3 dots on the repo -> Create App, then:

app name: helloword-latest-update-tests
project name: default

source URL: https://github.com/romartin/argocd-tests.git
source path: minikube-tests

dest URL: https://kubernetes.default.svc
dest ns: argocd

5. Checkout app 
kubectl cluster-info
curl http://192.168.49.2:31000

HELLO2