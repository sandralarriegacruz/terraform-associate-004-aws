# 09. Ephemeral Values & Sensitive Data Handling [004 Exam]

## 🔐 `sensitive` Argument in Variables and Outputs

Prevent passwords, secret tokens, or private keys from rendering in plain text during CLI output (`stdout`):

```hcl
variable "db_password" {
  type        = string
  description = "Database master password"
  sensitive   = true
}

output "db_connection_string" {
  value     = "Server=db;Password=${var.db_password}"
  sensitive = true
}
```

> ⚠️ **004 Exam Core Concept**: Setting `sensitive = true` hides values from terminal outputs, **but the raw secret is STILL written in plain text in `.tfstate` files**.

---

## ⚡ Ephemeral Values & Resources (`ephemeral` Blocks) [Terraform 1.10+]

The 004 exam covers **ephemeral data handling** (`ephemeral` blocks) for short-lived credentials that must **NOT** persist in state files.

### Key Benefits of `ephemeral`:
- Fetch short-lived OAuth tokens, AWS STS temporary credentials, or secrets at runtime.
- Once execution completes, values are purged from memory and **never saved to `.tfstate`**.

```hcl
# Ephemeral block example in modern Terraform
ephemeral "aws_plaintext_secret" "db_token" {
  secret_id = "arn:aws:secretsmanager:us-east-1:123456789012:secret:db-token"
}
```

---

## 💡 Typical 004 Exam Questions
1. *If a variable is marked as `sensitive = true`, is it hidden from `terraform.tfstate`?*
   - **No.** It is only masked in CLI output (`stdout`). Plain text values still exist inside `.tfstate`.
2. *What is the primary advantage of using `ephemeral` blocks in Terraform 1.10+?*
   - They guarantee temporary credentials or secrets read during execution are never persisted to the state file.
