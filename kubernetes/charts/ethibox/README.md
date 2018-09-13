# Ethibox

[Ethibox](https://ethibox.io/) - Host your websites effortlessly.

## TL;DR;

```bash
helm install --namespace ethibox-system https://store.ethibox.io/packages/ethibox-0.1.0.tgz
```

## Prerequisites

* [Kubernetes v1.10 or higher](https://github.com/kubernetes/kubernetes) - Production-Grade Container Scheduling and Management.
* [Helm v2.8.2](https://github.com/kubernetes/helm/) - The Kubernetes Package Manager.

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
helm install --namespace ethibox-system https://store.ethibox.io/packages/ethibox-0.1.0.tgz
```

## Upgrading the chart

To upgrade the release `my-release`:

```bash
helm upgrade my-release --reuse-values --set image.tag=0.8.5 https://store.ethibox.io/packages/ethibox-0.1.0.tgz
```

## Uninstalling the Chart

To uninstall/delete the my-release deployment:

```bash
helm delete --purge my-release
```

## Configuration

The following table lists the configurable parameters of the Ethibox chart and their default values.

| Parameter               | Description                                         | Default               |
|-------------------------|-----------------------------------------------------|-----------------------|
| `ingress.enabled`       | Enable ingress controller resource                  | `true`                |
| `ingress.hosts[0]`      | Hostname to your Ethibox instance                   | `ethibox.local`       |
| `persistence.enabled`   | Create a volume to store ethibox database           | `true`                |

Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`. For example:

```bash
helm install --name my-release --set service.port=4444,persistence.enable=true https://store.ethibox.io/packages/ethibox-0.1.0.tgz
```

Alternatively, a YAML file that specifies the values for the above parameters can be provided while installing the chart. For example:

```bash
helm install --name my-release -f values.yaml https://store.ethibox.io/packages/ethibox-0.1.0.tgz
```

> **Tip**: You can use the default [values.yaml](values.yaml)
