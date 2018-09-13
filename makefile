.PHONY: build test serve
.SILENT:

build:
	@ command -v helm > /dev/null 2>&1 || (echo "helm is not available please install" && exit 1)
	# @ helm package kubernetes/* -d packages/
	# @ helm repo index packages/

test:
	# @ helm lint kubernetes/*
	# @ find -type d -name kubernetes -exec helm template {} \; | grep -o '^[^#]*' | uniq | kubeval

serve:
	@ helm serve --address 0.0.0.0:8879 --repo-path packages
