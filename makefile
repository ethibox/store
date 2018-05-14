package:
	@ command -v helm > /dev/null 2>&1 || (echo "helm is not available please install" && exit 1)
	@ helm package charts/* -d packages/
	@ helm repo index packages/
