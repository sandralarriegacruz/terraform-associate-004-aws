# 08. Resource Lifecycles & Custom Validations [004 Exam]

## 🔄 Resource Lifecycle Rules (`lifecycle`)

The `lifecycle` meta-argument alters default creation, update, and deletion behaviors for resources.

```hcl
resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t3.micro"

  lifecycle {
    create_before_destroy = true
    prevent_destroy       = true
    ignore_changes        = [tags["UpdatedBy"]]
  }
}
```

### Key Lifecycle Attributes:
- **`create_before_destroy`**: Creates replacement resource **before** destroying the existing one (zero-downtime strategy).
- **`prevent_destroy`**: Prevents accidental resource destruction via `terraform destroy` or configuration updates.
- **`ignore_changes`**: Ignores specific attribute updates managed externally outside of Terraform.
- **`replace_triggered_by`**: Forces resource replacement when referenced items/attributes change.

---

## 🔍 Custom Input Variable Validation (`validation`)

The **004 Exam** heavily tests custom `validation` blocks within input variables:

```hcl
variable "environment" {
  type        = string
  description = "Deployment environment"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be one of: dev, staging, prod."
  }
}
```

---

## 🛡️ Preconditions and Postconditions (`precondition` / `postcondition`)

Add validation checks inside resource or data source `lifecycle` blocks:

```hcl
resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t3.micro"

  lifecycle {
    postcondition {
      condition     = self.public_ip != ""
      error_message = "EC2 instance must have a public IP assigned."
    }
  }
}
```

---

## 💡 Typical 004 Exam Questions
1. *Which lifecycle attribute prevents downtime during resource replacement updates?*
   - `create_before_destroy = true`.
2. *When are custom variable `validation` blocks evaluated?*
   - During initial variable loading phase in `terraform plan` or `terraform apply`.
