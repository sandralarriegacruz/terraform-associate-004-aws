# Repository Structure & Best Practices: Terraform Associate (004) + AWS

This plan defines the architecture, organization, and best practices for creating a study repository and hands-on laboratory tailored to the **HashiCorp Certified: Terraform Associate (004)** certification using **AWS** as the primary cloud provider.

---

## 🎯 Repository Goals (004 Exam)

1. **Alignment with 004 Exam (Terraform v1.12+)**: Updated per official objectives, covering key 004 areas:
   * **Resource Lifecycle & Pre/Postconditions**: `depends_on`, `create_before_destroy`, `prevent_destroy`, `ignore_changes`, `precondition`, `postcondition`.
   * **Custom Validation Conditions**: Custom input variable validation (`validation` blocks).
   * **Security & Ephemeral Values**: Ephemeral values & resources (`ephemeral`), as well as write-only/sensitive arguments (`sensitive`).
   * **HCP Terraform (Projects & Workspaces)**: Advanced Workspace management, Organization/Projects hierarchy, VCS triggers, Sentinel/OPA policies, and Private Registry.
2. **Security & Best Practices (IaC)**: Ensure AWS credentials and state files (`.tfstate`, `.tfstate.backup`) are **never** committed to Git.
3. **Reusable Structure**: Reusable templates (`providers.tf`, `variables.tf`, `outputs.tf`, `versions.tf`) formatted for 004.
4. **Tracking & Cheat Sheets**: Centralized progress tracking, CLI command cheat sheets, HCL built-in functions, and HCP Terraform concepts.

---

## 🔒 Critical Security Rules (.gitignore)

The repository includes strict `.gitignore` settings to prevent uploading:
* Local Terraform state files: `*.tfstate`, `*.tfstate.*`
* Variable files with real values: `*.tfvars`, `*.tfvars.json` (except `*.tfvars.example`)
* Terraform temporary/installed directories: `.terraform/`, `.terraform.lock.hcl`
* AWS credentials and environment files: `.env`, `aws_credentials`, `*.pem`, `*.key`

---

## 📁 Proposed Repository Structure

```text
terraform-associate-004-aws/
├── .gitignore                         # Strict security filter for Terraform and AWS
├── README.md                          # Main hub: 004 domains index, checklist & cheat sheet
├── templates/                         # Base template for creating new labs quickly
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── providers.tf
│   ├── versions.tf
│   └── terraform.tfvars.example
├── docs/                              # Summary study guides per 004 exam domain
│   ├── 01-iac-concepts.md             # IaC Concepts (Declarative vs Imperative, Idempotency)
│   ├── 02-terraform-architecture.md   # Core vs Providers, Plugin Protocol v6
│   ├── 03-hcl-syntax-and-basics.md    # Blocks, attributes, data types, variable precedence
│   ├── 04-cli-commands.md             # init, plan, apply, destroy, fmt, validate, state
│   ├── 05-modules.md                  # Root module, child modules, Terraform Registry
│   ├── 06-state-management.md         # S3 backend, DynamoDB state locking, state isolation
│   ├── 07-workspaces.md               # Terraform CLI Workspaces vs HCP Terraform Workspaces
│   ├── 08-lifecycle-and-validations.md # [NEW 004] Lifecycle rules, validation blocks, pre/postconditions
│   ├── 09-ephemeral-and-security.md   # [NEW 004] Ephemeral values, sensitive data, .tfstate security
│   ├── 10-hcp-terraform.md            # [NEW 004] HCP Terraform Projects, Workspaces, Sentinel/OPA
│   └── cheat-sheet-commands.md        # Quick CLI reference guide v1.12+
└── labs/                              # Step-by-step hands-on laboratories
    ├── 01-first-resource-aws/         # Basic S3 bucket creation on AWS
    ├── 02-variables-and-validation/   # [NEW 004] Input variables, tfvars, custom validations
    ├── 03-aws-vpc-modular/            # Using modules (local & Terraform Registry)
    ├── 04-remote-state-s3-dynamodb/   # AWS remote backend (S3 + DynamoDB locking)
    ├── 05-lifecycle-and-conditions/   # [NEW 004] Lifecycle rules (create_before_destroy) & pre/postconditions
    ├── 06-ephemeral-and-sensitive/    # [NEW 004] Sensitive data & secret management in HCL
    ├── 07-dynamic-blocks-and-expressions/ # Advanced HCL (dynamic blocks, for_each)
    └── 08-terraform-import/           # Declarative import using `import` block & CLI
```

---

## 🛠️ Implemented Components Detail

### 1. Central `.gitignore` [NEW]
Robust configuration tailored for Terraform development with AWS.

### 2. Main `README.md` Document [NEW]
* Interactive checklist covering Terraform Associate 004 exam domains.
* Direct links to `docs/` study guides and `labs/` hands-on projects.
* Quick CLI validation commands (`terraform fmt`, `terraform validate`).

### 3. Base Template `templates/` [NEW]
Clean structure following provider declaration best practices (`versions.tf` & `providers.tf` separated) targeting Terraform >= 1.12.0.

### 4. Study Guides `docs/` [NEW]
Study notes with clear explanations, Mermaid diagrams, and exam-focused summaries for 004 topics (`validation`, `ephemeral`, HCP Terraform hierarchy).

### 5. Hands-on Labs `labs/` [NEW]
Executable laboratories using the AWS Provider to reinforce foundational knowledge and 004 exam updates.

---

## 🧪 Verification Plan

1. **HCL Syntax**: Execute `terraform fmt -check` and `terraform validate` across template and labs.
2. **Security Audit**: Verify `.gitignore` strictly blocks `.tfstate` and credential files.
3. **Navigation**: Confirm Markdown relative links in `README.md` point to `docs/` and `labs/`.
