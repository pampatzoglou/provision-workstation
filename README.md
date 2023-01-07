# provisionworkstation

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

<ol>
  <li>[argo](https://github.com/argoproj/argo-workflows)</li>
  <li>[aws](https://aws.amazon.com/cli/)</li>
  <li>azure</li>
  <li>[brave](https://brave.com/)</li>
  <li>[cert_manager](https://github.com/cert-manager/cert-manager)</li>
  <li>[copper](https://github.com/cloud66-oss/copper)</li>
  <li>[docker CE](https://download.docker.com)</li>
  <li>[doctl](https://github.com/digitalocean/doctl)</li>
  <li>[firewall](https://help.ubuntu.com/community/UFW)</li>
  <li>[gcp](https://cloud.google.com/sdk/gcloud)</li>
  <li>git</li>
  <li>github</li>
  <li>helm</li>
    <ol>
      <li>[helm](https://helm.sh/)</li>
      <li>[helm-diff](https://github.com/databus23/helm-diff)</li>
      <li>[helmfile](https://github.com/helmfile/helmfile)</li>
    </ol>
  <li>[k6s](https://k6.io/)</li>
  <li>[keepassxc](https://keepassxc.org/)</li>
  <li>[kind](https://kind.sigs.k8s.io/)</li>
  <li>[kube_bench](https://github.com/aquasecurity/kube-bench)</li>
  <li>[kubectl](https://kubernetes.io/docs/tasks/tools/)</li>
  <li>[kubesquash](https://github.com/solo-io/squash)</li>
  <li>[logcli](https://grafana.com/docs/loki/latest/tools/logcli/)</li>
  <li>[open_lens](https://github.com/MuhammedKalkan/OpenLens)</li>
  <li>[pcloud](https://www.pcloud.com)</li>
  <li>[stern](https://github.com/stern/stern)</li>
  <li>[syncthing](https://syncthing.net)</li>
  <li>[terraform](https://www.terraform.io/)</li>
  <li>[velero](https://github.com/vmware-tanzu/velero)</li>
  <li>[vscode](https://code.visualstudio.com)</li>
  <li>[wireguard](https://www.wireguard.com)</li>
  <li>zsh</li>
</ol>
