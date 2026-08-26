# 07. Workspaces (CLI vs HCP Terraform)

## 🔀 CLI Workspaces (Local Environments)

Terraform CLI Workspaces allow multiple isolated state files sharing the exact same configuration directory (`.tf`).

### CLI Workspace Commands:
- `terraform workspace new dev`: Creates a new workspace named `dev`.
- `terraform workspace list`: Lists existing workspaces and highlights active one (`*`).
- `terraform workspace select prod`: Switches to `prod` workspace.
- `terraform workspace show`: Displays current active workspace name.

### `${terraform.workspace}` Expression:
Dynamically use the current workspace name in HCL code:

```hcl
resource "aws_s3_bucket" "app_bucket" {
  bucket = "my-app-bucket-${terraform.workspace}"
}
```

---

## ☁️ CLI Workspaces vs HCP Terraform Workspaces

| Feature | CLI Workspaces | HCP Terraform Workspaces |
| :--- | :--- | :--- |
| **Primary Use** | Isolate states for **same local code**. | Full project isolation, variables, VCS, RBAC permissions. |
| **Variables** | Shared code variables (`.tfvars` per env). | UI-managed Environment & Terraform Variables per workspace. |
| **Execution** | Local machine or CI/CD runner. | Managed HCP Terraform remote execution infrastructure. |

---

## 💡 Typical 004 Exam Questions
1. *What is the default workspace name in Terraform CLI?*
   - `default`.
2. *Are CLI Workspaces recommended for isolating dev/staging/prod environments in enterprise production?*
   - No. Enterprise production environments should be isolated using separate directories or HCP Terraform Workspaces to prevent accidental credential leaking or state corruption across environments.
