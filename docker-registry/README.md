docker registry
=

A private docker registry with TLS, basic auth and credential rotation.  

For TLS the [cert-manager](https://github.com/jetstack/cert-manager)
is required.  

The `self-signed-ca` overlay only works well when using
[CRI-O](https://github.com/cri-o/cri-o) as Kubernetes container runtime.


## Authenticate your local docker installation

In order to pull/push images from/to the registry from your local
machine you need to configure its credentials in your
`~/.docker/config.json` as follows (run inside your registry namespace):
```
kubectl get secret registry-deployment-push-credentials -o jsonpath='{.data.\.dockerconfigjson}' | base64 -d > ~/.docker/config.json
```

To register your registry's CA certificate on your local machine run:
```
kubectl get secret registry-deployment-push-credentials -o jsonpath='{.data.ca\.crt}' | sudo sh -c 'base64 -d > /etc/ssl/certs/ca-cert-registry.pem'
sudo c_rehash
```
(This works on debian-based systems. On Fedora/CentOS/RHEL the CA certificate registration works differently.)
