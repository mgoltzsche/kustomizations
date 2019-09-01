docker registry test
=

This kustomization overlay defines a pod that runs a push and pull
test and deletes it self afterwards.  

For each test case there is a separate container: after the push test
succeeds it notifies the pull test container that makes Kubernetes
deploy a test job using the pushed image and watches it complete.  

The pod becomes ready only if both tests have succeeded. Meanwhile
each test's last stderr log line is published as a readinessProbe's
event that can be displayed by higher-level tooling such as [k8spkg](https://github.com/mgoltzsche/k8spkg)
during installation or update.  

In order to make the test work for updates as well and be respected
by client tools (e.g. `kubectl rollout status`) it has been
declared as deployment. (It cannot be declared as a job since jobs
cannot be updated).
