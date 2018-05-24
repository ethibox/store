package:
	@ command -v helm > /dev/null 2>&1 || (echo "helm is not available please install" && exit 1)
	@ helm package charts/* -d packages/
	@ helm repo index packages/

test:
	@ find charts -maxdepth 1 -mindepth 1 -type d ! -path charts/custom -exec helm template {} \; | grep -o '^[^#]*' | uniq | kubeval
