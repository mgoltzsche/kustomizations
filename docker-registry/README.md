docker registry
=

This kustomization provides a private docker registry installation
with basic auth & TLS.  

For TLS the [cert-manager](https://github.com/jetstack/cert-manager)
is required.  

The `self-signed-ca` overlay only works well when using
[CRI-O](https://github.com/cri-o/cri-o) as Kubernetes container runtime.
