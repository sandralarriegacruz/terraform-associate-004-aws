# 🧪 Lab 07: Dynamic Blocks & HCL Expressions

## 🎯 Lab Objectives
1. Use the **`dynamic`** block to generate repetitive nested blocks (such as `ingress` in Security Groups) based on lists or maps.
2. Avoid code duplication applying `for_each` expressions.

---

## 🚀 Execution Steps

1. **Initialize and apply**:
   ```bash
   terraform init
   terraform apply
   ```
2. **Observe Security Group creation**:
   Notice how a single `dynamic "ingress"` block generated 3 separate rules for ports 80, 443, and 8080.
3. **Clean up**:
   ```bash
   terraform destroy
   ```
