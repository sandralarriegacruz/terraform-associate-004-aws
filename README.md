# 🛠️ Terraform Associate (004) + AWS Study Hub

Welcome to the study repository and hands-on laboratory for the **HashiCorp Certified: Terraform Associate (004)** certification using **AWS** as the primary cloud provider!

This repository is structured to cover both Infrastructure as Code (IaC) fundamentals and the **new objectives introduced in the 004 exam (Terraform v1.12+)**.

---

## 🎯 Terraform Associate (004) Exam Domains Checklist

Track your study progress using this interactive domain checklist:

- [ ] **1. Understand Infrastructure as Code (IaC) Concepts**
  - [ ] IaC benefits (Declarative vs Imperative, Idempotency)
  - [ ] Provisioning vs Configuration management concepts
  - 📖 [*Study Guide: 01-iac-concepts.md*](docs/01-iac-concepts.md)
- [ ] **2. Understand Terraform's Purpose & Architecture**
  - [ ] Terraform Core vs Provider Plugins (Plugin Protocol v6)
  - [ ] State lifecycle and provider architecture
  - 📖 [*Study Guide: 02-terraform-architecture.md*](docs/02-terraform-architecture.md)
- [ ] **3. Interact with Terraform CLI Commands**
  - [ ] Core workflow: `init`, `plan`, `apply`, `destroy`
  - [ ] Utility commands: `fmt`, `validate`, `graph`, `version`
  - 📖 [*Study Guide: 04-cli-commands.md*](docs/04-cli-commands.md) | 🧪 [*Lab 01: first-resource-aws*](labs/01-first-resource-aws/)
- [ ] **4. HCL Syntax & Language Constructs**
  - [ ] Input variables, Locals, and Outputs
  - [ ] Data types (String, Number, List, Map, Object)
  - 📖 [*Study Guide: 03-hcl-syntax-and-basics.md*](docs/03-hcl-syntax-and-basics.md) | 🧪 [*Lab 02: variables-and-validation*](labs/02-variables-and-validation/)
- [ ] **5. Resource Lifecycles & Custom Validations [NEW 004]**
  - [ ] Lifecycle attributes (`create_before_destroy`, `prevent_destroy`, `ignore_changes`, `depends_on`)
  - [ ] Custom validation (`validation` blocks in variables) & `precondition`/`postcondition`
  - 📖 [*Study Guide: 08-lifecycle-and-validations.md*](docs/08-lifecycle-and-validations.md) | 🧪 [*Lab 05: lifecycle-and-conditions*](labs/05-lifecycle-and-conditions/)
- [ ] **6. Security, Ephemeral Values & Sensitive Data Handling [NEW 004]**
  - [ ] Ephemeral values & resources (`ephemeral` blocks)
  - [ ] Sensitive inputs & write-only arguments (`sensitive`)
  - 📖 [*Study Guide: 09-ephemeral-and-security.md*](docs/09-ephemeral-and-security.md) | 🧪 [*Lab 06: ephemeral-and-sensitive*](labs/06-ephemeral-and-sensitive/)
- [ ] **7. Create & Use Terraform Modules**
  - [ ] Root module vs child modules
  - [ ] Using modules from Terraform Registry and local/Git sources
  - 📖 [*Study Guide: 05-modules.md*](docs/05-modules.md) | 🧪 [*Lab 03: aws-vpc-modular*](labs/03-aws-vpc-modular/)
- [ ] **8. Manage Terraform State**
  - [ ] Remote backend with S3 + DynamoDB State Locking
  - [ ] State isolation & manipulation commands (`terraform state`)
  - [ ] Declarative resource import (`import` block)
  - 📖 [*Study Guide: 06-state-management.md*](docs/06-state-management.md) | 🧪 [*Lab 04: remote-state*](labs/04-remote-state-s3-dynamodb/) | 🧪 [*Lab 08: terraform-import*](labs/08-terraform-import/)
- [ ] **9. CLI Workspaces vs HCP Terraform Workspaces**
  - [ ] CLI Workspaces for isolating local environments (`terraform workspace`)
  - [ ] Organization, Projects, and Workspaces hierarchy in HCP Terraform
  - 📖 [*Study Guide: 07-workspaces.md*](docs/07-workspaces.md)
- [ ] **10. HCP Terraform (Cloud) Advanced Capabilities [NEW 004]**
  - [ ] VCS Triggers, Private Registry, and Sentinel / OPA Policies
  - 📖 [*Study Guide: 10-hcp-terraform.md*](docs/10-hcp-terraform.md)

---

## 📁 Repository Structure

```text
terraform-associate-004-aws/
├── .gitignore                         # Security rules for AWS and Terraform
├── README.md                          # Main hub & preparation checklist
├── templates/                         # Reusable boilerplate templates (v1.12+)
├── docs/                              # 10 Full study guides + Cheat Sheet
└── labs/                              # 8 Hands-on AWS laboratories
```

---

## ⚡ Quick CLI Commands

```bash
# Validate syntax and code formatting
terraform fmt -check -recursive
terraform validate

# Initialize and apply in lab directories
terraform init
terraform plan
terraform apply -auto-approve

# Clean up infrastructure
terraform destroy -auto-approve
```

---

## ⚡ Cheat Sheet Reference

Check out the full CLI commands and HCL built-in functions reference at:
📄 [*docs/cheat-sheet-commands.md*](docs/cheat-sheet-commands.md)
