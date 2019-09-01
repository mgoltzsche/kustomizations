docker registry base
=

This docker registry kustomization base provides:
* The registry `Deployment` with nginx proxy with basic auth & TLS configured
* A credential rotator `CronJob`
* An initialization `Deployment` that triggers the credential rotator on deployment and deletes itself afterwards
* A `Service` with a ClusterIP
* A `DaemonSet` that adds the registry `Service`s ClusterIP to each node's /etc/hosts

What is required in order to use this base (for examples see `overlays` directory):
* A `PersistentVolumeClaim` should be used instead of the `emptyDir` volume
* The `Issuer` `registry-issuer` must be defined
* _A `Namespace` may need to be defined: this kustomization is namespace-agnostic_
