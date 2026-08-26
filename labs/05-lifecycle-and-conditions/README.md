# 🧪 Lab 05: Resource Lifecycles & Quality Conditions [004 Exam]

## 🎯 Lab Objectives
1. Experiment with `prevent_destroy = true` rule and verify how it blocks accidental destruction via `terraform destroy`.
2. Practice zero-downtime deployment strategy with `create_before_destroy = true`.
3. Evaluate **Postcondition (`postcondition`)** checks on HCL resources.

---

## 🚀 Testing Steps

1. **Initialize and apply resources**:
   ```bash
   terraform init
   terraform apply
   ```
2. **Attempt resource destruction (Should fail due to `prevent_destroy`)**:
   ```bash
   terraform destroy
   ```
   *Expected Result*: Terraform outputs error stating `aws_s3_bucket.protected_bucket` cannot be destroyed due to `prevent_destroy`.

3. **Clean up infrastructure**:
   - Temporarily set `prevent_destroy = false` in `main.tf`.
   - Run `terraform destroy` again.
