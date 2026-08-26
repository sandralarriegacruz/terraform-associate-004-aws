# 🧪 Lab 04: Remote Backend on AWS (S3 + DynamoDB State Locking)

## 🎯 Lab Objectives
1. Provision base infrastructure for remote state storage: **Encrypted S3 bucket** + **DynamoDB Table**.
2. Understand the **State Locking** mechanism.
3. Migrate local state (`.tfstate`) to the remote backend using `terraform init -migrate-state`.

---

## 🚀 Execution Steps (Remote Backend Bootstrapping)

1. **Create backend infrastructure locally first**:
   ```bash
   terraform init
   terraform apply
   ```
2. **Uncomment and configure `backend "s3"` block in `versions.tf`** using the bucket and DynamoDB table names from output.
3. **Migrate local state to remote backend**:
   ```bash
   terraform init -migrate-state
   ```
   *Expected Result*: Terraform prompts whether to copy existing local state to the new S3 backend. Answer `yes`.
