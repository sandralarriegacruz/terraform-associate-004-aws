# 03. HCL Syntax & Language Constructs

## 📜 HashiCorp Configuration Language (HCL) Syntax

HCL consists of **blocks**, **attributes**, and **expressions**.

### Common Blocks:
- `resource`: Defines an infrastructure resource to create.
- `data`: Queries existing infrastructure outside of Terraform.
- `variable`: Declares input variables.
- `output`: Exposes values to the CLI stdout or between modules.
- `locals`: Defines reusable expressions within the current module.

---

## 🔢 HCL Data Types

### Primitive Types:
- `string`: `"us-east-1"`
- `number`: `8080`
- `bool`: `true` / `false`

### Complex Types:
- `list(...)`: Ordered collection of values of the same type (`["t3.micro", "t3.small"]`).
- `map(...)`: Key-value pairs of the same type (`{ env = "dev", owner = "ops" }`).
- `object(...)`: Structural type with specified mixed-type attributes.
- `tuple(...)`: Sequence with specified mixed-type elements.

---

## 🎯 Input Variable Precedence Hierarchy

When a variable value is defined in multiple places, Terraform enforces the following precedence (highest priority overrides lower ones):

1. **Default values** (`default` in `variable` block).
2. **Environment variables** (`TF_VAR_variable_name`).
3. **`terraform.tfvars` or `terraform.tfvars.json` files**.
4. **`*.auto.tfvars` files** (evaluated alphabetically).
5. **Command-line flags** (`-var` or `-var-file`).

---

## 💡 Typical 004 Exam Questions
1. *Which method has the highest precedence for setting input variable values?*
   - Command-line flags `-var` or `-var-file`.
2. *What is the prefix for setting Terraform variables via OS environment variables?*
   - `TF_VAR_<variable_name>`.
