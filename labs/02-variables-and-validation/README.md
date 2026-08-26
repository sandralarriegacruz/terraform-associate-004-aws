# 🧪 Lab 02: Variables, Locals & Custom Validations [004 Exam]

## 🎯 Lab Objectives
1. Declare and use **Input Variables**, **Locals**, and **Outputs**.
2. Experiment with custom variable **`validation` blocks** (a core 004 exam objective).
3. Test how Terraform halts execution if input variables violate validation rules.

---

## 🚀 Validation Testing Steps

1. **Initialize**:
   ```bash
   terraform init
   ```
2. **Test VALID variable values**:
   ```bash
   terraform plan -var="environment=staging" -var="instance_count=2"
   ```
3. **Test INVALID variable value (Should fail validation)**:
   ```bash
   terraform plan -var="environment=qa"
   ```
   *Expected Result*: Terraform outputs error: `"The environment variable must be one of: dev, staging, prod."`

4. **Test out-of-range instance count (Should fail validation)**:
   ```bash
   terraform plan -var="instance_count=10"
   ```
   *Expected Result*: Validation error for violating allowed range (1-5).
