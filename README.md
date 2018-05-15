# Deployment Trigger for the [Concourse Demo Pipeline](https://github.com/ONSdigital/concourse-demo-pipeline)

For more details on the pipeline, please see the [main repository](https://github.com/ONSdigital/concourse-demo-pipeline).

## Triggering a deployment

Deployments to preprod and prod require manual approval. This repository is used to trigger deployments to preprod and prod.

Triggering a preprod release
```bash
./release.sh preprod
git push origin master
```

Triggering a prod release
```bash
./release.sh prod
git push origin master
```

