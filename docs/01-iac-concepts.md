# 01. Infrastructure as Code (IaC) Concepts

## 📌 What is Infrastructure as Code?
Infrastructure as Code (IaC) is the practice of managing and provisioning computer infrastructure through machine-readable definition files, rather than physical hardware configuration or interactive configuration tools.

---

## ⚔️ Declarative vs Imperative

| Feature | Declarative Approach (e.g. Terraform) | Imperative Approach (e.g. Bash / AWS CLI) |
| :--- | :--- | :--- |
| **Definition** | You define the **desired end state**. | You define the **step-by-step instructions**. |
| **Idempotency** | Native: Running code N times produces the exact same state. | Requires custom logic to prevent resource duplication. |
| **Maintainability** | High: Code serves as a single source of truth. | Low: Sequential scripts are error-prone upon version changes. |

---

## 🔄 Idempotency and Drift

- **Idempotency**: Property where an operation produces the exact same result regardless of how many times it is executed.
- **Infrastructure Drift**: Occurs when real cloud resources change outside of Terraform (e.g., manual console edits). `terraform plan` detects drift and proposes changes to restore the desired state.

---

## 💡 Typical 004 Exam Questions
1. *Why is a declarative approach preferred over an imperative approach in IaC?*
   - Because it defines the desired end state and guarantees idempotency without writing procedural sequential scripts.
2. *What does idempotency mean in Terraform?*
   - That applying the same configuration multiple times will not duplicate resources or alter the state if code has not changed.
