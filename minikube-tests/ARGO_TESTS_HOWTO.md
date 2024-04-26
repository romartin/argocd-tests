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
