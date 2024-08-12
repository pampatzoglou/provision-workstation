# nix-env -if env.nix

with import <nixpkgs> {};

# File Tools
let
  fileTools = [
    fd             # Simple, fast, user-friendly alternative to 'find'
    jq             # Command-line JSON processor
    yq             # YAML processor that wraps jq
    eza            # Modern replacement for 'ls'
    shellcheck     # Shell script analysis tool
  ];

  # Development Tools
  devTools = [
    vscode         # Visual Studio Code editor
    tmux           # Terminal multiplexer
    pre-commit     # Framework for managing and maintaining multi-language pre-commit hooks
    teller         # Secrets management
    skaffold       # Command-line tool to facilitate developer productivity by orchestrating continuous development,
    atac           # Simple API client (postman like) in your terminal
    termshark      # A terminal UI for wireshark-cli, inspired by Wireshark
    kubeshark      # The API Traffic Viewer for Kubernetes
  ];

  # Kubernetes Tools
  kubernetesTools = [
    kubectl        # Kubernetes command-line tool
    kind           # Kubernetes IN Docker - local clusters
    kubernetes-helm  # Helm package manager for Kubernetes
    cmctl          # Cert-manager CLI
    velero         # Backup and restore tool for Kubernetes
  ];

  # DevOps Tools
  devOpsTools = [
    terraform      # Infrastructure as Code tool
    tflint         # Terraform linter
    argocd         # Declarative GitOps continuous delivery tool for Kubernetes
    vault          # HashiCorp Vault for managing secrets
    kics           # Infrastructure as Code security scanning tool
    cosign         # Container signing, verification, and storage in OCI registries
    kyverno        # Kubernetes native policy management
    sonar-scanner-cli  # SonarQube scanner CLI
    checkov        # Infrastructure as Code security static analysis
    datree         # Prevent Kubernetes misconfigurations
    hadolint       # Dockerfile linter
    cobra-cli      # Cobra CLI tool to generate applications and commands
  ];

  # Security Tools
  securityTools = [
    snyk           # Security scanning for vulnerabilities
    kubesec        # Kubernetes security analysis
    teleport       # Access management for cloud infrastructure
    trivy          # Vulnerability scanner for containers and other artifacts
    tfsec          # Security scanner for Terraform
    terrascan      # Security, compliance, and misconfiguration scanner for Terraform
    trufflehog     # Searches for secrets in codebase
    kubescape      # Kubernetes security scans
    kube-linter    # Static analysis tool for Kubernetes
    clair          # Vulnerability Static Analysis for Containers
  ];

  # Backup and Key Management Tools
  keyTools = [
    paperkey       # Tools for backing up keys
    pgpdump        # PGP packet visualizer
    parted         # Partition management
    cryptsetup     # LUKS encryption tool

    yubikey-manager               # Yubico's official tools
    yubikey-manager-qt
    yubikey-personalization
    yubikey-personalization-gui
    yubico-piv-tool
    yubioath-flutter
  ];

  # Testing and Utilities
  utilityTools = [
    ent           # Randomness testing tools
    cfssl         # Cloudflare's PKI toolkit
    pcsctools     # Tools for smartcard development
    htop          # Interactive process viewer
  ];

  # Password Generation Tools
  passwordTools = [
    diceware      # Diceware passphrase generator
    pwgen         # Password generator
    rng-tools     # Random number generator tools
    age           # Modern encryption tool with small explicit keys
  ];

  # Personal Tools
  personalTools = [
    pcloud         # Cloud storage client
    bitwarden-cli  # Bitwarden CLI for password management
  ];

in

# For nix-env, we need to output a list of derivations
builtins.concatLists [
  fileTools
  devTools
  kubernetesTools
  devOpsTools
  securityTools
  keyTools
  utilityTools
  passwordTools
  personalTools
]
