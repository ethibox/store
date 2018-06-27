.PHONY: test
.SILENT:

test:
	@ helm lint .
	@ helm template . | grep -o '^[^#]*' | uniq | kubeval
	@ helm template --name test --set persistence.enabled=true,storageClassName=standard . | grep -o '^[^#]*' | uniq | kubeval
