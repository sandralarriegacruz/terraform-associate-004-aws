# 🧪 Lab 08: Importing Existing Infrastructure to State [004 Exam]

## 🎯 Lab Objectives
1. Use the **declarative `import {}` block** in HCL (modern feature heavily tested in 004 Exam).
2. Bind a manually created AWS resource into Terraform state without recreating or destroying it.
3. Practice the traditional CLI equivalent `terraform import <target> <id>`.

---

## 🚀 Execution Steps

### Option A: Using Declarative `import` Block (004 Exam Approach)
1. Modify `existing_bucket_name` variable with a real S3 bucket existing in your AWS account.
2. Run `terraform plan`.
   *Observation*: Terraform reports `aws_s3_bucket.imported_bucket will be imported`.
3. Run `terraform apply` to finalize binding into `.tfstate`.

### Option B: Using Traditional CLI Command
1. `terraform import aws_s3_bucket.imported_bucket your-existing-bucket-name`
