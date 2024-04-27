# Install argocd-image-updater...
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj-labs/argocd-image-updater/stable/manifests/install.yaml

# Once Pods are running... run:
echo "Getting 'admin' password secret"
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo

echo "Forwarding to localhost:8080...."
kubectl port-forward svc/argocd-server -n argocd 8080:443
