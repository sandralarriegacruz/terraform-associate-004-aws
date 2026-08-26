# 🧪 Lab 06: Sensitive Data & Ephemeral Values [004 Exam]

## 🎯 Lab Objectives
1. Declare variables and outputs with `sensitive = true`.
2. Observe how Terraform CLI masks sensitive outputs replacing them with `(sensitive value)`.
3. Understand the key **004 Exam concept**: *The `sensitive` attribute masks console terminal outputs, **but raw secret data IS STILL stored in plain text inside `.tfstate` files***.

---

## 🚀 Execution & Verification Steps

1. **Initialize and apply**:
   ```bash
   terraform init
   terraform apply
   ```
   *Observation*: Terminal output displays:
   `db_password_configured = (sensitive value)`

2. **Inspect local state file `.tfstate`**:
   Open `terraform.tfstate` or execute:
   ```bash
   terraform state show aws_secretsmanager_secret_version.db_secret_val
   ```
   *004 Exam Lesson*: Notice that inside `.tfstate`, `"SuperSecretPass123!"` is stored in clear text. This is why state files must never be committed to Git or left unencrypted.

3. **Clean up resources**:
   ```bash
   terraform destroy
   ```
