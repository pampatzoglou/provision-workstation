# nix profile install -f ./env.nix


{ pkgs ? import <nixpkgs> {} }:

let
  # File Tools
  fileTools = [
    pkgs.eza            # Modern replacement for 'ls'
    pkgs.shellcheck     # Shell script analysis tool
  ];

  # Development Tools
  devTools = [
    pkgs.git            # Distributed version control system
    pkgs.fd             # Simple, fast, user-friendly alternative to 'find'
    pkgs.jq             # Command-line JSON processor
    pkgs.yq             # YAML processor that wraps jq
    pkgs.vscode         # Visual Studio Code editor
    pkgs.tmux           # Terminal multiplexer
    pkgs.pre-commit     # Framework for managing and maintaining multi-language pre-commit hooks
    pkgs.teller         # Secrets management
    pkgs.skaffold       # Command-line tool to facilitate developer productivity
    pkgs.atac           # Simple API client (postman like) in your terminal
    pkgs.termshark      # A terminal UI for wireshark-cli, inspired by Wireshark
    pkgs.kubeshark      # The API Traffic Viewer for Kubernetes
    pkgs.kubevpn        # Create a VPN and connect to Kubernetes cluster network
    pkgs.kaniko         # A tool to build container images from a Dockerfile, inside a container or Kubernetes cluster
  ];

  # Kubernetes Tools
  kubernetesTools = [
    pkgs.kubectl            # Kubernetes command-line tool
    pkgs.kind               # Kubernetes IN Docker - local clusters
    pkgs.kubernetes-helm    # Helm package manager for Kubernetes
    pkgs.cmctl              # Cert-manager CLI
    pkgs.velero             # Backup and restore tool for Kubernetes
    pkgs.istioctl           # Istio configuration command line
  ];

  # DevOps Tools
  devOpsTools = [
    pkgs.awscli2            # Unified tool to manage your AWS services
    pkgs.terraform          # Infrastructure as Code tool
    pkgs.opentofu           # Tool for building, changing, and versioning infrastructure
    pkgs.tflint             # Terraform linter
    pkgs.argocd             # Declarative GitOps continuous delivery tool for Kubernetes
    pkgs.vault              # HashiCorp Vault for managing secrets
    pkgs.kics               # Infrastructure as Code security scanning tool
    pkgs.cosign             # Container signing, verification, and storage in OCI registries
    pkgs.kyverno            # Kubernetes native policy management
    pkgs.sonar-scanner-cli  # SonarQube scanner CLI
    pkgs.checkov            # Infrastructure as Code security static analysis
    pkgs.datree             # Prevent Kubernetes misconfigurations
    pkgs.hadolint           # Dockerfile linter
    pkgs.cobra-cli          # Cobra CLI tool to generate applications and commands
    pkgs.lens               # Kubernetes IDE
    pkgs.act                # Run your GitHub Actions locally
  ];

  # Security Tools
  securityTools = [
    pkgs.snyk           # Security scanning for vulnerabilities
    pkgs.kubesec        # Kubernetes security analysis
    pkgs.teleport       # Access management for cloud infrastructure
    pkgs.trivy          # Vulnerability scanner for containers and other artifacts
    pkgs.tfsec          # Security scanner for Terraform
    pkgs.terrascan      # Security, compliance, and misconfiguration scanner for Terraform
    pkgs.trufflehog     # Searches for secrets in codebase
    pkgs.kubescape      # Kubernetes security scans
    pkgs.kube-linter    # Static analysis tool for Kubernetes
    pkgs.kube-bench     # Checks whether Kubernetes is deployed according to security best practices as defined in the CIS Kubernetes Benchmark
    pkgs.kube-hunter    # Tool to search issues in Kubernetes clusters
    pkgs.starboard      # Starboard integrates security tools into the Kubernetes environment
    pkgs.clair          # Vulnerability Static Analysis for Containers
    pkgs.falcoctl       # Administrative tooling for Falco
    pkgs.checkmate      # CheckMate is a pluggable code security analysis tool that provides security analysis for your software and for configuration files associated with the software
  ];

  # Backup and Key Management Tools
  keyTools = [
    pkgs.paperkey       # Tools for backing up keys
    pkgs.pgpdump        # PGP packet visualizer
    pkgs.parted         # Partition management
    pkgs.cryptsetup     # LUKS encryption tool
    pkgs.yubikey-manager                # Yubico's official tools
    pkgs.yubikey-manager-qt
    pkgs.yubikey-personalization
    pkgs.yubikey-personalization-gui
    pkgs.yubico-piv-tool
    pkgs.yubioath-flutter
  ];

  # Testing and Utilities
  utilityTools = [
    pkgs.ent           # Randomness testing tools
    pkgs.cfssl         # Cloudflare's PKI toolkit
    pkgs.pcsctools     # Tools for smartcard development
    pkgs.htop          # Interactive process viewer
  ];

  # Password Generation Tools
  passwordTools = [
    pkgs.diceware      # Diceware passphrase generator
    pkgs.pwgen         # Password generator
    pkgs.rng-tools     # Random number generator tools
    pkgs.age           # Modern encryption tool with small explicit keys
  ];

  # Personal Tools
  personalTools = [
    pkgs.pcloud         # Cloud storage client
    pkgs.bitwarden-cli  # Bitwarden CLI for password management
    pkgs.keepassxc      # Offline password manager
    pkgs.slack
  ];

  # Testing Tools
  testingTools = [
    pkgs.k6         # K6s

  ];

in

pkgs.mkShell {
  name = "default-environment";

  buildInputs = fileTools ++ devTools ++ kubernetesTools ++ devOpsTools ++
                securityTools ++ keyTools ++ utilityTools ++ passwordTools ++
                personalTools;

  shellHook = ''
    echo "Welcome to your custom Nix environment!"
  '';
}
