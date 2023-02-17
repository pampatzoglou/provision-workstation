[![CI](https://github.com/pampatzoglou/provision-workstation/actions/workflows/ci.yaml/badge.svg)](https://github.com/pampatzoglou/provision-workstation/actions/workflows/ci.yaml)
[![molecule-docker](https://badge.fury.io/py/molecule-docker.svg)](https://badge.fury.io/py/molecule-docker)
[![tox](https://github.com/pampatzoglou/provision-workstation/actions/workflows/tox.yaml/badge.svg)](https://github.com/pampatzoglou/provision-workstation/actions/workflows/tox.yaml)
[![Python Black Code Style](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/python/black)
[![LICENSE](https://img.shields.io/badge/license-MIT-brightgreen.svg)](https://github.com/pampatzoglou/provision-workstation/blob/main/LICENSE)

# provision workstation

Playbook to install standard tools I use on my workstations (Ubuntu and Mac)

# Requirements

Ansible, you can install by running the command:

```
pip3 install -r requirements.txt
```

# Provision

```
ansible-playbook --ask-become-pass -e user=$USER playbook.yaml
```

or if you wish to use one aspect of the roles you can use the appropriate tags, eg:

```
ansible-playbook --ask-become-pass -e user=$USER playbook.yaml --tags kubernetes
```

# Installs

* [argo](https://github.com/argoproj/argo-workflows)
* [aws](https://aws.amazon.com/cli)
* azure
  * [azure-cli](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
  * [kubelogin](https://github.com/Azure/kubelogin)
  * [Azure VPN Client (Mac only)](https://apps.microsoft.com/store/detail/azure-vpn-client/9NP355QT2SQB?hl=en-us&gl=us)
  * [Azure Storage Explorer](https://azure.microsoft.com/en-us/products/storage/storage-explorer)
* [brave](https://brave.com)
* [cert_manager](https://github.com/cert-manager/cert-manager)
* [copper](https://github.com/cloud66-oss/copper)
* [datree](https://www.datree.io)
* [docker CE](https://download.docker.com)
* [doctl](https://github.com/digitalocean/doctl)
* [firewall](https://help.ubuntu.com/community/UFW)
* [gcp](https://cloud.google.com/sdk/gcloud)
* git
  * [gittyleaks](https://github.com/kootenpv/gittyleaks)
  * [hadolint](https://github.com/hadolint/hadolint)
  * [pre-commit](https://pre-commit.com)
  * [git-secrets](https://git-secret.io/installation)
  * [trufflehog](https://github.com/trufflesecurity/trufflehog)
  * git-config
  * git-hooks
  * git-ignore
* [github](https://github.com)
  * [gh](https://cli.github.com)
  * [act](https://github.com/nektos/act)
* helm-charts
  * [helm](https://helm.sh)
  * [helmfile](https://github.com/helmfile/helmfile)
  * [helm-diff](https://github.com/databus23/helm-diff)
  * helm repos
* [k6s](https://k6.io)
* [keepassxc](https://keepassxc.org)
* [kind](https://kind.sigs.k8s.io)
* [kube_bench](https://github.com/aquasecurity/kube-bench)
* [kube_hunter](https://github.com/aquasecurity/kube-hunter)
* [kube_linter](https://github.com/stackrox/kube-linter)
* [kubectl](https://kubernetes.io/docs/tasks/tools)
* [kubernetes-resource-advisor](https://github.com/elisasre/kubernetes-resource-advisor)
* [kubesquash](https://github.com/solo-io/squash)
* [logcli](https://grafana.com/docs/loki/latest/tools/logcli)
* [open_lens](https://github.com/MuhammedKalkan/OpenLens)
* [open policy agent](https://github.com/open-policy-agent/opa)
* [pcloud](https://www.pcloud.com)
* [stern](https://github.com/stern/stern)
* [syncthing](https://syncthing.net)
* [teleport](https://github.com/gravitational/teleport)
* [telepresence](https://www.telepresence.io)
* [terraform](https://www.terraform.io)
  * [checkov](https://www.checkov.io)
  * [terraform](https://github.com/hashicorp/terraform)
  * [tfsec](https://github.com/aquasecurity/tfsec)
  * [tflint](https://github.com/terraform-linters/tflint)
  * [terrascan](https://github.com/tenable/terrascan)
* [tilt](https://tilt.dev)
* [velero](https://github.com/vmware-tanzu/velero)
* [vscode](https://code.visualstudio.com)
* [wireguard](https://www.wireguard.com)
* [zsh](https://www.zsh.org)
  * jq
  * [yq](https://github.com/mikefarah/yq)
  * [yamllint](https://yamllint.readthedocs.io/en/stable)
  * [tldr](https://tldr.sh)
  * [Oh-My-Zsh](https://ohmyz.sh)
