docker registry with self-signed CA certificate
=

This kustomization overlay adds an `Issuer` that uses a self-signed CA
certificate and installs it on every node using a `DaemonSet` and
reloads [CRI-O](https://github.com/cri-o/cri-o).  

Also it adds the registry service's cluster-internal name to the
registry certificate's DNS names.  



COMPATIBILITY NOTICE: This kustomization works well on RHEL/Centos/Fedora
nodes that use [CRI-O](https://github.com/cri-o/cri-o) as Kubernetes container runtime.
In other environments the CA certificate may be installed but the
container engine will not respect it as long as it is not reloaded
or restarted.
