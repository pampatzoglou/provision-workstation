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

[![CI](https://github.com/pampatzoglou/provision-workstation/actions/workflows/ci.yaml/badge.svg)](https://github.com/pampatzoglou/provision-workstation/actions/workflows/ci.yaml)

# Installs

[argo](https://github.com/argoproj/argo-workflows)
[aws](https://aws.amazon.com/cli/)
azure
[brave](https://brave.com/)
[cert_manager](https://github.com/cert-manager/cert-manager)
[copper](https://github.com/cloud66-oss/copper)
[docker CE](https://download.docker.com)
[doctl](https://github.com/digitalocean/doctl)
[firewall](https://help.ubuntu.com/community/UFW)
[gcp](https://cloud.google.com/sdk/gcloud)
git
github
helm
    [helm](https://helm.sh/)
    [helm-diff](https://github.com/databus23/helm-diff)
    [helmfile](https://github.com/helmfile/helmfile)
[k6s](https://k6.io/)
[keepassxc](https://keepassxc.org/)
[kind](https://kind.sigs.k8s.io/)
[kube_bench](https://github.com/aquasecurity/kube-bench)
[kubectl](https://kubernetes.io/docs/tasks/tools/)
[kubesquash](https://github.com/solo-io/squash)
[logcli](https://grafana.com/docs/loki/latest/tools/logcli/)
[open_lens](https://github.com/MuhammedKalkan/OpenLens)
[pcloud](https://www.pcloud.com)
[stern](https://github.com/stern/stern)
[syncthing](https://syncthing.net)
[terraform](https://www.terraform.io/)
[velero](https://github.com/vmware-tanzu/velero)
[vscode](https://code.visualstudio.com)
[wireguard](https://www.wireguard.com)
zsh
