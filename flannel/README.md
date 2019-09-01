flannel kustomization
=

A patched [flannel](https://github.com/coreos/flannel) 0.11.0 kustomization
that adds the `cniVersion` field to the network plugin configuration
to fix an error that occurs when used with CRI-O.
