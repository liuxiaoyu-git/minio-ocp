# MinIO on OpenShift/OKD

[MinIO](https://github.com/minio/minio) an object storage that is API compatiable for S3.

This repo has OpenShift/OKD templates for creating MinIO

## deploying

There are two templates: ephemeral (may Loki have mercy on your bits) or with PVC.

ephemeral:
```
oc process -f minio.yaml | oc apply -f
```

PVC:
```
oc process -f minio-pvc.yaml | oc apply -f
```