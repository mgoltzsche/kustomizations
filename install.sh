#!/bin/sh

set -e

TIMEOUT=--timeout=5m

k8spkg apply -k flannel --name flannel $TIMEOUT # networking
#k8spkg apply -k rook-ceph --enable_alpha_plugins --name rook-ceph $TIMEOUT # ceph operator
#k8spkg apply -k rook-ceph-cluster --name rook-ceph-cluster $TIMEOUT # ceph cluster
k8spkg apply -k local-path-provisioner --name local-path-provisioner $TIMEOUT
k8spkg apply -k cert-manager --enable_alpha_plugins --name cert-manager $TIMEOUT # certificate manager
k8spkg apply -k cert-manager-issuer --enable_alpha_plugins --name cert-manager-issuer $TIMEOUT # cluster-ca-issuer
k8spkg apply -k postgres-operator --name postgres-operator $TIMEOUT # postgres operator
k8spkg apply -k postgres-cluster --name postgres-cluster $TIMEOUT # postgres cluster
#k8spkg apply -k linkerd/base --name linkerd --enable_alpha_plugins $TIMEOUT # service mesh with TLS enforced
k8spkg apply -k metallb --name metallb $TIMEOUT # bare-metal service load balancer
k8spkg apply -k ingress-nginx --name ingress-nginx $TIMEOUT # Ingress support (requires load balancer)
#k8spkg apply -k hydra/hydra --name hydra $TIMEOUT # SSO
k8spkg apply -k docker-registry/overlays/with-namespace --name docker-registry $TIMEOUT
k8spkg apply -k tekton --name tekton $TIMEOUT
k8spkg apply -k tekton-dashboard/overlays/ingress/ --name tekton-dashboard $TIMEOUT
