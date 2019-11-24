# Cluster CA cert secret

This Job generates a certificate signed by the cluster CA into a secret.  


It could also be a CronJob that runs immediately and reconfigures itself to run in longer intervals afterwards.  


PROBLEMS:
- The job requires permissions to approve cluster certificates!
- Not supported by cert-manager as long as no intermediate CA cert is
  approved and passed over to cert-manager but often clusters don't
  allow issueing an intermediate CA due to security concerns.
