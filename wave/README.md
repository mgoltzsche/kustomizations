wave
=

[wave](https://github.com/pusher/wave) makes Deployments/StatefulSets/DaemonSets reload when any of their
referenced ConfigMaps or Secrets changes.  

It must be enabled explicitly per Deployments/StatefulSets/DaemonSets by setting the annotation `wave.pusher.com/update-on-config-change: "true"`.
