.PHONY: deploy


OC_PROCESS = oc process -f
OC_APPLY =  | oc apply -f -

.PHONY: deploy
deploy:
	${OC_PROCESS} minio.yaml ${OC_APPLY}

.PHONY: deploy-pvc
deploy-pvc:
	${OC_PROCESS} minio-pvc.yaml ${OC_APPLY}
